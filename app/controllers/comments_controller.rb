class CommentsController < InheritedResources::Base
	before_filter :authenticate_user!, only: [:create, :destroy]
	optional_belongs_to :article
	actions :create,:destroy
	respond_to :js

	def create
	    @comment = end_of_association_chain.new comment_params
	    @comment.user_id = current_user.id
	    create! do |success, failure|
	      success.js{
	      	@comments_count = @comment.commentable.comments_count + 1
	      }
	      failure.js
	  	end
  	end

  	def destroy
    destroy! do |success, failure|
      success.js {
        @target_comments_count = resource.commentable.comments_count
      }
    end
  end
	protected
	def comment_params
		params.require(:comment).permit!
	end
end
