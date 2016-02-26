class CaleventsController < ApplicationController
  before_action :set_calevent, only: [:show, :edit, :update, :destroy]

  # GET /calevents
  # GET /calevents.jso
  def index
    if params[:combination_id] == "0"
      @calevents = Calevent.all
    else
      @calevents = Calevent.where(combination_id: params[:combination_id].to_i)
    end
  end


  # GET /calevents/1
  # GET /calevents/1.json
  def show
  end

  # GET /calevents/new
  def new
    @calevent = Calevent.new
  end

  # GET /calevents/1/edit
  def edit
  end

  # POST /calevents
  # POST /calevents.json
  def create
    @calevent = Calevent.new(calevent_params)
    respond_to do |format|
      if @calevent.save
        format.html { redirect_to @calevent, notice: 'Calevent was successfully created.' }
        format.json { render :show, status: :created, location: @calevent }
      else
        format.html { render :new }
        format.json { render json: @calevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calevents/1
  # PATCH/PUT /calevents/1.json
  def update
    respond_to do |format|
      if @calevent.update(calevent_params)
        format.html { redirect_to @calevent, notice: 'Calevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @calevent }
      else
        format.html { render :edit }
        format.json { render json: @calevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calevents/1
  # DELETE /calevents/1.json
  def destroy
    @calevent.destroy
    respond_to do |format|
      format.html { redirect_to calevents_url, notice: 'Calevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calevent
      @calevent = Calevent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calevent_params
      params.require(:calevent).permit(:title, :start, :end, :color, :allDay, :combination_id)
    end
end
