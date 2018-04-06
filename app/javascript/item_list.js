// add listener



       const buttons = document.getElementsByClassName("btn-round")

       Array.from(buttons).forEach((b) => {

 // add event on each button

 b.addEventListener("click", (event) => {
   //Button.classList.add("blue");

   b.classList.toggle("ok")

   alert("here!");

   if (b.innerText === "OK") {;

    b.innerText ="NOK";
  } else {
    b.innerText = "OK";
  }
});
});

