require 'rails'
require 'action_controller'
require 'action_view'
require 'form_input_field'


RSpec.describe FormInputField, type: :helper do

  it "has a version number" do
    expect(FormInputField::VERSION).not_to be nil
  end

  action_view = Class.new.include(ActionView::Helpers::FormHelper).new





#--- --- --- --- ----
  context "Basic Output Expectation" do

    model = :test
    method = :one
    label_text = "label text"

    it "correctly produces check_box" do
      check_box = action_view.check_box(:test,:one)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:check_box, model, method, label_text)).to eq(label + check_box)
    end

    it "correctly produces text_field" do
      text_field = action_view.text_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:text_field, model, method, label_text)).to eq(label + text_field)
    end

    it "correctly produces color_field" do
      color_field = action_view.color_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:color_field, model, method, label_text)).to eq(label + color_field)
    end

    it "correctly produces date_field" do
      date_field = action_view.date_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:date_field, model, method, label_text)).to eq(label + date_field)
    end

    it "correctly produces datetime_field" do
      datetime_field = action_view.datetime_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:datetime_field, model, method, label_text)).to eq(label + datetime_field)
    end

    it "correctly produces datetime_local_field" do
      datetime_local_field = action_view.datetime_local_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:datetime_local_field, model, method, label_text)).to eq(label + datetime_local_field)
    end

    it "correctly produces email_field" do
      email_field = action_view.email_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:email_field, model, method, label_text)).to eq(label + email_field)
    end

    it "correctly produces file_field" do
      file_field = action_view.file_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:file_field, model, method, label_text)).to eq(label + file_field)
    end

    it "correctly produces hidden_field" do
      hidden_field = action_view.hidden_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:hidden_field, model, method, label_text)).to eq(label + hidden_field)
    end

    it "correctly produces month_field" do
      month_field = action_view.month_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:month_field, model, method, label_text)).to eq(label + month_field)
    end

    it "correctly produces number_field" do
      number_field = action_view.number_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:number_field, model, method, label_text)).to eq(label + number_field)
    end

    it "correctly produces password_field" do
      password_field = action_view.password_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:password_field, model, method, label_text)).to eq(label + password_field)
    end

    it "correctly produces phone_field" do
      phone_field = action_view.phone_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:phone_field, model, method, label_text)).to eq(label + phone_field)
    end

    it "correctly produces radio_buttons" do #need to produce a negative of this; differing pattern of arguments
      radio_button1 = action_view.radio_button(model,method,"rails")
      radio_button2 = action_view.radio_button(model,method,"java")
      label1 = action_view.label(model,method,"rails label")
      label2 = action_view.label(model,method,"java label")
      expect(action_view.form_input_field(:radio_button, model, method, "rails", "rails label") + action_view.form_input_field(:radio_button, model, method, "java", "java label")).to eq(label1 + radio_button1 + label2 + radio_button2)
    end

    it "correctly produces range_field" do
      range_field = action_view.range_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:range_field, model, method, label_text)).to eq(label + range_field)
    end

    it "correctly produces search_field" do
      search_field = action_view.search_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:search_field, model, method, label_text)).to eq(label + search_field)
    end

    it "correctly produces telephone_field" do
      telephone_field = action_view.telephone_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:telephone_field, model, method, label_text)).to eq(label + telephone_field)
    end

    it "correctly produces text_area" do
      text_area = action_view.text_area(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:text_area, model, method, label_text)).to eq(label + text_area)
    end

    it "correctly produces text_field" do
      text_field = action_view.text_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:text_field, model, method, label_text)).to eq(label + text_field)
    end

    it "correctly produces time_field" do
      time_field = action_view.time_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:time_field, model, method, label_text)).to eq(label + time_field)
    end

    it "correctly produces url_field" do
      url_field = action_view.url_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:url_field, model, method, label_text)).to eq(label + url_field)
    end

    it "correctly produces week_field" do
      week_field = action_view.week_field(model,method)
      label = action_view.label(model,method,label_text)
      expect(action_view.form_input_field(:week_field, model, method, label_text)).to eq(label + week_field)
    end

  end #end of context





