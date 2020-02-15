class SprintsController < ApplicationController
  before_action :set_sprint, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:index, :index_by_project]
  before_action :set_version, only: [:new, :create]

  # GET /projects/:project_id/sprints
  # GET /projects/:project_id/sprints.json
  def index
    @sprints = @project.sprints
  end

  # GET /sprints/1
  # GET /sprints/1.json
  def show
    @project = @sprint.project
  end

  # GET /projects/:project_id/sprints/new
  # GET /projects/:project_id/sprints/new.json
  def new
    @sprint = @version.sprints.new
    if @version.sprints.exists?
      @sprint.start = @version.sprints.maximum(:end) + 1
    else
      @sprint.start = @version.start_day
    end
  end

  # GET /sprints/1/edit
  def edit
    @version = @sprint.version
  end

  def index_by_project
    @versions = @project.versions.order(:id)
    @sprints = @project.sprints
    if @versions.exists?
      @check_version = @project.start - 1
    end
    render action: :index
  end

  # POST /projects/:project_id/sprints
  # POST /projects/:project_id/sprints.json
  def create
    @sprint = @version.sprints.build(sprint_params)
    @sprint.project_id = @version.project_id

    respond_to do |format|
      if @sprint.save
        format.html { redirect_to sprint_path(@sprint), notice: 'Sprint was successfully created.' }
        format.json { render :show, status: :created, location: @sprint }
      else
        format.html { render :new }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprints/1
  # PATCH/PUT /sprints/1.json
  def update
    @project = @sprint.project
    respond_to do |format|
      if @sprint.update(sprint_params)
        format.html { redirect_to sprint_path(@sprint), notice: 'Sprint was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprint }
      else
        format.html { render :edit }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprints/1
  # DELETE /sprints/1.json
  def destroy
    @sprint.destroy
    respond_to do |format|
      format.html { redirect_to sprints_path(get_current_project_id), notice: 'Sprint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_sprint
      @sprint = Sprint.find(params[:id])
    end

    def set_version
      @version = Version.find(params[:version_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_params
      params.require(:sprint).permit(:no, :start, :end, :description, :project_id)
    end
end
