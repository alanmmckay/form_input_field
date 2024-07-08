#require_relative '../lib/form_input_field.rb'
require 'rails'
require 'action_view'
require 'form_input_field'

RSpec.describe FormInputField do

  it "has a version number" do
    expect(FormInputField::VERSION).not_to be nil
  end

  action_view = Class.new.include(ActionView::Helpers::FormHelper).new





#--- --- --- --- ----
  context "Basic Output" do

    model = :test
    method = :one
    label_text = "label text"

    it "correctly produces check_box" do
      check_box = action_view.check_box(:test,:one)
      label = action_view.label(model,method,label_text)
      expect(label + check_box).to eq(action_view.form_input_field(:check_box, model, method, label_text))
    end

    it "correctly produces text_field" do
      text_field = action_view.text_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + text_field).to eq(action_view.form_input_field(:text_field, model, method, label_text))
    end

    it "correctly produces color_field" do
      color_field = action_view.color_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + color_field).to eq(action_view.form_input_field(:color_field, model, method, label_text))
    end

    it "correctly produces date_field" do
      date_field = action_view.date_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + date_field).to eq(action_view.form_input_field(:date_field, model, method, label_text))
    end

    it "correctly produces datetime_field" do
      datetime_field = action_view.datetime_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + datetime_field).to eq(action_view.form_input_field(:datetime_field, model, method, label_text))
    end

    it "correctly produces datetime_local_field" do
      datetime_local_field = action_view.datetime_local_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + datetime_local_field).to eq(action_view.form_input_field(:datetime_local_field, model, method, label_text))
    end

    it "correctly produces email_field" do
      email_field = action_view.email_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + email_field).to eq(action_view.form_input_field(:email_field, model, method, label_text))
    end

    it "correctly produces file_field" do
      file_field = action_view.file_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + file_field).to eq(action_view.form_input_field(:file_field, model, method, label_text))
    end

    it "correctly produces hidden_field" do
      hidden_field = action_view.hidden_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + hidden_field).to eq(action_view.form_input_field(:hidden_field, model, method, label_text))
    end

    it "correctly produces month_field" do
      month_field = action_view.month_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + month_field).to eq(action_view.form_input_field(:month_field, model, method, label_text))
    end

    it "correctly produces number_field" do
      number_field = action_view.number_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + number_field).to eq(action_view.form_input_field(:number_field, model, method, label_text))
    end

    it "correctly produces password_field" do
      password_field = action_view.password_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + password_field).to eq(action_view.form_input_field(:password_field, model, method, label_text))
    end

    it "correctly produces phone_field" do
      phone_field = action_view.phone_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + phone_field).to eq(action_view.form_input_field(:phone_field, model, method, label_text))
    end

    it "correctly produces radio_buttons" do #need to produce a negative of this; differing pattern of arguments
      radio_button1 = action_view.radio_button(model,method,"rails")
      radio_button2 = action_view.radio_button(model,method,"java")
      label1 = action_view.label(model,method,"rails label")
      label2 = action_view.label(model,method,"java label")
      expect(label1 + radio_button1 + label2 + radio_button2).to eq(action_view.form_input_field(:radio_button, model, method, "rails", "rails label") + action_view.form_input_field(:radio_button, model, method, "java", "java label"))
    end

    it "correctly produces range_field" do
      range_field = action_view.range_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + range_field).to eq(action_view.form_input_field(:range_field, model, method, label_text))
    end

    it "correctly produces search_field" do
      search_field = action_view.search_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + search_field).to eq(action_view.form_input_field(:search_field, model, method, label_text))
    end

    it "correctly produces telephone_field" do
      telephone_field = action_view.telephone_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + telephone_field).to eq(action_view.form_input_field(:telephone_field, model, method, label_text))
    end

    it "correctly produces text_area" do
      text_area = action_view.text_area(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + text_area).to eq(action_view.form_input_field(:text_area, model, method, label_text))
    end

    it "correctly produces text_field" do
      text_field = action_view.text_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + text_field).to eq(action_view.form_input_field(:text_field, model, method, label_text))
    end

    it "correctly produces time_field" do
      time_field = action_view.time_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + time_field).to eq(action_view.form_input_field(:time_field, model, method, label_text))
    end

    it "correctly produces url_field" do
      url_field = action_view.url_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + url_field).to eq(action_view.form_input_field(:url_field, model, method, label_text))
    end

    it "correctly produces week_field" do
      week_field = action_view.week_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(label + week_field).to eq(action_view.form_input_field(:week_field, model, method, label_text))
    end

  end #end of context