# --- --- --- --- ---
  context 'Examples from ActionView::FormHelpers documentation' do

    context 'for check_box' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-check_box
      it 'passes first example' do
        check_box = action_view.check_box("post", "validated")
        form_check_box = action_view.form_input_field(:check_box, "post", "validated")
        expect(form_check_box).to eq(check_box)
      end

      it 'passes second example' do
        check_box = action_view.check_box("puppy", "gooddog", {}, "yes", "no")
        form_check_box = action_view.form_input_field(:check_box, "puppy", "gooddog", label_text: false, checked_value: "yes", unchecked_value: "no")
        expect(form_check_box).to eq(check_box)
      end

      it 'passes third example' do
        check_box = action_view.check_box("eula", "accepted", { :class => 'eula_check' }, "yes", "no")
        form_check_box = action_view.form_input_field(:check_box, "eula", "accepted", false, { :class => 'eula_check' }, false, "yes", "no")
        expect(form_check_box).to eq(check_box)
      end
    end

    context 'for color_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-color_field
      it 'passes first example' do
        color_field = action_view.color_field("car", "color")
        form_color_field = action_view.form_input_field(:color_field, "car", "color")
        expect(form_color_field).to eq(color_field)
      end
    end

    context 'for date_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-date_field
      it 'passes first example' do
        date_field = action_view.date_field("user", "born_on")
        form_date_field = action_view.form_input_field(:date_field, "user", "born_on")
        expect(form_date_field).to eq(date_field)
      end

      it 'passes second example' do
        date_field = action_view.date_field("user", "born_on", value: "1984-05-12")
        form_date_field = action_view.form_input_field(:date_field, "user", "born_on", options: { value: "1984-05-12" })
        expect(form_date_field).to eq(date_field)
      end

      it 'passes third example' do
        date_field = action_view.date_field("user", "born_on", min: Date.today)
        form_date_field = action_view.form_input_field(:date_field, "user", "born_on", options: { min: Date.today })
        expect(form_date_field).to eq(date_field)
      end

      it 'passes fourth example' do
        date_field = action_view.date_field("user", "born_on", min: "2014-05-20")
        form_date_field = action_view.form_input_field(:date_field, "user", "born_on", options: { min: "2014-05-20" })
        expect(form_date_field).to eq(date_field)
      end
    end

    context 'for datetime_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-datetime_field
      it 'passes first example' do
        datetime_field = action_view.datetime_field("user", "born_on")
        form_datetime_field = action_view.form_input_field(:datetime_field, "user", "born_on")
        expect(form_datetime_field).to eq(datetime_field)
      end

# --- Still working on this test:
      it 'passes second example' do
        user = double("User", :born_on => Date.new(1984, 1, 27))
        form_builder = ActionView::Helpers::FormBuilder.new(:user, user, action_view, {})
        datetime_field = form_builder.datetime_field(:born_on)
        form_datetime_field = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        expect(form_datetime_field).to eq(datetime_field)
      end
# ---

      it 'passes third example' do
        datetime_field = action_view.datetime_field("user", "born_on", min: Date.today)
        form_datetime_field = action_view.form_input_field(:datetime_field, "user", "born_on", options: { min: Date.today })
        expect(form_datetime_field).to eq(datetime_field)
      end

      it 'passes fourth example' do
        datetime_field = action_view.datetime_field("user", "born_on", min: "2014-05-20T00:00:00")
        form_datetime_field = action_view.form_input_field(:datetime_field, "user", "born_on", options: { min: "2014-05-20T00:00:00" })
        expect(form_datetime_field).to eq(datetime_field)
      end

# --- Still working on this test:
      it 'passes fifth example' do
        user = double("User", :born_on => DateTime.now)
        form_builder = ActionView::Helpers::FormBuilder.new(:user, user, action_view, {})
        datetime_field = form_builder.datetime_field("born_on", include_seconds: false)
        form_datetime_field = "This feature hasn't been implemented/confirmed yet"
        expect(form_datetime_field).to eq(datetime_field)
      end
    end
# ---

    context 'for email_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-email_field
      it 'passes first example' do
        email_field = action_view.email_field("user", "address")
        form_email_field = action_view.form_input_field(:email_field, "user", "address")
        expect(form_email_field).to eq(email_field)
      end
    end

    context 'for file_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-file_field
      it 'passes first example' do
        file_field = action_view.file_field(:user, :avatar)
        form_file_field = action_view.form_input_field(:file_field, :user, :avatar)
        expect(form_file_field).to eq(file_field)
      end

      it 'passes second example' do
        file_field = action_view.file_field(:post, :image, multiple: true)
        form_file_field = action_view.form_input_field(:file_field, :post, :image, options: { multiple: true })
        expect(form_file_field).to eq(file_field)
      end

      it 'passes third example' do
        file_field = action_view.file_field(:post, :attached, accept: 'text/html')
        form_file_field = action_view.form_input_field(:file_field, :post, :attached, options: { accept: 'text/html' })
        expect(form_file_field).to eq(file_field)
      end

      it 'passes fourth example' do
        file_field = action_view.file_field(:post, :image, accept: 'image/png,image/gif,image/jpeg')
        form_file_field = action_view.form_input_field(:file_field, :post, :image, options: { accept: 'image/png,image/gif,image/jpeg' })
        expect(form_file_field).to eq(file_field)
      end

      it 'passes fifth example' do
        file_field = action_view.file_field(:attachment, :file, { :class => 'file_input' })
        form_file_field = action_view.form_input_field(:file_field, :attachment, :file, options: { :class => 'file_input' })
        expect(form_file_field).to eq(file_field)
      end
    end

