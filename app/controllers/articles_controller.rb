class ArticlesController < BaseController

	before_filter :authenticate_user!, except: [ :show, :index ]
	before_action :ensure_owner, only: [ :update, :destroy, :edit ]

	def create
		@article = resource.articles.build article_params
		create! { collection_path }
	end

	def update
		if resource.update_attributes article_params
			redirect_to resource_path(resource)
		else
			render :edit
		end
	end

	protected
	def article_params
    	params.require(:article).permit!
  end

  def ensure_owner
    unless resource.user == current_user
      redirect_to articles_path, error: "you not own this"
    end
  end
end
