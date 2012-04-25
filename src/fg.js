console.info("fg worked. http://charsky.github.com");
// if (/g.cn|google.cn/.test(location.href)) location.href="http://www.google.com.hk";
var timeout = window.setInterval(function() {
  var ires = document.getElementById("ires");
  if (ires) {
    var result_A = ires.getElementsByTagName("a");
    if (result_A){
      for (var i = 0; i <= result_A.length; i++) {
        var tmp_A = result_A[i];
        if (tmp_A && tmp_A.className && tmp_A.className.indexOf("l") >= 0) {
          tmp_A.removeAttribute("onmousedown");
        }
      };
    }
  }
}, 999);
