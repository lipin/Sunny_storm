# Append 'root.' to anything you want to make global
root = exports ? this

# Fancybox options settings
fancyboxOptions =
  # width: 700
  # height: 600
  fitToView: true
  autoSize: true
  # padding: 0
  closeClick: false
  arrows:false
  # openEffect: 'none'
  # closeEffect: 'none'
  type: 'ajax'
  closeBtn: true
  arrows: false
  helpers:
    title: null
    overlay:
      closeClick: false
      opacity: 0.6
      locked: false
  # beforeClose: (e) ->
  #  $('.select2-drop-active').hide()
  afterClose: ->
      location.reload()
      return


$ ->
  $('.ajax-popup').fancybox fancyboxOptions
  $('.fancybox').fancybox()

  $(document).on 'click', 'a#btn-fancy-close', (e) ->
    e.preventDefault()
    $.fancybox.close()
    $('.dialog-bg').show()
