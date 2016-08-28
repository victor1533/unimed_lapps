class MedicinaPreventivaController < ApplicationController

  # GET /medicina_preventivas
  # GET /medicina_preventivas.json
  def index
    @aulas = current_user.aulas
    @programas = current_user.programas
    @medicina_preventivas = MedicinaPreventiva.all
  end

  # GET /medicina_preventivas/1
  # GET /medicina_preventivas/1.json
  def show
  end

  # GET /medicina_preventivas/new
  def new
    @medicina_preventiva = MedicinaPreventiva.new
  end

  # GET /medicina_preventivas/1/edit
  def edit
  end

  # POST /medicina_preventivas
  # POST /medicina_preventivas.json
  def create
    @medicina_preventiva = MedicinaPreventiva.new(medicina_preventiva_params)

    respond_to do |format|
      if @medicina_preventiva.save
        format.html { redirect_to @medicina_preventiva, notice: 'Medicina preventiva was successfully created.' }
        format.json { render :show, status: :created, location: @medicina_preventiva }
      else
        format.html { render :new }
        format.json { render json: @medicina_preventiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicina_preventivas/1
  # PATCH/PUT /medicina_preventivas/1.json
  def update
    respond_to do |format|
      if @medicina_preventiva.update(medicina_preventiva_params)
        format.html { redirect_to @medicina_preventiva, notice: 'Medicina preventiva was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicina_preventiva }
      else
        format.html { render :edit }
        format.json { render json: @medicina_preventiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicina_preventivas/1
  # DELETE /medicina_preventivas/1.json
  def destroy
    @medicina_preventiva.destroy
    respond_to do |format|
      format.html { redirect_to medicina_preventivas_url, notice: 'Medicina preventiva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
end
