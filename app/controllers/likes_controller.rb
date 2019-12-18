class LikesController < ApplicationController
    def create
        @comment = AlphaComment.find(params[:alpha_comment_id])
        @like = @comment.likes.new
        @like.user_id = current_user.id
        @comment.like_count += 1

        @user = @comment.user
        @user.add_points(10, "Awarded for some awesome action", "Like")

        @like.save
        @comment.save
    end

    def destroy
        @like = Like.find(params[:id])
        @comment = @like.alpha_comment
        @comment.like_count -= 1

        @user = @comment.user
        @user.subtract_points(10, "Awarded for some awesome action", "Like")

        @comment.save
        @like.destroy
    end

    private
        def like_params
            params.require(:alpha_comment).permit(:user_id, :alpha_comment_id)
        end
end
