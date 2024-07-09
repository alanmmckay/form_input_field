# FormInputField

A gem which wraps up functionality of maintaining values for forms to factor cases where a POST fails model validation while also providing a means to succinctly produce relevant error messages.

TODO: Add form image example

The natively, the logic may look like the following:

```
%div.input-group
  - value = {}
  - if flash[:info] and flash[:info]["email"]
    - value = {:value => flash[:info]["email"]}
  = label_tag model.to_s+'_email', 'Email', {:class => "input-group-text"}
  = text_field model, :email, {:class => "form-control", :placeholder => "Your Email", :disabled => false}.merge(value)
  - if (flash[:login] and flash[:login]["email"])
    = label_tag model.to_s + '_email', flash[:login]["email"][0], {:class => "alert-danger input-group-text"}
```

This gem condences the above into more a more concise method call:

```
%div.input-group
  = form_input_field :text_field, :user, "email", "Email", {:class => "form-control", :placeholder => "Your Email", :disabled => false}, {:class => "input-group-text"}
  = form_error_field :user, "email", :login, {:class => "alert-danger input-group-text"}
```

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

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alanmmckay/form_input_field.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## On Versioning

Taken from rubygems.org pattern guide on [semantic versioning](https://guides.rubygems.org/patterns/#semantic-versioning):

### SEMANTIC VERSIONING

A versioning policy is merely a set of simple rules governing how version numbers are allocated. It can be very simple (e.g. the version number is a single number starting with 1 and incremented for each successive version), or it can be really strange (Knuth’s TeX project had version numbers: 3, 3.1, 3.14, 3.141, 3.1415; each successive version added another digit to PI).

The RubyGems team urges gem developers to follow the Semantic Versioning standard for their gem’s versions. The RubyGems library itself does not enforce a strict versioning policy, but using an “irrational” policy will only be a disservice to those in the community who use your gems.

Suppose you have a ‘stack’ gem that holds a **Stack** class with both **push** and **pop** functionality. Your **CHANGELOG** might look like this if you use semantic versioning:

- **Version 0.1.0**: The initial **Stack** class is released.
- **Version 0.2.0**: Switched to a linked list implementation because it is cooler.
- **Version 0.3.0**: Added a **depth** method.
- **Version 1.0.0**: Added **top** and made **pop** return **nil** (**pop** used to return the old top item).
- **Version 1.1.0**: **push** now returns the value pushed (it used to return **nil**).
- **Version 1.1.1**: Fixed a bug in the linked list implementation.
- **Version 1.1.2**: Fixed a bug introduced in the last fix.

Semantic versioning boils down to:

- **PATCH 0.0.x** level changes for implementation level detail changes, such as small bug fixes
- **MINOR 0.x.0** level changes for any backwards compatible API changes, such as new functionality/features
- **MAJOR x.0.0** level changes for backwards incompatible API changes, such as changes that will break existing users code if they update
