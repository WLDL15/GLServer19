module AlphaAlphasHelper
    def get_update(alpha_state)
        if alpha_state.update_evidence != nil
            content_tag :div, class:"badge badge-pill badge-primary mt-2 mb-1" do
                print_date2(alpha_state.update_evidence)
            end
        else
            content_tag :div, class:"badge badge-pill badge-info mt-2 mb-1" do
                "未着手"
            end
        end
    end
end
