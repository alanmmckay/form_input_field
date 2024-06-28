#require_relative '../lib/form_input_field.rb'
require 'rails'
require 'action_view'
require 'form_input_field'

RSpec.describe FormInputField do
  it "has a version number" do
    expect(FormInputField::VERSION).not_to be nil
  end
end


RSpec.describe "Basic Output" do

  action_view = Class.new.include(ActionView::Helpers::FormHelper).new
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

end

RSpec.describe 'Ordered Arguments' do

  action_view = Class.new.include(ActionView::Helpers::FormHelper).new
  arguments = [:test_model, :test_method, "Text Label", {:class => "form-input-group"}, {:class => "form-input-group", :style => "color:red"}, :saved_values]

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

  count = 1
  (3..arguments.length).step(1) do |i|
    sub_args = arguments.slice(2,i)
    it ('it passes argument test ' + i.to_s + ' with arguments ' + sub_args.to_s) do
      # text_field = action_view.text_field()
      text_field_args = []
      label_text_args = []
      (0..sub_args.length).step(1) do |si|
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
      production = action_view.form_input_field(:text_field, *arguments)
    end
    count += 1
  end


end

RSpec.describe 'Arbitrary argument ordering' do

  action_view = Class.new.include(ActionView::Helpers::FormHelper).new
  model = :test
  method = :one
  label_text = "label text"

  it 'test' do
    text_field = action_view.text_field(model, method)
    label = action_view.label(model,method,label_text)
    production = action_view.form_input_field(:text_field, model, method, label_text)
    expect(label + text_field).to eq(production)
  end
end
