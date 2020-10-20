require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

require("materialize-css");

$(document).on("turbolinks:load", function () {
  M.AutoInit();
});
