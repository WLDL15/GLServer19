module AlphaEvidencesHelper
    def put_update_user
        if @alpha_evidence.update_user != nil
            content_tag :div, class:"badge badge-primary" do
                "最終更新者:"+@alpha_evidence.update_user
            end
        end
    end
end
