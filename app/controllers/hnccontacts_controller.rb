class HnccontactsController < ApplicationController
  before_action :set_hnccontact, only: [:show, :edit, :update, :destroy]

  # GET /hnccontacts
  # GET /hnccontacts.json
  def index
    @hnccontacts = Hnccontact.all
  end

  # GET /hnccontacts/1
  # GET /hnccontacts/1.json
  def show
  end

  # GET /hnccontacts/new
  def new
    @hnccontact = Hnccontact.new
  end

  # GET /hnccontacts/1/edit
  def edit
  end

  # POST /hnccontacts
  # POST /hnccontacts.json
  def create
    @hnccontact = Hnccontact.new(hnccontact_params)

    respond_to do |format|
      if @hnccontact.save
        format.html { redirect_to @hnccontact, notice: 'Contact is successfully created.' }
        format.json { render :show, status: :created, location: @hnccontact }
      else
        format.html { render :new }
        format.json { render json: @hnccontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hnccontacts/1
  # PATCH/PUT /hnccontacts/1.json
  def update
    respond_to do |format|
      if @hnccontact.update(hnccontact_params)
        format.html { redirect_to @hnccontact, notice: 'Contact is successfully updated.' }
        format.json { render :show, status: :ok, location: @hnccontact }
      else
        format.html { render :edit }
        format.json { render json: @hnccontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hnccontacts/1
  # DELETE /hnccontacts/1.json
  def destroy
    @hnccontact.destroy
    respond_to do |format|
      format.html { redirect_to hnccontacts_url, notice: 'Contact is successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hnccontact
      @hnccontact = Hnccontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hnccontact_params
      params.require(:hnccontact).permit(:department, :name, :phone, :email)
    end
end
