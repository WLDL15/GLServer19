module SprintsHelper


	def set_current_sprint_id

		@sprints = Sprint.where(project_id: get_current_project_id)

		if @sprints.count != 0
			session[:current_sprint] = @sprints.last.id

			@sprints.each{|sprint|
				if sprint.start <= Date.today && Date.today <= sprint.end
					session[:current_sprint] = sprint.id
					break			
				end
			}

		else
			session[:current_sprint] = nil
		end
	end

	def get_current_sprint_id
		session[:current_sprint]
	end

	def get_sprintno
		case controller.action_name
		when "new", "create"
			@lastnum = Sprint.where(project_id: @version.project_id).last
			if @lastnum == nil
				@num = 1
			else 
				@num = @lastnum.no
				@num = @num + 1
			end
		else
			# action_name == 'edit' の時
			Sprint.find(params[:id]).no
		end
	end

	def create_get_sprintno
		@lastnum = Sprint.where(project_id: @version.project_id).last
		if @lastnum == nil
			@num = 1
		else
			@num = @lastnum.no
			@num = @num + 1
		end
	end

	def get_project
		case controller.action_name
		when "new", "create"
			params[:project_id]
		else
			Sprint.find(params[:id]).project.id
		end
	end

	def moderate_new_edit_path(version, sprint)
		if controller.action_name == "new"
			version_sprints_path(version)
		else
			sprint_path(sprint)
		end
	end

	def return_start(index)
		@version.start_day + (index * @project.length)
	end

	def return_end(index)
		@version.start_day + ((index + 1) * @project.length - 1)
	end

	def update_length(length)
		if length < params[:version][:length].to_i
			((length+1)..params[:version][:length].to_i).each do |index|
				@version.sprints.create(no: create_get_sprintno, project_id: @project.id, start: return_start(index - 1), end: return_end(index - 1))
			end
		elsif length > params[:version][:length].to_i
			(length - params[:version][:length].to_i).times do |index| 
				@version.sprints.last.destroy
			end
		end 
	end

	def update_date(before_date)
		if before_date != params[:version][:start].to_date
			@version.sprints.each do |sprint|
				sprint.start += params[:version][:start].to_date - before_date
				sprint.end += params[:version][:start].to_date - before_date
				sprint.save
			end
		end
	end
end
