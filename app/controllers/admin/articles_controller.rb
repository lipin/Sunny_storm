class Admin::ArticlesController < Admin::BaseController
  has_scope :by_state
	def create
    @article = end_of_association_chain.new article_params
    @article.user_id = 1
    create! { collection_path }
  end
  def update
    if params.key?(:event)
      resource.send("#{params[:event]}!")
      redirect_to :back
    else
      if resource.update_attributes article_params
        redirect_to resource_path
      else
        render :edit
      end
    end
  end

	protected
	def article_params
    params.require(:article).permit!
  end
end
