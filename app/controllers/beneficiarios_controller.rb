class BeneficiariosController < ApplicationController
  before_action :set_beneficiario, only: [:show, :edit, :update, :destroy]

  # GET /beneficiarios
  # GET /beneficiarios.json
  def index
    if(params[:num_cartao])
      @beneficiario = Beneficiario.find_by(:num_cartao => params[:num_cartao])
      render json: @beneficiario
    else
      @beneficiarios = Beneficiario.all
    end
  end

  # GET /beneficiarios/1
  # GET /beneficiarios/1.json
  def show
  end

  # GET /beneficiarios/new
  def new
    @beneficiario = Beneficiario.new
  end

  # GET /beneficiarios/1/edit
  def edit
  end

  # POST /beneficiarios
  # POST /beneficiarios.json
  def create
    @beneficiario = Beneficiario.new(beneficiario_params)

    respond_to do |format|
      if @beneficiario.save
        format.html { redirect_to @beneficiario, notice: 'Beneficiarios was successfully created.' }
        format.json { render :show, status: :created, location: @beneficiario }
      else
        format.html { render :new }
        format.json { render json: @beneficiario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiarios/1
  # PATCH/PUT /beneficiarios/1.json
  def update
    respond_to do |format|
      if @beneficiarios.update(beneficiarios_params)
        format.html { redirect_to @beneficiarios, notice: 'Beneficiarios was successfully updated.' }
        format.json { render :show, status: :ok, location: @beneficiarios }
      else
        format.html { render :edit }
        format.json { render json: @beneficiarios.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiarios/1
  # DELETE /beneficiarios/1.json
  def destroy
    @beneficiarios.destroy
    respond_to do |format|
      format.html { redirect_to beneficiarios_index_url, notice: 'Beneficiarios was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiario
      @beneficiario = Beneficiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beneficiario_params
      params.require(:beneficiario).permit!
    end
end
