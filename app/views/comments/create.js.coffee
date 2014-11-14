$('.comment-list').append "<%=j render('comments/comment', comment: @comment, index: 1) %>"
$('textarea').val('')
$('.comment-item[data-id=<%= resource.id %>]').find('span.comment-index').html($('.comment-list').find('li').length + "楼")
$('small#reply-message').html('')

$('.comment-list-total h3 .comments-count').text("<%= @comments_count %>")
$('.comments.fl span').text("<%= @comments_count %>")
