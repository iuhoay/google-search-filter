  current_href = location.href
  selector = "#ires a.l, #ires .osl a"

  location.href = "https://www.google.com.hk" if "http://www.google.cn/" == current_href

  filter = (timed) ->
    links = document.querySelectorAll selector
    length = links.length
    console.info "find #{length} links"

    if length > 0
      for link in links
        link.removeAttribute "onmousedown" 
        console.info "#{_i + 1}/#{length}:#{link.href}"

      console.info "OVER"
      window.clearInterval timed if timed

    return

  if current_href.indexOf("/search?") > 0
    filter()
  else
    timeout = window.setInterval filter(timeout), 999