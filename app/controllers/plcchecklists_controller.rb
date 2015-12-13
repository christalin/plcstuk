class PlcchecklistsController < ApplicationController
  before_action :set_plcchecklist, only: [:show, :edit, :update, :destroy]

  # GET /plcchecklists
  # GET /plcchecklists.json
  def index
    @plcchecklists = Plcchecklist.all
  end

  # GET /plcchecklists/1
  # GET /plcchecklists/1.json
  def show
  end

  # GET /plcchecklists/new
  def new
    @plcchecklist = Plcchecklist.new
  end

  # GET /plcchecklists/1/edit
  def edit
  end

  # POST /plcchecklists
  # POST /plcchecklists.json
  def create
    @plcchecklist = Plcchecklist.new(plcchecklist_params)

    respond_to do |format|
      if @plcchecklist.save
        format.html { redirect_to @plcchecklist, notice: 'Plcchecklist was successfully created.' }
        format.json { render :show, status: :created, location: @plcchecklist }
      else
        format.html { render :new }
        format.json { render json: @plcchecklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plcchecklists/1
  # PATCH/PUT /plcchecklists/1.json
  def update
    respond_to do |format|
      if @plcchecklist.update(plcchecklist_params)
        format.html { redirect_to @plcchecklist, notice: 'Plcchecklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @plcchecklist }
      else
        format.html { render :edit }
        format.json { render json: @plcchecklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plcchecklists/1
  # DELETE /plcchecklists/1.json
  def destroy
    @plcchecklist.destroy
    respond_to do |format|
      format.html { redirect_to plcchecklists_url, notice: 'Plcchecklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plcchecklist
      @plcchecklist = Plcchecklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plcchecklist_params
      params.require(:plcchecklist).permit(:name, :attachment)
    end
end
