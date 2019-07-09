class MiccropostsController < ApplicationController
  before_action :set_miccropost, only: [:show, :edit, :update, :destroy]

  # GET /miccroposts
  # GET /miccroposts.json
  def index
    @miccroposts = Miccropost.all
  end

  # GET /miccroposts/1
  # GET /miccroposts/1.json
  def show
  end

  # GET /miccroposts/new
  def new
    @miccropost = Miccropost.new
  end

  # GET /miccroposts/1/edit
  def edit
  end

  # POST /miccroposts
  # POST /miccroposts.json
  def create
    @miccropost = Miccropost.new(miccropost_params)

    respond_to do |format|
      if @miccropost.save
        format.html { redirect_to @miccropost, notice: 'Miccropost was successfully created.' }
        format.json { render :show, status: :created, location: @miccropost }
      else
        format.html { render :new }
        format.json { render json: @miccropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miccroposts/1
  # PATCH/PUT /miccroposts/1.json
  def update
    respond_to do |format|
      if @miccropost.update(miccropost_params)
        format.html { redirect_to @miccropost, notice: 'Miccropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @miccropost }
      else
        format.html { render :edit }
        format.json { render json: @miccropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miccroposts/1
  # DELETE /miccroposts/1.json
  def destroy
    @miccropost.destroy
    respond_to do |format|
      format.html { redirect_to miccroposts_url, notice: 'Miccropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miccropost
      @miccropost = Miccropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miccropost_params
      params.require(:miccropost).permit(:content, :user_id)
    end
end
