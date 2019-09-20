const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

// add jQuery to the environment
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    "window.jQuery": "jquery",
    Tether: "tether",
    "window.Tether": "tether",
    Tooltip: "exports?Tooltip!bootstrap/js/dist/tooltip",
    Alert: "exports?Alert!bootstrap/js/dist/alert",
    Button: "exports?Button!bootstrap/js/dist/button",
    Carousel: "exports?Carousel!bootstrap/js/dist/carousel",
    Collapse: "exports?Collapse!bootstrap/js/dist/collapse",
    Dropdown: "exports?Dropdown!bootstrap/js/dist/dropdown",
    Modal: "exports?Modal!bootstrap/js/dist/modal",
    Popover: "exports?Popover!bootstrap/js/dist/popover",
    Scrollspy: "exports?Scrollspy!bootstrap/js/dist/scrollspy",
    Tab: "exports?Tab!bootstrap/js/dist/tab",
    Tooltip: "exports?Tooltip!bootstrap/js/dist/tooltip",
    // Typed: "exports?Typed!typed.js/src/typed", // Typed.js
    Util: "exports?Util!bootstrap/js/dist/util",
  })
)

module.exports = environment