# --- --- --- --- ---
  context 'Ordered Arguments' do

    arguments = [:test_model, :test_method, "Text Label", {:class => "form-input-group"}, {:class => "form-input-group", :style => "color:red"}, :saved_values]

    #--- --- --- --- ---
    it 'relies on a general argument syntax test' do
      argument_list = [:test_model, :test_method, "Text Label"]
      text_field = action_view.text_field(:test_model, :test_method)
      label = action_view.label(:test_model,:test_method, "Text Label")
      test_text_field = action_view.text_field(*argument_list.slice(0,2))
      test_label = action_view.label(*argument_list)
      expect(label + text_field).to eq(label + test_text_field)
      production = action_view.form_input_field(:text_field, *argument_list)
      expect(label + text_field).to eq(production)
    end

    #--- --- --- --- ---
    (3..arguments.length).step(1) do |i|
      sub_args = arguments.slice(2,i-2)

      it ('it passes argument test ' + i.to_s + ' with arguments ' + sub_args.to_s) do
        text_field_args = []
        label_text_args = []
        (0..sub_args.length-1).step(1) do |si|
          if si == 0
            label_text_args.append(sub_args[si])
          elsif si == 1
            text_field_args.append(sub_args[si])
          elsif si == 2
            label_text_args.append(sub_args[si])
          end
        end
        text_field = action_view.text_field(arguments[0],arguments[1], *text_field_args)
        label_field = action_view.label(arguments[0],arguments[1], *label_text_args)
        sub_args = [:test_model, :test_method] + sub_args
        production = action_view.form_input_field(:text_field, *sub_args)
        puts ""
        print "text field test; using arguments: "
        print sub_args
        puts ""
        expect(label_field + text_field).to eq(production)
      end
    end #argument qty incrementor
  # --- --- --- --- ---
    radio_args = [:test_model, :test_method, "rails", "Radio Label", {:class => "form_input-group"}, {:class => "form-input-group", :style => "color:red"}, :saved_values]

    (3..radio_args.length).step(1) do |i| # 3 arguments given, 4 arguments given, etc...
      sub_args = radio_args.slice(2, i-2)

      it ('passes radio_button argument test ' + i.to_s + ' with arguments ' + sub_args.to_s) do
        radio_button_args = []
        label_args = []
        (0.. sub_args.length-1).step(1) do |si|
          if si == 0
            radio_button_args.append(sub_args[si])
          elsif si == 1
            label_args.append(sub_args[si])
          elsif si == 2
            radio_button_args.append(sub_args[si])
          elsif si == 3
            label_args.append(sub_args[si])
          end
        end
        radio_button = action_view.radio_button(radio_args[0],radio_args[1], *radio_button_args)
        if label_args.length >= 1
          label_field = action_view.label(radio_args[0], radio_args[1], *label_args)
        else
          label_field = ""
        end
        sub_args = [:test_model, :test_method] + sub_args
        production = action_view.form_input_field(:radio_button, *sub_args)
        puts ""
        print "radio button test; using arguments: "
        print sub_args
        puts ""
        expect(label_field + radio_button).to eq(production)
      end
    end #argument qty incrementor

  # --- --- --- --- ---
    check_args = [:test_model, :test_method, "Radio Label", {:class => "form_input-group"}, {:class => "form-input-group", :style => "color:red"}, "false", "true", :saved_values]

    (3..check_args.length).step(1) do |i|
      sub_args = check_args.slice(2, i-2)

      it ('passes check_box argument test ' + i.to_s + ' with arguments ' + sub_args.to_s) do
        check_button_args = []
        label_args = []
        (0..sub_args.length-1).step(1) do |si|
          if si == 0
            label_args.append(sub_args[si])
          elsif si == 1
            check_button_args.append(sub_args[si])
          elsif si == 2
            label_args.append(sub_args[si])
          elsif si == 3
            check_button_args.append(sub_args[si])
          elsif si == 4
            check_button_args.append(sub_args[si])
          end
        end
        check_button = action_view.check_box(check_args[0],check_args[1], *check_button_args)
        labe_field = action_view.label(check_args[0], check_args[1], *label_args)
        sub_args = [:test_model, :test_method] + sub_args
        puts ""
        print "check box test; using arguments: "
        print sub_args
        puts ""
        production = action_view.form_input_field(:check_box, *sub_args)
      end
    end #argument qty incrementor
  end #end of context





