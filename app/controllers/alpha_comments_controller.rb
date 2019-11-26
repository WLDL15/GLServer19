class AlphaCommentsController < ApplicationController
    def create
        @alpha_item = AlphaItem.find(params[:alpha_item_id])
        @alpha_evidence = @alpha_item.alpha_evidence
        @alpha_evidence.alpha_comments.create(comment_params)
        redirect_to alpha_item_alpha_evidence_path(params[:alpha_item_id])
    end

    def destroy
        @alpha_comment = AlphaComment.find(params[:id])
        redirect_to alpha_item_alpha_evidence_path(@alpha_comment.alpha_evidence)
        @alpha_comment.destroy
    end

    private
        def comment_params
            params.require(:alpha_comment).permit(:body)
        end
end
