class AlphaCommentsController < ApplicationController
    before_action :set_version_list, only: [:create, :destroy]
    def create
        @alpha_item = AlphaItem.find(params[:alpha_item_id])
        @alpha_evidence = @alpha_item.alpha_evidence
        @alpha_comment = @alpha_evidence.alpha_comments.new(comment_params)
        @alpha_comment.user_id = current_user.id
        @alpha_commenter = @alpha_comment.user
        @alpha_commenter.add_points(3, "Awarded for some awesome action", "Comment")

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

        def set_version_list
            @version_list = [0]
            @versions = current_project.versions.where('start <= ?', Date.today).where('end >= ?', Date.today)
            @versions.each do |version|
                (version.level + 1).times do |count|
                    @version_list.push(count)
                end
            end
            @version_list.uniq
        end
end
