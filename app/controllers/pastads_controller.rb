class PastadsController < ApplicationController
  before_action :set_pastad, only: [:show, :edit, :update, :destroy]

  # GET /pastads
  # GET /pastads.json
  def index
    @pastads = Pastad.all
  end

  # GET /pastads/1
  # GET /pastads/1.json
  def show
  end

  # GET /pastads/new
  def new
    @pastad = Pastad.new
  end

  # GET /pastads/1/edit
  def edit
  end

  # POST /pastads
  # POST /pastads.json
  def create
    @pastad = Pastad.new(pastad_params)

    respond_to do |format|
      if @pastad.save
        format.html { redirect_to @pastad, notice: 'Pastad was successfully created.' }
        format.json { render :show, status: :created, location: @pastad }
      else
        format.html { render :new }
        format.json { render json: @pastad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pastads/1
  # PATCH/PUT /pastads/1.json
  def update
    respond_to do |format|
      if @pastad.update(pastad_params)
        format.html { redirect_to @pastad, notice: 'Pastad was successfully updated.' }
        format.json { render :show, status: :ok, location: @pastad }
      else
        format.html { render :edit }
        format.json { render json: @pastad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pastads/1
  # DELETE /pastads/1.json
  def destroy
    @pastad.destroy
    respond_to do |format|
      format.html { redirect_to pastads_url, notice: 'Pastad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pastad
      @pastad = Pastad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pastad_params
      params.require(:pastad).permit(:name, :date, :image)
    end
end
