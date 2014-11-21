# Append 'root.' to anything you want to make global
root = exports ? this

# Fancybox options settings
fancyboxOptions =
  autoDimensions: false
  width: 730
  height: 500
  fitToView: true
  autoSize: true
  centerOnScroll: true
  padding: 10
  closeClick: false
  arrows:false
  openEffect: 'none'
  closeEffect: 'none'
  type: 'ajax'
  closeBtn: true
  arrows: false
  helpers:
    title: null
    overlay:
      closeClick: false
      opacity: 0.6
      locked: false
  beforeClose: (e) ->
    $('.select2-drop-active').hide()
  # afterClose: (e)->
  #   url = $(e.content).data('after-close-url')
  #   if url
  #     window.location.href = url


$ ->
  $('.ajax-popup').fancybox fancyboxOptions
  $('.fancybox').fancybox().resize

  $(document).on 'click', 'a#btn-fancy-close', (e) ->
    e.preventDefault()
    $.fancybox.close()
    $('.dialog-bg').show()
