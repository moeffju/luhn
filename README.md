# Luhn

Adds methods to Fixnum and String to generate and validate Luhn checksums.

## Installation

Add this line to your application's Gemfile:

    gem 'luhn', :git => 'git://github.com/moeffju/luhn.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install luhn

## Usage

`Fixnum`:

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
'4 10041064'.luhn!    #=> "4 100410648"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
