# ActionView::Helpers::FormHelper::FormInputField

A gem for Ruby on Rails which wraps up functionality of maintaining values for forms to factor cases where a POST fails model validation whilst also providing a means to succinctly produce relevant error messages.

Consider a simple form which is primarily defined by an HTML input element and its label:

![Filling a web form](readme/images/email_form_2.png)

Consider added functionality which presents a new label informing the user any errors discovered upon POST whilst also maintaining the value the user had previously submitted:

![Web form presenting an error](readme/images/email_form_3.png)

It's important to validate such fields on the server, even if JavaScript is doing this work on the front end. Within Ruby on Rails, (using HAML), the logic may look like the following:

```
%div.input-group
  - value = {}
  - if flash[:values] and flash[:values][:email:]
    - value = {:value => flash[:values][:email]}
  = label :user, :email, 'Email', {:class => "input-group-text"}
  = text_field :user, :email, {:class => "form-control", :placeholder => "Your Email", :disabled => false}.merge(value)
  - if (flash[:errors] and flash[:errors][:email])
    = label :user, :email', flash[:errors][:email][0], {:class => "alert-danger input-group-text"}
```

This gem condenses the above into more a more concise set of method calls:

```
%div.input-group
  = form_input_field :text_field, :user, :email, "Email", {:class => "form-control", :placeholder => "Your Email", :disabled => false}, {:class => "input-group-text"}
  = form_error_field :user, :email, {:class => "alert-danger input-group-text"}
```

This makes a view much more clean and easier to digest at a glance.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'form_input_field'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install form_input_field

## Usage

This gem places two helper methods into [ActionView::Helpers::FormHelper](https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html). These methods are  `form_input_field` and `form_error_field`.

