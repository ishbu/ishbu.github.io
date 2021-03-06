((window, document) ->
  headline = document.getElementById('headline')
  cursor = document.getElementById('cursor')
  linkItems = document.getElementsByClassName('link-item')

  for item in linkItems
    item.onmouseover = (e) ->
      return unless e.target?.className == 'link-item'
      return unless href = e.target.getElementsByTagName('a')?[0]?.href
      headline.innerHTML = href
      cursor.classList.remove('hidden')
      cursor.classList.add('blink')

    item.onmouseleave = (e) ->
      headline.innerHTML = 'Internet Enthusiast'
      cursor.classList.add('hidden')
      cursor.classList.remove('blink')

    continue
  return
)(this, this.document)


