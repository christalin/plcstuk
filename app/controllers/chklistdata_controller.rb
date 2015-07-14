class ChklistdataController < ApplicationController
  before_action :set_chklistdatum, only: [:show, :edit, :update, :destroy]

  # GET /chklistdata
  # GET /chklistdata.json
  def index
    @chklistdata = Chklistdatum.all
  end

  # GET /chklistdata/1
  # GET /chklistdata/1.json
  def show
  end

  # GET /chklistdata/new
  def new
    @chklistdatum = Chklistdatum.new
  end

  # GET /chklistdata/1/edit
  def edit
  end

  # POST /chklistdata
  # POST /chklistdata.json
  def create
    @chklistdatum = Chklistdatum.new(chklistdatum_params)

    respond_to do |format|
      if @chklistdatum.save
        format.html { redirect_to @chklistdatum, notice: 'Chklistdatum was successfully created.' }
        format.json { render :show, status: :created, location: @chklistdatum }
      else
        format.html { render :new }
        format.json { render json: @chklistdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chklistdata/1
  # PATCH/PUT /chklistdata/1.json
  def update
    respond_to do |format|
      if @chklistdatum.update(chklistdatum_params)
        format.html { redirect_to @chklistdatum, notice: 'Chklistdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @chklistdatum }
      else
        format.html { render :edit }
        format.json { render json: @chklistdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chklistdata/1
  # DELETE /chklistdata/1.json
  def destroy
    @chklistdatum.destroy
    respond_to do |format|
      format.html { redirect_to chklistdata_url, notice: 'Chklistdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chklistdatum
      @chklistdatum = Chklistdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chklistdatum_params
      params.require(:chklistdatum).permit(:evntid, :chklstid, :assignedto, :completed, :comments)
    end
end
