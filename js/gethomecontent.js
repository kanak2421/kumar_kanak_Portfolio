var xmlhttp=new XMLHttpRequest();
xmlhttp.onreadystatechange=function() {
  if (this.readyState==4 && this.status==200) {
    var response = this.responseText;
    
    const obj = JSON.parse(response);
    // document.getElementById("title").innerHTML=obj.Title;
    document.getElementById("home_content").innerHTML=obj.Home_Content;
  }
}
xmlhttp.open("GET","./includes/ajaxcall.php?page=home",true);
xmlhttp.send();