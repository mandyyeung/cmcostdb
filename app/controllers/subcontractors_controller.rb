class SubcontractorsController < ApplicationController
  before_action :set_subcontractor, only: [:show, :edit, :update, :destroy]

  # GET /subcontractors
  # GET /subcontractors.json
  def index
    @subcontractors = Subcontractor.all
    respond_to do |format|
      format.html
      format.csv { send_data @subcontractors.to_csv }
      format.xls { send_data @subcontractors.to_csv(col_sep: "\t") }
    end
  end

  # GET /subcontractors/1
  # GET /subcontractors/1.json
  def show
  end

  # GET /subcontractors/new
  def new
    @subcontractor = Subcontractor.new
  end

  # GET /subcontractors/1/edit
  def edit
  end

  # POST /subcontractors
  # POST /subcontractors.json
  def create
    @subcontractor = Subcontractor.new(subcontractor_params)

    respond_to do |format|
      if @subcontractor.save
        format.html { redirect_to subcontractors_path, notice: 'Subcontractor was successfully created.' }
        format.json { render :show, status: :created, location: @subcontractor }
      else
        format.html { render :new }
        format.json { render json: @subcontractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcontractors/1
  # PATCH/PUT /subcontractors/1.json
  def update
    respond_to do |format|
      if @subcontractor.update(subcontractor_params)
        format.html { redirect_to subcontractors_path, notice: 'Subcontractor was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcontractor }
      else
        format.html { render :edit }
        format.json { render json: @subcontractor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcontractors/1
  # DELETE /subcontractors/1.json
  def destroy
    @subcontractor.destroy
    respond_to do |format|
      format.html { redirect_to subcontractors_url, notice: 'Subcontractor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Subcontractor.import(params[:file])
    redirect_to subcontractors_url, notice: "Subcontractors imported."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcontractor
      @subcontractor = Subcontractor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcontractor_params
      params.require(:subcontractor).permit(:name, :trade, :contract_value)
    end
end
