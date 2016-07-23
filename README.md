# NG

## 普通に

```ruby
File.exist?('wrapped/Gemfile')
#=> true
```

```ruby
require 'wrapped/Gemfile'
#=> [!] There was an error parsing `Gemfile`: cannot load such file -- wrapped/Gemfile. Bundler cannot continue.
```

## rbファイルとして

```
$ ln -s wrapped/Gemfile Gemfile.rb
```

```ruby
require 'Gemfile'
#=> [!] There was an error parsing `Gemfile`: undefined method `source' for main:Object. Bundler cannot continue.
```

# Good

```ruby
instance_eval(File.read(File.expand_path('../wrapped/Gemfile', __FILE__)))

gem 'rack-mini-profiler'
gem 'bullet'
```
