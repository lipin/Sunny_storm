class Admin::ArticlesController < Admin::BaseController
	layout 'admin'
	def create
    @article = end_of_association_chain.new article_params
    @article.user_id = 1
    create! { collection_path }
  end
  def update
    if resource.update_attributes article_params
      redirect_to resource_path
    else
      render :edit
    end
  end

	protected
	def article_params
    params.require(:article).permit!
  end
end
