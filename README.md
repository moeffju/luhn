# Luhn

Adds methods to Fixnum and String to generate and validate Luhn checksums.

## Installation

Add this line to your application's Gemfile:

    gem 'moeffju-luhn', :require => 'luhn'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moeffju-luhn

The gem's name is 'luhn', so you need to `require luhn`.

## Usage

`Numeric` (`Fixnum`, `Bignum`):

```
4100410382.luhn?  #=> true
410041038.luhn    #=> 2
410041038.luhn!   #=> 4100410382

4100410648.luhn?  #=> true
410041064.luhn    #=> 8
410041064.luhn!   #=> 4100410648
```

And for `String`s:

```
'4 10041064 8'.luhn?  #=> true
'4 10041064'.luhn     #=> "8"
'4 10041064'.luhn!    #=> "4100410648"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Make sure the specs pass / extend the specs
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
