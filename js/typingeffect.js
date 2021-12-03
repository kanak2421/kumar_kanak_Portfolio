var count = 0;
var heading = 'Hi, I am Kanak';
var speed = 255;

function typingeffect() {
  if (count < heading.length) {
    document.getElementById("title").innerHTML += heading.charAt(count);
    count++;
    setTimeout(typingeffect, speed);
  }
}
typingeffect();