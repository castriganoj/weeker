class GoalsController < ApplicationController
  before_action  only: [:show, :edit, :update, :destroy]

# goes before only :set_goal,

  # GET /goals
  # GET /goals.json
  def index
		
    @list = List.find(params[:list_id])
    @goals = @list.goals.paginate(page: params[:page], per_page: 5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @list }
    end
  end

  # GET /goals/1
  # GET /goals/1.json
  def show

    @list = List.find(params[:list_id])
    @goal = @list.goals.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @list }
    end
  end

  # GET /goals/new
  def new
    @list = List.find(params[:list_id])
    @goal = @list.goals.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @goal }
    end
  end

  # GET /goals/1/edit
  def edit
		@list = List.find(params[:list_id])
		@goal = @list.goals.find(params[:id])
  end

  # POST /goals
  # POST /goals.json
  def create
    @list = List.find(params[:list_id])
    @goal = @list.goals.build(params[:goal])
    
    respond_to do |format|
      if @goal.save
        format.html { redirect_to list_goals_path(@list), notice: 'goal item was successfully created.' }
        format.json { render json: @list, status: :created, location: @list }
      else
        format.html { render action: "new" }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    @list = List.find(params[:list_id])
    @goal = @list.goals.find(params[:id])

    respond_to do |format|
      if @goal.update_attributes(params[:goal])
        format.html { redirect_to list_goal_url(@list, @goal), notice: 'goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy

    respond_to do |format|
      format.html { redirect_to list_goals_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:title, :description, :completed)
    end
end
