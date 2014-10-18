class Admin::CategoriesController < Admin::BaseController
	layout 'admin'
  def create
    @category = end_of_association_chain.new category_params
    if @category.save
      redirect_to collection_path
    else
      render 'index'
    end
  end
	protected
	def category_params
    params.require(:category).permit!
  end
  def collection
    @categories ||= Category.roots
  end
end
