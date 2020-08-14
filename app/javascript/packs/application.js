// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import $ from "jquery";
import select2 from "select2";

import 'select2/dist/css/select2.css';

const a = () => {
  $(document).ready(function() {
    $('#dose_ingredient_id').select2();
});
};

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

window.addEventListener('scroll', (event) => {
  if (window.scrollY >= window.innerHeight*0.75) {
    document.querySelector('nav').style.display = "flex";
  }
});

a();