# --- --- --- --- ---
  context 'Arbitrary ordering on explicitly defined arguments' do
    parameters = [:object_name, :method, :label_text, :options, :label_options, :value_key]
    arguments = [:test_model, :test_method, "Test Label", {:class => "form-input-group"}, {:class => "form-input-group", :style => "color:red"}, :saved_values]
    pairs = {}

    (0..parameters.length-1).step(1) do |index|
      pairs[parameters[index]] = arguments[index]
    end

    (3..parameters.length).step(1) do |i| # 3 arguments given, 4 arguments given, etc...
      text_field_args = []
      label_field_args = []
      (0..i-1).step(1) do |arg_index|
        if arg_index == 2
          label_field_args.append(arguments[arg_index])
        elsif arg_index == 3
          text_field_args.append(arguments[arg_index])
        elsif arg_index == 4
          label_field_args.append(arguments[arg_index])
        elsif arg_index != 5
          text_field_args.append(arguments[arg_index])
          label_field_args.append(arguments[arg_index])
        end
      end
      text_field = action_view.text_field(*text_field_args)
      label_field = action_view.label(*label_field_args)

      (1..i-2).step(1) do |partition| #partition starts at 1, goes to 2, etc...
        arg_sublist = arguments.slice(0, i - partition)
        para_sublist = parameters.slice(arg_sublist.length, i - arg_sublist.length)
        para_sublist_perms = para_sublist.permutation().to_a

        para_sublist_perms.each do |permutation|
          options = Hash.new
          permutation.each do |parameter|
            value = pairs[parameter]
            options[parameter] = value
          end
          it "passes explicit argument permutation test with argument set: "+ arg_sublist.to_s + " and parameter set: " + options.to_s do
            form_input = action_view.form_input_field(:text_field, *arg_sublist, **options)
            puts ""
            print "text field test; using arguments: "
            print arg_sublist
            puts ""
            print "and parameters: "
            print options
            puts ""
            expect(form_input).to eq(label_field + text_field)
          end
        end #permutation generator
      end #partition mover
    end #argument qty incrementor
  end #end of context





# --- --- --- --- ---
  context "Allows explicit declaration of any range of optional parameters" do
    parameters = [:label_text, :options, :label_options, :value_key]
    arguments = ["Test Label", {:class => "form-input-group"}, {:class => "form-input-group", :style => "color:red"}, :saved_values]

    (0..parameters.length-1).step(1) do |parameter_index|
      it "Accepts a single explicitly declared argument value " + arguments[parameter_index].to_s + " with parameter " + parameters[parameter_index].to_s + ". " do
        options = {}
        options[parameters[parameter_index]] = arguments[parameter_index]
        if parameter_index == 0
          label = action_view.label(:model, :method, "Test Label")
          text_field = action_view.text_field(:model, :method)
        else
          label = ""
          if parameter_index == 1
            text_field = action_view.text_field(:model, :method, {:class => "form-input-group"})
          else
            text_field = action_view.text_field(:model, :method)
          end
        end

        form_input = action_view.form_input_field(:text_field, :model, :method, **options)
        puts ""
        print "Passing single argument-parameter pair: "
        print options
        puts ""
        expect(form_input).to eq(label + text_field)
      end
    end
  end





