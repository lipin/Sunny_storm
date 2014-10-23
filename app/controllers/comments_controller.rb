class CommentsController < InheritedResources::Base
	before_filter :authenticate_user!, only: [:create, :destroy]
	optional_belongs_to :article
	def create

    @comment = end_of_association_chain.new comment_params
    @comment.user_id = current_user.id

    create!
  end

	protected
	def comment_params
		params.require(:comment).permit!
	end
end
