class PlcmanualsController < ApplicationController
  before_action :set_plcmanual, only: [:show, :edit, :update, :destroy]

  # GET /plcmanuals
  # GET /plcmanuals.json
  def index
    @plcmanuals = Plcmanual.all
  end

  # GET /plcmanuals/1
  # GET /plcmanuals/1.json
  def show
  end

  # GET /plcmanuals/new
  def new
    @plcmanual = Plcmanual.new
  end

  # GET /plcmanuals/1/edit
  def edit
  end

  # POST /plcmanuals
  # POST /plcmanuals.json
  def create
    @plcmanual = Plcmanual.new(plcmanual_params)

    respond_to do |format|
      if @plcmanual.save
        format.html { redirect_to @plcmanual, notice: 'Plcmanual was successfully created.' }
        format.json { render :show, status: :created, location: @plcmanual }
      else
        format.html { render :new }
        format.json { render json: @plcmanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plcmanuals/1
  # PATCH/PUT /plcmanuals/1.json
  def update
    respond_to do |format|
      if @plcmanual.update(plcmanual_params)
        format.html { redirect_to @plcmanual, notice: 'Plcmanual was successfully updated.' }
        format.json { render :show, status: :ok, location: @plcmanual }
      else
        format.html { render :edit }
        format.json { render json: @plcmanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plcmanuals/1
  # DELETE /plcmanuals/1.json
  def destroy
    @plcmanual.destroy
    respond_to do |format|
      format.html { redirect_to plcmanuals_url, notice: 'Plcmanual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plcmanual
      @plcmanual = Plcmanual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plcmanual_params
      params.require(:plcmanual).permit(:name, :attachment)
    end
end
