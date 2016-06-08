console.log("YOOYOYO");

function addBorder(event) {
event.target.style.border = "3px solid pink";
}

function removeBorder(event) {
event.target.style.border = "";
}

var p = document.getElementById("test");

p.addEventListener("mouseout", removeBorder);
p.addEventListener("mouseover", addBorder);