# --- Still working on this group of tests
    context 'for hidden_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-hidden_field

      it 'passes first example' do
        signup = double("Signup", :pass_confirm => "secret123")
        form_builder = ActionView::Helpers::FormBuilder.new(:signup, signup, action_view, {})

        hidden_field = form_builder.hidden_field(:pass_confirm)
        form_hidden_field = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        expect(form_hidden_field).to eq(hidden_field)
      end

      it 'passes second example' do
        post = double("Post", :tag_list => "tags")
        form_builder = ActionView::Helpers::FormBuilder.new(:post, post, action_view, {})

        hidden_field = form_builder.hidden_field(:tag_list)
        form_hidden_field = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        expect(form_hidden_field).to eq(hidden_field)
      end

      it 'passes third example' do
        user = double("User", :token => 'secret123')
        form_builder = ActionView::Helpers::FormBuilder.new(:user, user, action_view, {})

        hidden_field = form_builder.hidden_field(:token)
        form_hidden_field = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        expect(form_hidden_field).to eq(hidden_field)
      end
    end

    context 'for month_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-month_field
      it 'passes first example' do
        month_field = action_view.month_field("user", "born_on")
        form_month_field = action_view.form_input_field(:month_field, "user", "born_on")
        expect(form_month_field).to eq(month_field)
      end

# --- Still working on this test
      it 'passes second example' do
        user = double("User", :born_on => Date.new(1984, 1, 27))
        form_builder = ActionView::Helpers::FormBuilder.new(:user, user, action_view, {})
        month_field = form_builder.month_field("born_on")
        form_month_field = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        expect(form_month_field).to eq(month_field)
      end
# ---

    end

    context 'for password_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-password_field
      it 'passes first example' do
        password_field = action_view.password_field(:login, :pass, size: 20)
        form_password_field = action_view.form_input_field(:password_field, :login, :pass, options: { size: 20 })
        expect(form_password_field).to eq(password_field)
      end

      it 'passes second example' do
        account = double("Account", :secret => "secret123")
        allow(account).to receive(:[]).with(:secret).and_return("secret123")
        password_field = action_view.password_field(:account, :secret, {:class => "form_input", :value => account[:secret]})
        form_password_field = action_view.form_input_field(:password_field, :account, :secret, options: {:class => "form_input", :value => account[:secret]})
        expect(form_password_field).to eq(password_field)
      end

      it 'passes third example' do
        password_field = action_view.password_field(:user, :password, onchange: "if ($('#user_password').val().length > 30) { alert('Your password needs to be shorter!'); }")
        form_password_field = action_view.form_input_field(:password_field, :user, :password, options: { onchange: "if ($('#user_password').val().length > 30) { alert('Your password needs to be shorter!'); }" })
        expect(form_password_field).to eq(password_field)
      end

      it 'passes fourth example' do
        password_field = action_view.password_field(:account, :pin, {:size => 20, :class => 'form_input'})
        form_password_field = action_view.form_input_field(:password_field, :account, :pin, options: {:size => 20, :class => 'form_input'})
        expect(form_password_field).to eq(password_field)
      end
    end

# --- Still working on this group of tests
    context 'for radio_button' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-radio_button
      it 'passes first example' do
        post = double("Post", :category => "rails")
        form_builder = ActionView::Helpers::FormBuilder.new(:post, post, action_view, {})
        radio_button1 = form_builder.radio_button(:category, "rails")
        radio_button2 = form_builder.radio_button(:category, "java")
        form_radio_button1 = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        form_radio_button2 = ""
        expect(form_radio_button1 + form_radio_button2).to eq(radio_button1 + radio_button2)
      end

      it 'passes second example' do
        user = double("User", :receive_newsletter => "no")
        form_builder = ActionView::Helpers::FormBuilder.new(:user, user, action_view, {})
        radio_button1 = form_builder.radio_button("receive_newsletter", "yes")
        radio_button2 = form_builder.radio_button("receive_newsletter", "no")
        form_radio_button1 = "Haven't figured out how to properly create a double for this without needing to scaffold an entire rails dummy app."
        form_radio_button2 = ""
        expect(form_radio_button1 + form_radio_button2).to eq(radio_button1 + radio_button2)
      end
    end
