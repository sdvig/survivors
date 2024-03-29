class SurvivorsController < ApplicationController
  before_action :set_survivor, only: [:show, :edit, :update, :destroy]

  # GET /survivors
  # GET /survivors.json
  def index
    @survivors = Survivor.all
  end

  # GET /survivors/1
  # GET /survivors/1.json
  def show
  end

  # GET /survivors/new
  def new
    @survivor = Survivor.new
    @cities = City.all
  end

  # GET /survivors/1/edit
  def edit
    @cities = City.all
  end

  # POST /survivors
  # POST /survivors.json
  def create
    @survivor = Survivor.new(survivor_params)

    respond_to do |format|
      if @survivor.save
        format.html { redirect_to @survivor, notice: 'Survivor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @survivor }
      else
        format.html { render action: 'new' }
        format.json { render json: @survivor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survivors/1
  # PATCH/PUT /survivors/1.json
  def update
    respond_to do |format|
      if @survivor.update(survivor_params)
        format.html { redirect_to @survivor, notice: 'Survivor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @survivor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survivors/1
  # DELETE /survivors/1.json
  def destroy
    @survivor.destroy
    respond_to do |format|
      format.html { redirect_to survivors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survivor
      @survivor = Survivor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survivor_params
      params.require(:survivor).permit(:name, :picture, :city_id, :excerpt, :story)
    end
end
