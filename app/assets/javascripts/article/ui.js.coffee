$ ->
  $(document).on 'click', '.login-btn', (e) ->
    e.preventDefault()
    $('a.ajax-popup.btn-login').trigger('click')