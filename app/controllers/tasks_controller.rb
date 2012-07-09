class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    @column = Column.find(params[:column_id])
    @tasks = @column.tasks.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @board = Board.find(params[:board_id])
    @story = Story.find(params[:story_id])
    if defined? @story.title
        @story = Story.find(params[:story_id])
        @task =  @story.tasks.new

        respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @task }
        end

    else 
        # @story = Story.new
        @task =  @story.tasks.new

        respond_to do |format_withStories|
          format_withStories.html # new.html.erb
          format.json { render json: @task }
        end
    end

  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create 
      @story = Story.find(params[:story_id])
      @task = @story.tasks.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to [@story.board.project, @story.board], notice: 'Task was successfully created.' }
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
    @task =  Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to [@task.story.board.project, @task.story.board], notice: 'Task was successfully updated.' }
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
      format.html { redirect_to [@task.story.board.project, @task.story.board] }
      format.json { head :no_content }
    end
  end

  # MOVEUP /tasks/1
  # MOVEUP /tasks/1.json
  def moveup
    @task = Task.find(params[:id])
    @task.weight += 1
    @task.save

    respond_to do |format|
      format.html { redirect_to [@task.column.board.project, @task.column.board]}
      format.json { head :no_content }
    end
  end

  # MOVEDOWN /tasks/1
  # MOVEDOWN /tasks/1.json
  def movedown
    @task = Task.find(params[:id])
    @task.weight -= 1
    @task.save

    respond_to do |format|
      format.html { redirect_to [@task.column.board.project, @task.column.board] }
      format.json { head :no_content }
    end
  end
end
