# Ruby Bootcamps

Code samples supporting the presentations:

1. [automation with rake](https://docs.google.com/a/just-eat.com/presentation/d/1u-kyRP-AlpPkBQbYklXMEpUqd20QnH5dQCN-o5-_D48/edit)
2. [your first command line scripts](https://docs.google.com/a/just-eat.com/presentation/d/1oHBNb-Kmz3lhAMm_C1w_cdUC4v7IPAjHBemwdZu5ai8/edit)
3. [Functionally testing a website](https://docs.google.com/a/just-eat.com/presentation/d/1bDfVoTC7Ej0arj32YLhVoCMXGORhmJOaHegbYy89jL4/edit)
4. [Direct shell access to AWS](https://docs.google.com/a/just-eat.com/presentation/d/1gaXHwx3kig3uYnGMGeMida27foYaKzBrlAbbVLecjvs/edit)
5. [Managing dependencies and making gems](https://docs.google.com/a/just-eat.com/presentation/d/1DY7QY5S2JfTtkM2ugF2bQNIjLsBsiSwNQvKcWvVi_Sw/edit)

##Dependencies

### Install ruby 1.9+ (with [devkit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit), if on windows)
  * make sure `ruby -v` returns something like `ruby 1.9.3p374 (2013-01-15) [i386-mingw32]` (on windows)
  * [make sure this works](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit#5-test-installation):

```shell
gem install json --platform=ruby
ruby -rubygems -e "require 'json'; puts JSON.load('[42]').inspect"
```

### Install some gems
```shell
gem install rake bundler
```
