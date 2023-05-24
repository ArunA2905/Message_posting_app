// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import 'jquery'
window.$ = jQuery 
window.jquery = jQuery;

import 'foundation-sites'


import "data-tables"

$(document).ready( function ($) {
  $(document).foundation();
} );

$(document).ready( function () {
  let table = new DataTable('#myTable');
} );
