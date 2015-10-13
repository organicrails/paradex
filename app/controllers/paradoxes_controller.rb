class ParadoxesController < ApplicationController
  before_action :set_paradox, only: [:show, :edit, :update, :destroy]

  # GET /paradoxes
  # GET /paradoxes.json
  def index
    @paradoxes = Paradox.all
  end

  # GET /paradoxes/1
  # GET /paradoxes/1.json
  def show
  end

  # GET /paradoxes/new
  def new
    @paradox = Paradox.new
  end

  # GET /paradoxes/1/edit
  def edit
  end

  # POST /paradoxes
  # POST /paradoxes.json
  def create
    @paradox = Paradox.new(paradox_params)

    respond_to do |format|
      if @paradox.save
        format.html { redirect_to @paradox, notice: 'Paradox was successfully created.' }
        format.json { render :show, status: :created, location: @paradox }
      else
        format.html { render :new }
        format.json { render json: @paradox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paradoxes/1
  # PATCH/PUT /paradoxes/1.json
  def update
    respond_to do |format|
      if @paradox.update(paradox_params)
        format.html { redirect_to @paradox, notice: 'Paradox was successfully updated.' }
        format.json { render :show, status: :ok, location: @paradox }
      else
        format.html { render :edit }
        format.json { render json: @paradox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paradoxes/1
  # DELETE /paradoxes/1.json
  def destroy
    @paradox.destroy
    respond_to do |format|
      format.html { redirect_to paradoxes_url, notice: 'Paradox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paradox
      @paradox = Paradox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paradox_params
      params.require(:paradox).permit(:title, :author, :description)
    end
end
