class LikesController < ApplicationController
    def create
        @comment = AlphaComment.find(params[:alpha_comment_id])
        @like = @comment.likes.new
        @like.user_id = current_user.id
        @like.save
    end

    def destroy
        @like = Like.find(params[:id])
        @comment = @like.alpha_comment
        @like.destroy
    end

    private
        def like_params
            params.require(:alpha_comment).permit(:user_id, :alpha_comment_id)
        end
end