# --- --- --- --- ---
  context "Fills input value property upon existence of proper flash key." do

    # --- --- --- ---
    context "Stores value hash-map in the default location." do
      name = "John Doe"
      phone = "555-555-5555"
      let(:flash) { { values: {:name => name, :phone => phone}} }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved value on minimal output" do
        result1 = view.form_input_field(:text_field, :user, :name)
        result2 = view.form_input_field(:phone_field, :user, :phone)
        text_field = action_view.text_field(:user, :name, {:value => name})
        phone_field = action_view.phone_field(:user, :phone, {:value => phone})
        expect(result1 + result2).to eq(text_field + phone_field)
      end

      it "Corretly displays the saved value on basic output" do
        user_label_text = "Please input name: "
        phone_label_text = "Please input phone number: "
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text)
        result2 = view.form_input_field(:phone_field, :user, :phone, phone_label_text)
        text_label = action_view.label(:user, :name, user_label_text)
        text_field = action_view.text_field(:user, :name, {:value => name})
        phone_label = action_view.label(:user, :phone, phone_label_text)
        phone_field = action_view.phone_field(:user, :phone, {:value => phone})
        expect(result1 + result2).to eq(text_label + text_field + phone_label + phone_field)
      end

      it "Correctly displays the saved value on maximal output" do
        user_label_text = "Please input name: "
        phone_label_text = "Please input phone number: "
        options = {:class => "form-input-group"}
        label_options = {:class => "form-input-group", :style => "color:red"}
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text, options, label_options)
        result2 = view.form_input_field(:phone_field, :user, :phone, phone_label_text, options, label_options)
        text_label = action_view.label(:user, :name, user_label_text, label_options)
        text_field = action_view.text_field(:user, :name, options.merge({:value => name}))
        phone_label = action_view.label(:user, :phone, phone_label_text, label_options)
        phone_field = action_view.phone_field(:user, :phone, options.merge({:value => phone}))
        expect(result1 + result2).to eq(text_label + text_field + phone_label + phone_field)
      end
    end

  # --- --- --- ---
    context "Stores value string in the default location." do
      name = "John Doe"
      let(:flash) { { values: name } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved value on minimal output" do
        result1 = view.form_input_field(:text_field, :user, :name)
        text_field = action_view.text_field(:user, :name, {:value => name})
        expect(result1).to eq(text_field)
      end

      it "Corretly displays the saved value on basic output" do
        user_label_text = "Please input name: "
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text)
        text_label = action_view.label(:user, :name, user_label_text)
        text_field = action_view.text_field(:user, :name, {:value => name})
        expect(result1).to eq(text_label + text_field)
      end

      it "Correctly displays the saved value on maximal output" do
        user_label_text = "Please input name: "
        options = {:class => "form-input-group"}
        label_options = {:class => "form-input-group", :style => "color:red"}
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text, options, label_options)
        text_label = action_view.label(:user, :name, user_label_text, label_options)
        text_field = action_view.text_field(:user, :name, options.merge({:value => name}))
        expect(result1).to eq(text_label + text_field)
      end
    end

  # --- --- --- ---
    context "Stores value string in a custom location." do
      name = "John Doe"
      let(:flash) { { custom_location: name } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved value on minimal output" do
        result1 = view.form_input_field(:text_field, :user, :name, value_key: :custom_location)
        text_field = action_view.text_field(:user, :name, {:value => name})
        expect(result1).to eq(text_field)
      end

      it "Corretly displays the saved value on basic output" do
        user_label_text = "Please input name: "
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text, value_key: :custom_location)
        text_label = action_view.label(:user, :name, user_label_text)
        text_field = action_view.text_field(:user, :name, {:value => name})
        expect(result1).to eq(text_label + text_field)
      end

      it "Correctly displays the saved value on maximal output" do
        user_label_text = "Please input name: "
        options = {:class => "form-input-group"}
        label_options = {:class => "form-input-group", :style => "color:red"}
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text, options, label_options, value_key: :custom_location)
        text_label = action_view.label(:user, :name, user_label_text, label_options)
        text_field = action_view.text_field(:user, :name, options.merge({:value => name}))
        expect(result1).to eq(text_label + text_field)
      end
    end

  # --- --- --- ---
    context "Stores value hash-map in a custom location." do
      name = "John Doe"
      phone = "555-555-5555"
      let(:flash) { { custom_location: {:name => name, :phone => phone}} }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved value on minimal output" do
        result1 = view.form_input_field(:text_field, :user, :name, value_key: :custom_location)
        result2 = view.form_input_field(:phone_field, :user, :phone, value_key: :custom_location)
        text_field = action_view.text_field(:user, :name, {:value => name})
        phone_field = action_view.phone_field(:user, :phone, {:value => phone})
        expect(result1 + result2).to eq(text_field + phone_field)
      end

      it "Corretly displays the saved value on basic output" do
        user_label_text = "Please input name: "
        phone_label_text = "Please input phone number: "
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text, value_key: :custom_location)
        result2 = view.form_input_field(:phone_field, :user, :phone, phone_label_text, value_key: :custom_location)
        text_label = action_view.label(:user, :name, user_label_text)
        text_field = action_view.text_field(:user, :name, {:value => name})
        phone_label = action_view.label(:user, :phone, phone_label_text)
        phone_field = action_view.phone_field(:user, :phone, {:value => phone})
        expect(result1 + result2).to eq(text_label + text_field + phone_label + phone_field)
      end

      it "Correctly displays the saved value on maximal output" do
        user_label_text = "Please input name: "
        phone_label_text = "Please input phone number: "
        options = {:class => "form-input-group"}
        label_options = {:class => "form-input-group", :style => "color:red"}
        result1 = view.form_input_field(:text_field, :user, :name, user_label_text, options, label_options, value_key: :custom_location)
        result2 = view.form_input_field(:phone_field, :user, :phone, phone_label_text, options, label_options, value_key: :custom_location)
        text_label = action_view.label(:user, :name, user_label_text, label_options)
        text_field = action_view.text_field(:user, :name, options.merge({:value => name}))
        phone_label = action_view.label(:user, :phone, phone_label_text, label_options)
        phone_field = action_view.phone_field(:user, :phone, options.merge({:value => phone}))
        expect(result1 + result2).to eq(text_label + text_field + phone_label + phone_field)
      end
    end

  end





