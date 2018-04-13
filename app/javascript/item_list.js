// add listener



       const buttons = document.getElementsByClassName("btn-round")
       const item = "item"


       Array.from(buttons).forEach((b) => {

 // add event on each button

 b.addEventListener("click", (event) => {
   var id = item.concat(event.target.id);

   var elem = document.getElementById(id);

   console.log(elem.innerText)


    $.ajax({
     type: "GET",
     url: "/edit/1",
     // data: elem.innerText
     success: function(id){
       alert("Hole ID:"+ id );
     }
   });

   alert(elem.innerText);

});
});


