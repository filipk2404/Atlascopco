
       const buttons = document.getElementsByClassName("btn") ;


       Array.from(buttons).forEach((b) => {

 // add event on each button

 b.addEventListener("click", (event) => {
   // var id = item.concat(event.target.id);

   var elem = b.getElementsByTagName("h5")[0].innerHTML

  const target_url =  "/items/?".concat(elem)
  window.location.assign(target_url)

});
});


