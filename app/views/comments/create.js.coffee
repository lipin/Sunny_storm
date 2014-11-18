$('.comment-list').append "<%=j render('comments/comment', comment: @comment, index: 1) %>"
$('textarea').val('')
$('.comment-item[data-id=<%= resource.id %>]').find('span.comment-index').html($('.comment-list').find('li').length + "楼")
$('small#reply-message').html('')