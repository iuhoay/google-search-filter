;(function() {
  var current_href = location.href,
      selector = "#ires a.l, #ires .osl a";

  // CN 直接 跳转到 HK
  "http://www.google.cn/" === current_href && (location.href = "http://www.google.com.hk");

  if (current_href.indexOf("/search?") > 0) {
    filter();
  } else {
    var timeout = window.setInterval(function() {
      filter(timeout);
    }, 999);
  }

  function filter(timed) {
    var links = document.querySelectorAll(selector),
        length = links.length;
    console.info("find " + length + " links");
    if (length > 0) {
      for (var i = 0; i < length; i++) {
        var link = links[i];
        link.removeAttribute("onmousedown");
        console.info((i + 1) + "/" + length + ":" + link.innerText + ":" + link.href);
      }
    }
    console.info("OVER");
    if (timed) window.clearInterval(timed);
  }
})();
