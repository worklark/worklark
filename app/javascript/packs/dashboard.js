// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import feather from 'feather-icons/dist/feather.min.js';

const images = require.context('../../assets/images', true)
const imagePath = (name) => images(name, true)

const dashkitImages = require.context('../../../vendor/Dashkit-1.4.2/src/assets/img', true)
const dashkitImagePath = (name) => images(name, true)

//  Libs JS
require('jquery/dist/jquery.min.js'); // added
require('bootstrap/dist/js/bootstrap.bundle.min.js'); // added
require('@shopify/draggable/lib/es5/draggable.bundle.legacy.js'); // added
require('autosize/dist/autosize.min.js'); // added
require('chart.js/dist/Chart.min.js'); // added
require('dropzone/dist/min/dropzone.min.js'); // added
require('list.js/dist/list.min.js'); // added
require('quill/dist/quill.min.js'); // added


require('../../../vendor/Dashkit-1.4.2/src/assets/libs/chart.js/Chart.extension.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/polyfills.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/charts.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/charts-dark.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/autosize.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/dashkit.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/dropdowns.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/dropzone.js');
// require('../../../vendor/Dashkit-1.4.2/src/assets/js/flatpickr.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/kanban.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/list.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/map.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/navbar.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/popover.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/quill.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/select2.js');
require('../../../vendor/Dashkit-1.4.2/src/assets/js/tooltip.js');

// const insertAfter = (referenceNode, el) => {
//     const data = document.createElement(el);
//     document.querySelector(referenceNode).appendChild(data);
// }
//
// insertAfter('div.dropdown-toggle', '<i data-feather="chevron-down"></i>');
// .dropup > .dropdown-toggle::after {
//   content: unset; // <i data-feather="chevron-up"> </i>
// }
// .dropright > .dropdown-toggle::after {
//   content: unset; // <i data-feather="chevron-right"> </i>
// }
// .dropleft > .dropdown-toggle::before {
//   content: unset; // <i data-feather="chevron-left"> </i>
// }
// .navbar-vertical .navbar-nav .nav-link[data-toggle="collapse"]:after {
//   content: unset; // <i data-feather="chevron-down"> </i>
// }


feather.replace();
