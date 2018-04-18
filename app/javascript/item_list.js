// add listener



       const buttons = document.getElementsByClassName("btn-round")
       const item = "item"


       Array.from(buttons).forEach((b) => {

 // add event on each button

 b.addEventListener("click", (event) => {
   var id = item.concat(event.target.id);

   var elem = document.getElementById(id);

const target_url =  "/items/".concat(event.target.id).concat("/edit")

    $.ajax({
     type: "GET",
     url: target_url,
     success: function(),
   });


});
});


