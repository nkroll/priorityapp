# Twitter Bootstrap v2 for Rails 3
Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.
It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.



anjlab-bootstrap-rails project integrates Bootstrap CSS (with SASS flavour) and JS toolkits for Rails 3 projects

## Rails > 3.1
Include Bootstrap in Gemfile;

``` ruby
gem 'anjlab-bootstrap-rails', '>= 2.0', :require => 'bootstrap-rails'
```

or you can install from latest build;

``` ruby
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                              :git => 'git://github.com/anjlab/bootstrap-rails.git'
```

and run bundle install.

## Stylesheets

Add necessary stylesheet file to app/assets/stylesheets/application.css

``` css
*= require bootstrap
*= require responsive
```

You can override bootstrap variables:

 1. replace `*= require bootstrap` with `*= require app_bootstrap`
 2. create `app_bootstrap.css.scss` :

```scss
// change colors
$linkColor: red;

// change grid
$gridColumnWidth: 70px;
$gridGutterWidth: 10px;

// import original bootstrap
@import "bootstrap";
@import "responsive";
```

## Javascripts

Add necessary javascript(s) files to app/assets/javascripts/application.js

``` javascript
// Include all twitter's javascripts
//= require bootstrap

// Or peek any of them yourself
//= require bootstrap-transition
//= require bootstrap-alert
//= require bootstrap-modal
//= require bootstrap-dropdown
//= require bootstrap-scrollspy
//= require bootstrap-tab
//= require bootstrap-tooltip
//= require bootstrap-popover
//= require bootstrap-button
//= require bootstrap-collapse
//= require bootstrap-carousel
//= require bootstrap-typeahead
```

## Upgrade notes from 1.4

 - [Twitter Bootstrap Upgrade](http://twitter.github.com/bootstrap/upgrading.html)
 - rm -rf tmp/cache

## For Developers

 - Fork this repo if you want fix rails integration bug
 - Fork [SASS repo](https://github.com/yury/bootstrap) if you want fix SASS bug
        
## Thanks
Thanks Twitter for Bootstrap
http://twitter.github.com/bootstrap

Inspired by Seyhun Akyürek and his [twitter-bootstrap-rails gem](https://github.com/seyhunak/twitter-bootstrap-rails)


## License
Copyright (c) 2011 AnjLab

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
