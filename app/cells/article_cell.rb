class ArticleCell < Cell::Rails
  include Devise::Controllers::Helpers
  helper_method :current_user
  def article_featured
  	@article_featured = Article.featured.limit(8)
  	render
  end
  def article_latest
  	@article_latest = Article.order('created_at DESC').limit(8)
  	render
  end
end
