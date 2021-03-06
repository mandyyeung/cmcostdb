class PcosController < ApplicationController
  before_action :set_pco, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /pcos
  # GET /pcos.json
  def index
    @pcos = @q.result(distinct: true)
    respond_to do |format|
      format.html
      format.csv { send_data @pcos.to_csv }
      format.xls { send_data @pcos.to_csv(col_sep: "\t") }
    end
  end

  # GET /pcos/1
  # GET /pcos/1.json
  def show
  end

  # GET /pcos/new
  def new
    @pco = Pco.new
  end

  # GET /pcos/1/edit
  def edit
  end

  # POST /pcos
  # POST /pcos.json
  def create
    @pco = Pco.new(pco_params)

    respond_to do |format|
      if @pco.save
        format.html { redirect_to pcos_path, notice: 'PCO was successfully created.' }
        format.json { render :show, status: :created, location: @pco }
      else
        format.html { render :new }
        format.json { render json: @pco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pcos/1
  # PATCH/PUT /pcos/1.json
  def update
    respond_to do |format|
      if @pco.update(pco_params)
        format.html { redirect_to pcos_path, notice: 'PCO was successfully updated.' }
        format.json { render :show, status: :ok, location: @pco }
      else
        format.html { render :edit }
        format.json { render json: @pco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pcos/1
  # DELETE /pcos/1.json
  def destroy
    @pco.destroy
    respond_to do |format|
      format.html { redirect_to pcos_url, notice: 'PCO was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    Pco.import(params[:file])
    redirect_to pcos_url, notice: "PCOs imported."
  end

  def search
    @q = Pco.ransack(params[:q])
    @pcos = @q.result(distinct: true)
    render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pco
      @pco = Pco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pco_params
      params.require(:pco).permit(:number, :requested_by, :project, :date, :status, :subcontractor, :trade, :proposal_num, :ref_doc, :description, :classification, :work_completed, :insurance_claim, :backcharge, :filter, :al, :proposal_recd, :submitted_to_owner, :approved_by_owner, :billed, :approx_value, :proposed_value, :submitted_value, :approved_value, :comments, :engineer, :bp)
    end
end
