class CategoriesController < ApplicationController
  def sub_categories
    Rails.logger.info params

    sub_categories = Category.where(ancestry: params[:parent_id])
    render json: sub_categories
  end
end
