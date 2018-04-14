# Fog::Huaweicloud

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fog-huaweicloud'
```

And then execute:
```shell
    $ bundle
```

Or install it yourself as:

```shell
    $ gem install fog-huaweicloud
```

## Usage
Before you can use fog-huaweicloud, you must require it in your application:

```ruby
require 'fog/huaweicloud'
```

Since it's a bad practice to have your credentials in source code, you should load them from default fog configuration file: ```~/.fog```. This file could look like this:

```
default:
  :huaweiyun_accesskey_id:     <YOUR_ACCESS_KEY_ID>,
  :huaweiyun_accesskey_secret: <YOUR_SECRET_ACCESS_KEY>,
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

