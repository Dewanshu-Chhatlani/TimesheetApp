require("turbolinks").start()
require("stylesheets/application.css")

import "controllers"

import flatpickr from "flatpickr"
require("flatpickr/dist/flatpickr.css")

document.addEventListener("turbolinks:load", () => {
    $( '.flatpickr' ).flatpickr({
        noCalendar: true,
      enableTime: true,
      dateFormat: 'h:i K'
});
flatpickr('.flatpikrcal', {
  enableTime: false,
  dateFormat: "d-m-Y"
});
})