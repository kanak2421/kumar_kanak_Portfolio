var app = new Vue({
    el: '#myapp',
    data: {
      users: "",
    },
    methods: {
      allRecords: function(){
  
        axios.get('./includes/ajaxcall.php?page=work-summary')
        .then(function (response) {
           app.users = response.data;
          //  console.log(app.users);
           
        })
        .catch(function (error) {
           console.log(error);
        });
      },
    
    },
    beforeMount(){
      this.allRecords();
   },
  })
  
  
        var xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {
        var response = this.responseText;
        
        const obj = JSON.parse(response);
        document.getElementById("work1").src=obj[1];
        document.getElementById("work2").src=obj[2];
        document.getElementById("work3").src=obj[3];
        document.getElementById("work4").src=obj[4];
        document.getElementById("work5").src=obj[5];
        document.getElementById("work6").src=obj[6];
        console.log(obj);
      }
    }
    xmlhttp.open("GET","./includes/ajaxcall.php?page=work-image",true);
    xmlhttp.send();
  
    var xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {
        var response = this.responseText;
        const obj = JSON.parse(response);
        document.getElementById("title1").innerHTML=obj[1];
        document.getElementById("title2").innerHTML=obj[2];
        document.getElementById("title3").innerHTML=obj[3];
        document.getElementById("title4").innerHTML=obj[4];
        document.getElementById("title5").innerHTML=obj[5];
        document.getElementById("title6").innerHTML=obj[6];
        console.log(obj);
      }
    }
    xmlhttp.open("GET","./includes/ajaxcall.php?page=work-title",true);
    xmlhttp.send();
  
    var xmlhttp=new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
      if (this.readyState==4 && this.status==200) {
        var response = this.responseText;
        
        const obj = JSON.parse(response);
        document.getElementById("summary1").innerHTML=obj[1];
        document.getElementById("summary2").innerHTML=obj[2];
        document.getElementById("summary3").innerHTML=obj[3];
        document.getElementById("summary4").innerHTML=obj[4];
        document.getElementById("summary5").innerHTML=obj[5];
        document.getElementById("summary6").innerHTML=obj[6];
        console.log(obj);
      }
    }
    xmlhttp.open("GET","./includes/ajaxcall.php?page=work-summary",true);
    xmlhttp.send();