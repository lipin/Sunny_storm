class ArticlesController < InheritedResources::Base
	before_filter :authenticate_user!,only:[:new,:edit,:destroy]
	protected
	def article_params
    	params.require(:article).permit!
  	end
end
