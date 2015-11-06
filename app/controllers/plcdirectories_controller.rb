class PlcdirectoriesController < ApplicationController
  before_action :set_plcdirectory, only: [:show, :edit, :update, :destroy]

  # GET /plcdirectories
  # GET /plcdirectories.json
  def index
    @plcdirectories = Plcdirectory.all
  end

  # GET /plcdirectories/1
  # GET /plcdirectories/1.json
  def show
  end

  # GET /plcdirectories/new
  def new
    @plcdirectory = Plcdirectory.new
  end

  # GET /plcdirectories/1/edit
  def edit
  end

  # POST /plcdirectories
  # POST /plcdirectories.json
  def create
    @plcdirectory = Plcdirectory.new(plcdirectory_params)

    respond_to do |format|
      if @plcdirectory.save
        format.html { redirect_to @plcdirectory, notice: 'Member is successfully created.' }
        format.json { render :show, status: :created, location: @plcdirectory }
      else
        format.html { render :new }
        format.json { render json: @plcdirectory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plcdirectories/1
  # PATCH/PUT /plcdirectories/1.json
  def update
    respond_to do |format|
      if @plcdirectory.update(plcdirectory_params)
        format.html { redirect_to @plcdirectory, notice: 'Member is successfully updated.' }
        format.json { render :show, status: :ok, location: @plcdirectory }
      else
        format.html { render :edit }
        format.json { render json: @plcdirectory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plcdirectories/1
  # DELETE /plcdirectories/1.json
  def destroy
    @plcdirectory.destroy
    respond_to do |format|
      format.html { redirect_to plcdirectories_url, notice: 'Member is successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plcdirectory
      @plcdirectory = Plcdirectory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plcdirectory_params
      params.require(:plcdirectory).permit(:name, :phone, :email, :term)
    end
end
