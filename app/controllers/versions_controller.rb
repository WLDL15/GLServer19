class VersionsController < ApplicationController
  before_action :set_version, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:index, :new, :create]

  # GET /versions
  # GET /versions.json
  def index
    @versions = @project.versions
  end

  # GET /versions/1
  # GET /versions/1.json
  def show
    @project = @version.project
  end

  # GET /versions/new
  def new
    @version = @project.versions.new
    if @project.versions.exists?
      @version.start = @project.versions.maximum(:end) + 1
    else
      @version.start = @project.start
    end
  end

  # GET /versions/1/edit
  def edit
  end

  # POST /versions
  # POST /versions.json
  def create
    @version = @project.versions.build(version_params)
    @version.end = @version.start + ((@project.length * @version.length) - 1)

    respond_to do |format|
      if @version.save
        @version.length.times do |index|
          @sprint = @version.sprints.create(no: create_get_sprintno, project_id: @project.id, start: return_start(index), end: return_end(index))
        end
        format.html { redirect_to @version, notice: 'Version was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /versions/1
  # PATCH/PUT /versions/1.json
  def update
    @project = @version.project
    @version.end = params[:version][:start].to_date + (@project.length * params[:version][:length].to_i - 1)
    length = @version.length
    before_date = @version.start
    respond_to do |format|
      if @version.update(version_params)
        update_date(before_date)
        update_length(length)
        format.html { redirect_to @version, notice: 'Version was successfully updated.' }
        format.json { render :show, status: :ok, location: @version }
      else
        format.html { render :edit }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /versions/1
  # DELETE /versions/1.json
  def destroy
    @version.destroy
    respond_to do |format|
      format.html { redirect_to project_sprints_path(@version.project), notice: 'Version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_version
      @version = Version.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def version_params
      params.require(:version).permit(:name, :goal, :start, :end, :level, :project_id, :length)
    end
end
