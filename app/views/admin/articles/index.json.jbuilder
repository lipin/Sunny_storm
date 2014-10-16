json.array!(@admin_articles) do |admin_article|
  json.extract! admin_article, :id, :title, :content
  json.url admin_article_url(admin_article, format: :json)
end
