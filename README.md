# Ed25519Blake2b

This is a simple library for producing public keys from corresponding private keys using Ed25519, but with Blake2b as the hashing algorithm. Note that this is _not_ a full-featured Ed25519 hashing library at this time, but that could change in the future.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ed25519_blake2b'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ed25519_blake2b

## Usage

Right now there is only one method available for use, that produces a public key from a private key. The private key is currently expected to be 64 bytes in length.

```ruby
Ed25519Blake2b.public_key(private_key)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Kitepay/ed25519_blake2b. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ed25519Blake2b project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Kitepay/ed25519_blake2b/blob/master/CODE_OF_CONDUCT.md).
