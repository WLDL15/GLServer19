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

    @version_list = [0]
    @versions = @project.versions.where("start_day <= ?", Date.today).where("end_day >= ?", Date.today)
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
      if @alpha_evidence = @alpha_state.alpha_evidences.where(completed: false).first
        @stage = 0
      elsif @alpha_evidence = @alpha_state.alpha_evidences.where(completed: true, reviewed: false).first
        @stage = 1
      else 
        @alpha_evidence = @alpha_state.alpha_evidences.where(reviewed: true).first
        @stage = 2
      end
      @alpha_item = @alpha_evidence.alpha_item
    end
  end

end
