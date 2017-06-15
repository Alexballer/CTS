class FeaturenamesController < ApplicationController
  before_action :set_featurename, only: [:show, :edit, :update, :destroy]

  # GET /featurenames
  # GET /featurenames.json
  def index
    @featurenames = Featurename.all
  end

  # GET /featurenames/1
  # GET /featurenames/1.json
  def show
  end

  # GET /featurenames/new
  def new
    @featurename = Featurename.new
  end

  # GET /featurenames/1/edit
  def edit
  end

  # POST /featurenames
  # POST /featurenames.json
  def create
    @featurename = Featurename.new(featurename_params)

    respond_to do |format|
      if @featurename.save
        format.html { redirect_to @featurename, notice: 'Featurename was successfully created.' }
        format.json { render :show, status: :created, location: @featurename }
      else
        format.html { render :new }
        format.json { render json: @featurename.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featurenames/1
  # PATCH/PUT /featurenames/1.json
  def update
    respond_to do |format|
      if @featurename.update(featurename_params)
        format.html { redirect_to @featurename, notice: 'Featurename was successfully updated.' }
        format.json { render :show, status: :ok, location: @featurename }
      else
        format.html { render :edit }
        format.json { render json: @featurename.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featurenames/1
  # DELETE /featurenames/1.json
  def destroy
    @featurename.destroy
    respond_to do |format|
      format.html { redirect_to featurenames_url, notice: 'Featurename was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featurename
      @featurename = Featurename.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featurename_params
      params.require(:featurename).permit(:attribute)
    end
end
