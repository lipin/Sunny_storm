# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  # select category and change subcategory
  $(document).on "change", "select.category_select", (event) ->
    self = undefined
    $targetDom = undefined
    self = $(event.currentTarget)
    $targetDom = $(event.currentTarget).parents('div').find('select.category_target')
    if $targetDom.size() > 0
      $.getJSON "/categories/sub_categories",
        parent_id: self.val()
      , (data) ->
        options = []
        $("option[value!=\"\"]", $targetDom).remove()
        $.each data, (index, value) ->
          options.push "<option value='" + value.id + "'>" + value.name + "</option>"
          return

        $targetDom.append options.join("")

        $targetDom.prev().select2('destroy')
        $targetDom.select2()

        return
    return