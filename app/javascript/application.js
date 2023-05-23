// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import 'foundation-sites'

import 'jquery'
window.$ = jQuery 
window.jquery = jQuery;

// import "data-tables"

$(document).ready( function ($) {
  console.log("Hii")
  $(document).foundation();
} );

$(document).ready( function () {
  console.log("Hii 2")
  let table = new DataTable('#myTable');
} );