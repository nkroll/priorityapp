class TasksController < FiltersController
  # GET /tasks
  def index
    @tasks = Task.where(:user_id => session[:user_id])
    @fires = @tasks.where(:quadrant_id => 1) 
    @production = @tasks.where(:quadrant_id => 2) 
    @distractions = @tasks.where(:quadrant_id => 3) 
    @task = Task.new
    @task.user = User.find_by_id(session[:user_id])
    
  end
  
  # GET /tasks/1
  def show
    @task = Task.find(params[:id])    
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new
    @task.user = User.find_by_id(session[:user_id])
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end
  
  def taskmodal
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
     params[:task][:user_id] = session[:user_id]
     @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_path, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end
end
