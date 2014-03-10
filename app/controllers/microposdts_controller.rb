class MicroposdtsController < ApplicationController
  before_action :set_microposdt, only: [:show, :edit, :update, :destroy]

  # GET /microposdts
  # GET /microposdts.json
  def index
    @microposdts = Microposdt.all
  end

  # GET /microposdts/1
  # GET /microposdts/1.json
  def show
  end

  # GET /microposdts/new
  def new
    @microposdt = Microposdt.new
  end

  # GET /microposdts/1/edit
  def edit
  end

  # POST /microposdts
  # POST /microposdts.json
  def create
    @microposdt = Microposdt.new(microposdt_params)

    respond_to do |format|
      if @microposdt.save
        format.html { redirect_to @microposdt, notice: 'Microposdt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microposdt }
      else
        format.html { render action: 'new' }
        format.json { render json: @microposdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposdts/1
  # PATCH/PUT /microposdts/1.json
  def update
    respond_to do |format|
      if @microposdt.update(microposdt_params)
        format.html { redirect_to @microposdt, notice: 'Microposdt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microposdt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposdts/1
  # DELETE /microposdts/1.json
  def destroy
    @microposdt.destroy
    respond_to do |format|
      format.html { redirect_to microposdts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposdt
      @microposdt = Microposdt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microposdt_params
      params.require(:microposdt).permit(:content, :user_id)
    end
end
