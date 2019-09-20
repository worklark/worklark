// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import feather from 'feather-icons/dist/feather.min.js';

const linkKitImages = require.context('../../../vendor/Landkit-1.1.0/src/assets/img', true)
const landKitImagePath = (name) => images(name, true)


// theme
require('jquery/dist/jquery.min.js');
require('bootstrap/dist/js/bootstrap.bundle.min.js');
require('typed.js/lib/typed.min.js');




require('../../../vendor/Landkit-1.1.0/src/assets/js/highlight.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/navbar.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/polyfills.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/popovers.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/pricing.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/theme.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/tooltips.js');
require('../../../vendor/Landkit-1.1.0/src/assets/js/typed.js');

feather.replace();
