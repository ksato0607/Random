<html>
<script>
/*
Writing an example AJAX function
*/
function loadDoc(){
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function(){
    if(this.readyState == 4 && this.status ==200){
      //Statement comes here
    }
  };
  xhttp.open("GET","fileName.txt", true);
  xhttp.send();
}

</script>
</html>