# ---

    context 'for search_field' do
      #https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-search_field
      it 'passes first example' do
        search_field = action_view.search_field(:user, :name)
        form_search_field = action_view.form_input_field(:search_field, :user, :name)
        expect(form_search_field).to eq(search_field)
      end

      it 'passes second example' do
        search_field = action_view.search_field(:user, :name, autosave: false)
        form_search_field = action_view.form_input_field(:search_field, :user, :name, options: { autosave: false })
        expect(form_search_field).to eq(search_field)
      end

      it 'passes third example' do
        search_field = action_view.search_field(:user, :name, results: 3)
        form_search_field = action_view.form_input_field(:search_field, :user, :name, options: { results: 3 })
        expect(form_search_field).to eq(search_field)
      end

      it 'passes fourth example' do
        #  !!! The documentation of this example is wonky within api.rubyonrails.org. It says:
        #    Assume request.host returns "www.example.com"
        #    search_field(:user, :name, autosave: true)
        #    => <input autosave="com.example.www" id="user_name" name="user[name]" results="10" type="search" />
        #  !!! There is no mention of request.host elsewhere. Need to investigate further
        search_field = action_view.search_field(:user, :name, autosave: true)
        form_search_field = action_view.form_input_field(:search_field, :user, :name)
        # expect(form_search_field).to eq(search_field)
        expect("Need to look into this example case further").to eq("Read associated comments:")
        #https://github.com/rails/rails/blob/main/actionview/lib/action_view/helpers/tags/search_field.rb#L6
      end

      # !!! There are three other examples in the documentation!

    end
  end





# --- --- --- --- ---
  context 'With ordered arguments' do

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
        expect(production).to eq(label_field + text_field)
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
        expect(production).to eq(label_field + radio_button)
      end
    end #argument qty incrementor

  # --- --- --- --- ---
    check_args = [:test_model, :test_method, "Check Label", {:class => "form_input-group"}, {:class => "form-input-group", :style => "color:red"}, "false", "true", :saved_values]

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
        label_field = action_view.label(check_args[0], check_args[1], *label_args)
        sub_args = [:test_model, :test_method] + sub_args
        puts ""
        print "check box test; using arguments: "
        print sub_args
        puts ""
        production = action_view.form_input_field(:check_box, *sub_args)
        expect(production).to eq(label_field + check_button)
      end
    end #argument qty incrementor
  end #end of context





# --- --- --- --- ---
  context 'Arbitrary ordering on keyword arguments' do
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
  context "Allows keyword arguments on any range of optional parameters" do
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
    context "with no error element present." do
      error_css = {:class => "alert-danger"}
      let(:flash) { { } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_error_field(:user, :name)
        error_label = ""
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_error_field(:user, :name, error_css)
        error_label = ""
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined argument" do
        result1 = view.form_error_field(:user, :name, label_options: error_css)
        error_label = ""
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "with error hash in the default location" do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { errors: {:name => [error_msg] } } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_error_field(:user, :name)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_error_field(:user, :name, error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined argument" do
        result1 = view.form_error_field(:user, :name, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "with error hash in a custom location" do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { custom_location: {:name => [error_msg] } } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_error_field(:user, :name, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_error_field(:user, :name, error_css, :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_error_field(:user, :name, label_options: error_css, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_error_field(:user, :name, error_key: :custom_location, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "with error string in the default location." do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { :errors => error_msg } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_error_field(:user, :name)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_error_field(:user, :name, error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined argument" do
        result1 = view.form_error_field(:user, :name, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end

  # --- --- --- ---
    context "with error string a custom location." do
      error_msg = "Please input a valid name"
      error_css = {:class => "alert-danger"}
      let(:flash) { { custom_location: error_msg } }
      let(:controller) { double('controller', flash: flash) }
      let(:view) { ActionView::Base.new(ActionView::LookupContext.new([]), {}, controller)}

      before do
        allow(view).to receive(:controller).and_return(controller)
      end

      it "Correctly displays the saved error on minimal output" do
        result1 = view.form_error_field(:user, :name, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output" do
        result1 = view.form_error_field(:user, :name, error_css, :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_error_field(:user, :name, label_options: error_css, error_key: :custom_location)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end

      it "Correctly displays the saved error on basic output with explicitly defined arguments" do
        result1 = view.form_error_field(:user, :name, error_key: :custom_location, label_options: error_css)
        error_label = action_view.label(:user, :name, error_msg, error_css)
        expect(result1).to eq(error_label)
      end
    end
  end

end
