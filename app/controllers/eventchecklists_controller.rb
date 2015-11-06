class EventchecklistsController < ApplicationController
  before_action :set_eventchecklist, only: [:show, :edit, :update, :destroy]

  # GET /eventchecklists
  # GET /eventchecklists.json
  def index
    @eventchecklists = Eventchecklist.all
  end

  # GET /eventchecklists/1
  # GET /eventchecklists/1.json
  def show
  end

  # GET /eventchecklists/new
  def new
    @eventchecklist = Eventchecklist.new
  end

  # GET /eventchecklists/1/edit
  def edit
  end

  # POST /eventchecklists
  # POST /eventchecklists.json
  def create
    @eventchecklist = Eventchecklist.new(eventchecklist_params)

    respond_to do |format|
      if @eventchecklist.save
        format.html { redirect_to @eventchecklist, notice: 'Event is successfully created.' }
        format.json { render :show, status: :created, location: @eventchecklist }
      else
        format.html { render :new }
        format.json { render json: @eventchecklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventchecklists/1
  # PATCH/PUT /eventchecklists/1.json
  def update
    respond_to do |format|
      if @eventchecklist.update(eventchecklist_params)
        format.html { redirect_to @eventchecklist, notice: 'Event is successfully updated.' }
        format.json { render :show, status: :ok, location: @eventchecklist }
      else
        format.html { render :edit }
        format.json { render json: @eventchecklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventchecklists/1
  # DELETE /eventchecklists/1.json
  def destroy
    @eventchecklist.destroy
    respond_to do |format|
      format.html { redirect_to eventchecklists_url, notice: 'Event is successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventchecklist
      @eventchecklist = Eventchecklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventchecklist_params
      params.require(:eventchecklist).permit(:eventid, :checklistid, :completed, :comments)
    end
end
