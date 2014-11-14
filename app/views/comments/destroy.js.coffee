<% if resource.errors.empty? %>
  $('li[data-id="<%= resource.id %>"]').hide('400').remove()
<%- end %>
