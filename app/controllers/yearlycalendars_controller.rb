class YearlycalendarsController < ApplicationController
  before_action :set_yearlycalendar, only: [:show, :edit, :update, :destroy]

  # GET /yearlycalendars
  # GET /yearlycalendars.json
  def index
    @yearlycalendars = Yearlycalendar.all
  end

  # GET /yearlycalendars/1
  # GET /yearlycalendars/1.json
  def show
  end

  # GET /yearlycalendars/new
  def new
    @yearlycalendar = Yearlycalendar.new
  end

  # GET /yearlycalendars/1/edit
  def edit
  end

  # POST /yearlycalendars
  # POST /yearlycalendars.json
  def create
    @yearlycalendar = Yearlycalendar.new(yearlycalendar_params)

    respond_to do |format|
      if @yearlycalendar.save
        format.html { redirect_to @yearlycalendar, notice: 'Calendar is successfully created.' }
        format.json { render :show, status: :created, location: @yearlycalendar }
      else
        format.html { render :new }
        format.json { render json: @yearlycalendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yearlycalendars/1
  # PATCH/PUT /yearlycalendars/1.json
  def update
    respond_to do |format|
      if @yearlycalendar.update(yearlycalendar_params)
        format.html { redirect_to @yearlycalendar, notice: 'Calendar is successfully updated.' }
        format.json { render :show, status: :ok, location: @yearlycalendar }
      else
        format.html { render :edit }
        format.json { render json: @yearlycalendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yearlycalendars/1
  # DELETE /yearlycalendars/1.json
  def destroy
    @yearlycalendar.destroy
    respond_to do |format|
      format.html { redirect_to yearlycalendars_url, notice: 'Calendar is successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yearlycalendar
      @yearlycalendar = Yearlycalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yearlycalendar_params
      params.require(:yearlycalendar).permit(:month, :event1, :event2)
    end
end
