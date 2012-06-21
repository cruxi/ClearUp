class StoriesController < ApplicationController
  # GET /stories
  # GET /stories.json
  def index
    @column = Column.find(params[:column_id])
    @stories = @column.stories.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stories }
    end
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @column = Column.find(params[:column_id])
    @story = @column.stories.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story }
    end
  end

  # GET /stories/new
  # GET /stories/new.json
  def new
    @column = Column.find(params[:column_id])
    @story = @column.stories.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story }
    end
  end

  # GET /stories/1/edit
  def edit
    @story = Story.find(params[:id])
  end

  # POST /stories
  # POST /stories.json
  def create
    @column = Column.find(params[:column_id])
    @story = @column.stories.new(params[:story])

    respond_to do |format|
      if @story.save
        format.html { redirect_to [@column, @story], notice: 'Story was successfully created.' }
        format.json { render json: @story, status: :created, location: @story }
      else
        format.html { render action: "new" }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stories/1
  # PUT /stories/1.json
  def update
    @story = Story.find(params[:id])

    respond_to do |format|
      if @story.update_attributes(params[:story])
        format.html { redirect_to stories_url, notice: 'Story was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story = Story.find(params[:id])
    @story.destroy

    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  # MOVEUP /stories/1
  # MOVEUP /stories/1.json
  def moveup
    @story = Story.find(params[:id])
    @story.priority += 1
    @story.save

    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end

  # MOVEDOWN /stories/1
  # MOVEDOWN /stories/1.json
  def movedown
    @story = Story.find(params[:id])
    @story.priority -= 1
    @story.save

    respond_to do |format|
      format.html { redirect_to stories_url }
      format.json { head :no_content }
    end
  end
end