To see some examples, go to the [Examples Section](#examples) of this document.

### form_input_field

`form_input_field` is an abstraction on the software pattern which encapsulates some input element and its label. Additionally, it has built in functionality which helps ensure the input element's value attribute is filled should the flash hash-map contain the presence of this value.

- `form_input_field(helper_sym, object_name, method, label_text = false, options = {}, label_options = {}, value_key = :values)`
  + Outputs two html tags - a label HTML element pointing to its corresponding input HTML element. The term "input HTML element" here is ambiguous; it's not meant to be taken literally. "Input" in this context is meant to be interpreted as any output produced by the following list of helper functions within `ActionView::Helpers::FormHelper`:
    - *color_field*, *date_field*, *datetime_field*, *datetime_local_field*, *email_field*, *file_field*, *hidden_field*, *month_field*, *number_field*, *password_field*, *phone_field*, *range_field*, *search_field*, *telephone_field*, *text_area*, *text_field*, *time_field*, *url_field*, *week_field*
    - In addition to the above list of `FormHelper` method calls, `form_input_field` captures two special cases - *check_box* and *radio_button*. These are described later.
  + The `helper_sym` argument describes the relevant helper method to be called. It expects the method name as a symbol. I.e., if one needs a call to *text_field*, pass `:text_field`; If one needs a call to *password_field*, supply a value of `:password_field`, etc.
  + The `object_name` and `method` arguments correspond to the equivalently named arguments as described in `ActionView::Helpers::FormHelper`.
  + The `label_text` argument expects a string for the associated label of the generated input HTML element described by `helper_sym`. Supplying a false will instead not produce a label HTML element; an empty string is produced for the label.
  + The `options` argument corresponds to a hash-map representing the set of options to be passed with `helper_sym`; these are the options to be given to a method call from the above set of helper methods. Esentially a hash-map of html properties and attributes. I.e., `{:style => "color:red;"}`
  + The `label_options` argument corresponds to a hash-map representing the set of options to be passed with the call to the label helper method from `ActionView::Helpers::FormHelper`. Essentially a hash-map of html properties and attributes to be applied to the label. I.e., `{:style => "color:red;"}`
  + The `value_key` argument is a symbol that acts as a key for the flash hash-map that contains the relevant value filled by the controller. If the value associated with said key within flash is a string, then the string will occupy the `value` attribute for the produced input HTML element. If it is a hash-map, it will then assume that the value given for `method` is the key to the string within this embedded hash-map. Consider the following example:
    - For a view that contains the following call: `form_input_field :person, :name, "Please input a name: "`, the controller contains either `flash[:values] = params[:user][:name]` or `flash[:values] = params[:user]` when `User.new(params[:user][:name]).valid?` returns a false.

#### :check_box helper_sym

When using the value of `:check_box` for `helper_sym`, the argument set is as follows:

- `form_input_field(helper_sym, object_name, method, label_text = false, options = {}, label_options = {}, checked_value = "1", unchecked_value = "0", value_key = :values)`
  + The `checked_value` and `unchecked_value` arguments correspond to the value sent to the server upon post, dependent whether or not the check box is checked.
  + The other arguments are unchanged from their descriptions above.

#### :radio_button helper_sym

When using the value of `:radio_button` for `helper_sym`, the argument set is as follows:

- `form_input_field(helper_sym, object_name, method, tag_value, label_text = false, options = {}, label_options = {}, value_key = :values)`
  + The `tag_value` argument corresponds to the value that will be sent to the server upon post, dependent whether or not the radio_button is selected.
  + The other arguments are unchanged from their descriptions above.

### form_error_field

`form_error_field` is an abstraction on the software pattern which encapsulates the presentation of a validation error. This produces a label HTML element which points to the originating input field. The text of the label is the error message associated with the failed validation. These errors are typically captured from the model by the controller and then sent to the view where this method call is enacted.

- `form_error_field(object_name, method, label_options = {}, error_key = :errors)`
  + Outputs a label HTML tag whose textual value is located in the flash-hash map corresponding to `error_key`. If the value associated with said key is a string, then this string value will be used. If it is a hash-map, it will then assume that the value given for `method` is the key to the string within this embedded hash-map. Consider the following example:
    - For a view that contains the following call: `form_error_field :person, :name`, the controller contains either `flash[:errors] = @user.errors[:name]` or `flash[:errors] = @user.errors`, where `@user` is defined by `User.new(params[:user][:name])` and `User.valid?` returns a false.
  + The `label_options` argument corresponds to a hash-map representing the set of options to be passed with the call to the label helper function from `ActionView::helpers::FormHelper`. Essentially a hash-map of html properties and attributes. I.e., `{:style => "color:red;"}`


### Examples

#### Form_input_field:

```ruby
form_input_field(:password_field, :user, :password, "Enter Password")
# => <label for="user_password">Enter Password</label><input type="password" name="user[password]" id="user_password" />

form_input_field(:password_field, :user, :password)
# => <input type="password" name="user[password]" id="user_password" />

form_input_field(:text_field, :login, :name, false, { :class => 'tag-class'})
# => <input class="tag-class" type="text" name="login[name]" id="login_name" />

form_input_field(:text_area, :applicant, :statement, label_text: "Tell us why you're interested:", options: { :class => 'form-input' }, label_options: { style: "font-weight:bold;color:grey;"})
# => <label style="font-weight:bold;color:grey;" for="applicant_statement">Tell us why you&#39;re interested:</label><textarea class="form-input" name="applicant[statement]" id="applicant_statement">n</textarea>

# The following three examples produce the same output:
form_input_field(:email_field, "user", "email", "Input Email", {:class => "form-control", :placeholder => "Your Email", :disabled => false}, {:class => "input-group-text"})
# => <label class="input-group-text" for="user_email">Input Email</label><input class="form-control" placeholder="Your Email" type="email" name="user[email]" id="user_email" />

form_input_field(:email_field, :user, :email, label_text: "Input Email", options: {:class => "form-control", :placeholder => "Your Email", :disabled => false}, label_options: {:class => "input-group-text"})
# => <label class="input-group-text" for="user_email">Input Email</label><input class="form-control" placeholder="Your Email" type="email" name="user[email]" id="user_email" />

form_input_field(:email_field, :user, :email, label_options: {:class => "input-group-text"}, options: {:class => "form-control", :placeholder => "Your Email", :disabled => false}, label_text: "Input Email")
# => <label class="input-group-text" for="user_email">Input Email</label><input class="form-control" placeholder="Your Email" type="email" name="user[email]" id="user_email" />"
#--- --- ---

form_input_field(:url_field, :user, :home_page)
# if flash[:values] contains {:home_page => "www.example.com"} OR if flash[:values] contains "www.example.com":
# => <input value="www.example.com" type="url" name="user[home_page]" id="user_home_page" />

form_input_field(:url_field, :user, :home_page, value_key: :info)
# if flash[:info] contains {:home_page => "www.example.com"} OR if flash[:info] contains "www.example.com":
# => <input value="www.example.com" type="url" name="user[home_page]" id="user_home_page" />


```

#### form_error_field:

```ruby
form_error_field(:user, :name)
# if flash[:errors] contains {:name => "Please input a valid name"} OR if flash[:errors] contains "Please input a valid name":
# => <label for="user_name">Please input a valid name</label>

form_error_field(:user, :name, { :class => "alert-danger"})
# if flash[:errors] contains {:name => "Please input a valid name"} OR if flash[:errors] contains "Please input a valid name":
# => <label class="alert-danger" for="user_name">Please input a valid name</label>

form_error_field(:user, :email, { style: "color:red;"}, :err_msg)
# if flash[:err_msg] contains {:email => "Please input a valid email"} OR if flash[:err_msg] contains "Please input a valid email":
# => <label style="color:red;" for="user_email">Please input a valid email</label>

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Finished Work

- [x] Base definition of `form_input_field` such that its optional keyword arguments can be supplied in any order.
- [x] Base definition of `form_error_field` such that its optional keyword arguments can be supplied in any order.

### Future Work

- [ ] A mechanism to set key defaults.
- [ ] Extend these helpers to be compatible with `ActionView::Helpers::FormBuilder`.
- [ ] Create function wrappers specific to the required `ActionView::Helpers::FormHelper` method. I.e., `form_text_field(:model, :object_name)` which calls `form_input_field(:text_field, :model, :object_name)`

Other avenues of future work will be listed in the issues section of the repository.

### Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alanmmckay/form_input_field.

#### On Versioning

Taken from rubygems.org pattern guide on [semantic versioning](https://guides.rubygems.org/patterns/#semantic-versioning). Semantic versioning boils down to:

- **PATCH 0.0.x** level changes for implementation level detail changes, such as small bug fixes
- **MINOR 0.x.0** level changes for any backwards compatible API changes, such as new functionality/features
- **MAJOR x.0.0** level changes for backwards incompatible API changes, such as changes that will break existing users code if they update

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

