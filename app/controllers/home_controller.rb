class HomeController < ApplicationController
  def index
  	@featured_articles = Article.featured.limit(5)
  end
  def about

  end
  def life

  end
end
