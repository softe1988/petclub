class PetstoresController < ApplicationController
  before_action :set_petstore, only: [:show, :edit, :update, :destroy]

  # GET /petstores
  # GET /petstores.json
  def index
    @petstores = Petstore.all
  end

  # GET /petstores/1
  # GET /petstores/1.json
  def show
  end

  # GET /petstores/new
  def new
    @petstore = Petstore.new
  end

  # GET /petstores/1/edit
  def edit
  end

  # POST /petstores
  # POST /petstores.json
  def create
    @petstore = Petstore.new(petstore_params)

    respond_to do |format|
      if @petstore.save
        format.html { redirect_to @petstore, notice: 'Petstore was successfully created.' }
        format.json { render :show, status: :created, location: @petstore }
      else
        format.html { render :new }
        format.json { render json: @petstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petstores/1
  # PATCH/PUT /petstores/1.json
  def update
    respond_to do |format|
      if @petstore.update(petstore_params)
        format.html { redirect_to @petstore, notice: 'Petstore was successfully updated.' }
        format.json { render :show, status: :ok, location: @petstore }
      else
        format.html { render :edit }
        format.json { render json: @petstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petstores/1
  # DELETE /petstores/1.json
  def destroy
    @petstore.destroy
    respond_to do |format|
      format.html { redirect_to petstores_url, notice: 'Petstore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petstore
      @petstore = Petstore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petstore_params
      params.require(:petstore).permit(:name)
    end
end
