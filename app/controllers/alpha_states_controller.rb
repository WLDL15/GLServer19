class AlphaStatesController < ApplicationController

  # GET /alpha_states
  # GET /alpha_states.json
  def index
    @alpha_alpha = AlphaAlpha.find(params[:alpha_alpha_id])
    @alpha_states = @alpha_alpha.alpha_states
    @project = @alpha_alpha.alpha_framework.project
  end

  # GET /alpha_states/1
  # GET /alpha_states/1.json
  def show
    @alpha_state = AlphaState.find(params[:id])
    @project = @alpha_state.alpha_alpha.alpha_framework.project

    @version_list = []
    @versions = @project.versions.where('start <= ?', Date.today).where('end >= ?', Date.today)
    @versions.each do |version|
      (version.level + 1).times do |count|
        @version_list.push(count)
      end
    end
    @version_list.uniq

    @alpha_alpha = @alpha_state.alpha_alpha
    if params[:key]
      @alpha_item = @alpha_state.alpha_items.find(params[:key])
      @alpha_evidence = @alpha_item.alpha_evidence
      render partial: "alpha_evidences/form"
    else
      @alpha_evidence = @alpha_state.alpha_evidences.where(completed: false).first
      @alpha_item = @alpha_evidence.alpha_item
    end
  end

end
