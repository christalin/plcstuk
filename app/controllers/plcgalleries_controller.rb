class PlcgalleriesController < ApplicationController
  before_action :set_plcgallery, only: [:show, :edit, :update, :destroy]

  # GET /plcgalleries
  # GET /plcgalleries.json
  def index
    @plcgalleries = Plcgallery.all
  end

  # GET /plcgalleries/1
  # GET /plcgalleries/1.json
  def show
  end

  # GET /plcgalleries/new
  def new
    @plcgallery = Plcgallery.new
  end

  # GET /plcgalleries/1/edit
  def edit
  end

  # POST /plcgalleries
  # POST /plcgalleries.json
  def create
    @plcgallery = Plcgallery.new(plcgallery_params)

    respond_to do |format|
      if @plcgallery.save
        format.html { redirect_to @plcgallery, notice: 'Plcgallery was successfully created.' }
        format.json { render :show, status: :created, location: @plcgallery }
      else
        format.html { render :new }
        format.json { render json: @plcgallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plcgalleries/1
  # PATCH/PUT /plcgalleries/1.json
  def update
    respond_to do |format|
      if @plcgallery.update(plcgallery_params)
        format.html { redirect_to @plcgallery, notice: 'Plcgallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @plcgallery }
      else
        format.html { render :edit }
        format.json { render json: @plcgallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plcgalleries/1
  # DELETE /plcgalleries/1.json
  def destroy
    @plcgallery.destroy
    respond_to do |format|
      format.html { redirect_to plcgalleries_url, notice: 'Plcgallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plcgallery
      @plcgallery = Plcgallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plcgallery_params
      params.require(:plcgallery).permit(:name, :dropbox_uid, :email, :dropbox_token)
    end
end
