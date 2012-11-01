current_href = location.href
selector = "#ires"

location.href = "https://www.google.com.hk" if "http://www.google.cn/" == current_href

filter = ->
  box = document.getElementById "ires"
  box.addEventListener "mouseover", ->
    that = event.target
    if that.tagName == "A" and that.onmousedown
      that.removeAttribute 'onmousedown'
      console.info "remove #{that.href}"
      return
  return

filter()