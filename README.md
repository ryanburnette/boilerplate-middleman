# Boilerplate Middleman

This is a boilerplate Middleman project.

## Middleman

### Helpers

Keep the helpers all organized in the `./helpers` directory. Modules that
follow the `FooHelpers` naming convention will be automatically loaded.

### Data

The `./data` directory is pretty useful. Make a file like this:

```yml
# ./data/foo.yml
bar: 1
```

Then grab the data like this:

```ruby
data.foo.bar # 1
```

## Rakefile

## Bower

[Bower](http://bower.io) for managing front-end packages. Run `bower install`
to install packages.

## Modernizr

[Modernizr](https://modernizr.com/docs) for browser tests.  The
`./modernizr-config.json` contains a manifest of all the tests.  Run `rake
development:modernizr` to rebuild the file. The config stays in version
control, the built file doesn't have to. Yay.

## License

Apache 2
