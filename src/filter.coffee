location.href = "https://www.google.com.hk" if "http://www.google.cn/" == location.href

filter = ->
  box = document.getElementById "rso"
  if box
    links = box.querySelectorAll ".r a[onmousedown]"
    for link in links
      link.removeAttribute 'onmousedown'
      console.info "#{_i + 1}/#{_len}:#{link.href}"
      link.onmousedown = (e) ->
        this.href = this.attributes["data-href"].value
  return

# 不知道有个 DOMNodeInserted 之前干什么去了
document.addEventListener "DOMNodeInserted", filter