# --- --- --- --- ---
  context "Presentation of error message upon invalid post" do

  # --- --- --- ---
    context "No error element present." do
      error_css = {:class => "alert-danger"}
      let(:flash) { { } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_input_error(:user, :name)
        error_label = ""
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_input_error(:user, :name, error_css)
        error_label = ""
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined argument" do
        result1 = view.form_input_error(:user, :name, label_options: error_css)
        error_label = ""
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "Stores error hash in the default location" do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { errors: {:name => error_msg } } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_input_error(:user, :name)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_input_error(:user, :name, error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined argument" do
        result1 = view.form_input_error(:user, :name, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "Stores error hash in a custom location" do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { custom_location: {:name => error_msg } } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_input_error(:user, :name, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_input_error(:user, :name, error_css, :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_input_error(:user, :name, label_options: error_css, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_input_error(:user, :name, error_key: :custom_location, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "Stores error string in the default location." do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { :errors => error_msg } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_input_error(:user, :name)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_input_error(:user, :name, error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined argument" do
        result1 = view.form_input_error(:user, :name, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "Stores error string a custom location." do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { custom_location: error_msg } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_input_error(:user, :name, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_input_error(:user, :name, error_css, :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_input_error(:user, :name, label_options: error_css, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_input_error(:user, :name, error_key: :custom_location, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end
  end
end
