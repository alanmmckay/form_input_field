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


end
