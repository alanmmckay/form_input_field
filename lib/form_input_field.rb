require "form_input_field/version"
require 'rails'
require 'action_view'

module FormInputField

  class InvalidSymbolError < StandardError ; end
  class FormHelper < StandardError ; end

  def form_input_field(helper_sym, object_name, method, *args, **options)
    #The notion of class/instance variables is jank in the context of a module and its methods. Need to refactor the following two definitions:
    incompatible_field_tags = incompatible_field_tags = [:form_for, :form_with, :fields, :fields_for, :convert_to_model, :model_name_from_record_or_class, :form_input_field, :label, :rich_text_area]

    compatible_field_tags = ActionView::Helpers::FormHelper.instance_methods - incompatible_field_tags

    if(not compatible_field_tags.include?(helper_sym))
      raise InvalidSymbolError, 'WARNING: Invalid symbol given as parameter for helper_sym. Recieved the following symbol: ' + helper_sym.to_s + '. Valid symbols for helpers are as follows: ' + compatible_field_tags.to_s
    end

    # --- Establishing a list of valid parameters
    parameters =  [:label_text, :options, :label_options]
    # --- Establishing the default values for said parameters
    values = {:options => {}, :label_text => "", :label_options => {}}

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

    parameters = parameters + [:value_key]
    values[:value_key]  = :values

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

        # This captures the case in which a hash *concludes* the arguments list;
        #   Ruby will put this into **options regardless - an annoying quirk
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
          puts "err 2"
        else
          puts "This path is impossible to reach due to initial check"
        end
      end
    end

    value = {}
    if values[:value_key] && defined?(flash)
      value_key = values[:value_key]
      if flash flash[value_key]
        if flash[value_key].is_a?(String)
          value = {:value => flash[value_key]}
        else
          value = {:value => flash[value_key][method]}
        end
      end
    end

    if( not ((values[:label_text] == "") or (values[:label_text] == false)) )
      label = label object_name, method, values[:label_text], values[:label_options]
    else
      label = ""
    end

    if(helper_sym == :radio_button)
      input = self.send(helper_sym, object_name, method, values[:tag_value], values[:options].merge(value))
    elsif(helper_sym == :check_box)
      input = self.send(helper_sym, object_name, method, values[:options].merge(value), values[:checked_value], values[:unchecked_value])
    else
      input = self.send(helper_sym, object_name, method, values[:options].merge(value))
    end

    label + input

  end
end

# require 'action_view/helpers/form_helper'
module ActionView
  module Helpers
    module FormHelper
      include FormInputField
    end
  end
end
