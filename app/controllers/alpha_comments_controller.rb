class AlphaCommentsController < ApplicationController
    def create
        @alpha_item = AlphaItem.find(params[:alpha_item_id])
        @alpha_evidence = @alpha_item.alpha_evidence
        @alpha_comment = @alpha_evidence.alpha_comments.new(comment_params)
        @alpha_comment.user_id = current_user.id
        if @alpha_comment.save
            render partial: "alpha_evidences/form"
        end
    end

    def destroy
        @alpha_comment = AlphaComment.find(params[:id])
        @alpha_evidence = @alpha_comment.alpha_evidence
        @alpha_item = @alpha_evidence.alpha_item
        @alpha_comment.destroy
        render partial: "alpha_evidences/form"
    end

    private
        def comment_params
            params.require(:alpha_comment).permit(:body, :user_id)
        end
end
