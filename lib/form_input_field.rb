require "form_input_field/version"
require 'rails'
require 'action_view'

module FormInputField

  class InvalidSymbolError < StandardError ; end
  class InvalidArgumentError < StandardError ; end


  @@compatible_field_tags = [:check_box, :text_field, :color_field, :date_field, :datetime_field, :datetime_local_field, :email_field, :file_field, :hidden_field, :month_field, :number_field, :password_field, :phone_field, :radio_button, :range_field, :search_field, :telephone_field, :text_area, :text_field, :time_field, :url_field, :week_field]



# -----
  def form_input_field(helper_sym, object_name, method, *args, **options)

    if(not @@compatible_field_tags.include?(helper_sym))
      raise InvalidSymbolError, 'WARNING: Invalid symbol given as parameter for helper_sym. Recieved the following symbol: ' + helper_sym.to_s + '. Valid symbols for helpers are as follows: ' + compatible_field_tags.to_s
    end

    # --- Establishing a list of valid parameters:
    parameters =  [:label_text, :options, :label_options]
    # -- Establishing the default values for said parameters:
    values = {:options => {}, :label_text => "", :label_options => {}}

    # -- Capturing extraneous parameters for non-conforming html elements:
    if helper_sym == :check_box
      parameters = parameters + [:checked_value, :unchecked_value]
      values[:checked_value] = "1"
      values[:unchecked_value] = "0"

    elsif helper_sym == :radio_button
      parameters = [:tag_value] + parameters
      values[:tag_value] = false

      if args.empty? || (not (args[0].is_a?(String) || args[0].is_a?(Symbol)))
        raise InvalidArgumentError, "WARNING: Please supply valid argument for tag_value whilst using :radio_button for helper_sym."
      end

    end

    # -- Continuing capture of valid parameters:
    parameters = parameters + [:value_key, :error_key]
    values[:value_key]  = :values
    values[:error_key]  = :errors

    # --- Iterate through argument list placing values into parameter hash-map:
    count = 0
    args.each do |argument|
      parameter = parameters[count]
      values[parameter] = argument
      count += 1
    end

    # --- Iterate through option list placing values into parameter hash-map:
    options.each do |parameter, argument|
      if parameters.include?(parameter)
        values[parameter] = argument
        count += 1
      else

        # This captures the case in which a hash *concludes* the arguments list;
        #   Ruby will put this into **options regardless - an annoying quirk.
        # For example:
        #   form_input_field(:text_field, :user, "email", "Email", {:class => "form-control"}
        #   will assign {:class => "form-control", :disabled => false} into **options
        #   This is despite the fact the trailing array is an explicit argument
        #   that should be placed into *args

        parameter_key = parameters[count]
        if parameter_key == :options or parameter_key == :label_options
          new_argument = {parameter => argument}
          values[parameter_key] = values[parameter_key].merge(new_argument)
        elsif parameter_key != parameter
          raise InvalidArgumentError, "WARNING: Unknown explicitly declared parameter. Received: " + parameter.to_s + " with value: " + argument.to_s + ". Did you mean: " + parameter_key + " for a parameter?"
        end
      end
    end

    # --- Place potential value for an input element's value attribute:
    value = {}
    if values[:value_key] && defined?(flash)
      value_key = values[:value_key]
      if flash[value_key]
        if (flash[value_key].is_a?(String) or flash[value_key].is_a?(Symbol))
          value = {:value => flash[value_key]}
        elsif flash[value_key].is_a?(Hash)
          value = {:value => flash[value_key][method]}
        end
      end
    end

    # --- Build the label for the relevant html field:
    if( not ((values[:label_text] == "") or (values[:label_text] == false)) )
      label = label object_name, method, values[:label_text], values[:label_options]
    else
      label = ""
    end

    # --- Build the html element for the relevant field:
    if(helper_sym == :radio_button)
      input = self.send(helper_sym, object_name, method, values[:tag_value], values[:options].merge(value))
    elsif(helper_sym == :check_box)
      input = self.send(helper_sym, object_name, method, values[:options].merge(value), values[:checked_value], values[:unchecked_value])
    else
      input = self.send(helper_sym, object_name, method, values[:options].merge(value))
    end

    label + input

  end




# -----
  def form_input_error(object_name, method, *args, **options)
    parameters = [:label_options, :error_key]
    values = {:label_options => {}, :error_key => :errors}

    count = 0
    args.each do |argument|
      parameter = parameters[count]
      values[parameter] = argument
      count += 1
    end

    options.each do |parameter, argument|
      if parameters.include?(parameter)
        values[parameter] = argument
        count += 1
      else
        parameter_key = parameters[count]
        if parameter_key == :label_options
          new_argument = {parameter => argument}
          values[parameter_key] = values[parameter_key].merge(new_argument)
        elsif parameter_key != parameter
          raise InvalidArgumentError, "WARNING: Unknown explicitly declared parameter. Received: " + parameter.to_s + " with value: " + argument.to_s + ". Did you mean: " + parameter_key + " for a parameter?"
        end
      end
    end

    error_text = ""
    if values[:error_key] && defined?(flash)
      error_key = values[:error_key]
      if flash[error_key]
        if (flash[error_key].is_a?(String) or flash[error_key].is_a?(Symbol))
          error_text = flash[error_key]
        elsif flash[error_key].is_a?(Hash)
          error_text = flash[error_key][method]
        end
      end
    end

    if not (error_text == "")
      label object_name, method, error_text, values[:label_options]
    else
      ""
    end
  end
end # end of FormInputField

# Place module into ActionView::Helpers::FormHelper:
module ActionView
  module Helpers
    module FormHelper
      include FormInputField
    end
  end
end
