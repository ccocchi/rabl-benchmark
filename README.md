# Rabl benchmark #

This Rails application is used to benchmark two gems : `rabl` and `rabl-rails`, both that allows to write API representation for your models as views.

## Tests

Use `rake test TEST=<path_to_test>` to launch the tests

Tests are under `test/performance/`. Rendering cases tested are :
  * single model without extends
  * single model with extend
  * collection of 30 objects without extend
  * collection of 30 objects with extend
  * deep nesting models
  * single model with partial

Tests use JSON format.

More tests cases are welcome

## Results

`rabl-rails` gem is 5% faster when rendering single object, but can be **50% faster** when rendering collection with extends (which one of the most used case).

`rabl-rails` alse use **less memory** globally, around 10% less, with **50%** less memory used on collection with extend.

## Helping out

If you want to provide another benchmark tests, please fork the code, fix in your local project and then send a pull request on github.

## Author

Christopher Cocchi-Perrier - [ccocchi](http://github.com/ccocchi) | [@ccocchi](http://twitter.com/ccocchi)