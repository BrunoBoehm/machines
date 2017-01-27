class ProductrangesController < ApplicationController
  before_action :set_productrange, only: [:show, :edit, :update, :destroy]

  # GET /productranges
  # GET /productranges.json
  def index
    @productranges = Productrange.all
  end

  # GET /productranges/1
  # GET /productranges/1.json
  def show
  end

  # GET /productranges/new
  def new
    @productrange = Productrange.new
  end

  # GET /productranges/1/edit
  def edit
  end

  # POST /productranges
  # POST /productranges.json
  def create
    @productrange = Productrange.new(productrange_params)

    respond_to do |format|
      if @productrange.save
        format.html { redirect_to @productrange, notice: 'Productrange was successfully created.' }
        format.json { render :show, status: :created, location: @productrange }
      else
        format.html { render :new }
        format.json { render json: @productrange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productranges/1
  # PATCH/PUT /productranges/1.json
  def update
    respond_to do |format|
      if @productrange.update(productrange_params)
        format.html { redirect_to @productrange, notice: 'Productrange was successfully updated.' }
        format.json { render :show, status: :ok, location: @productrange }
      else
        format.html { render :edit }
        format.json { render json: @productrange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productranges/1
  # DELETE /productranges/1.json
  def destroy
    @productrange.destroy
    respond_to do |format|
      format.html { redirect_to productranges_url, notice: 'Productrange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productrange
      @productrange = Productrange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productrange_params
      params.require(:productrange).permit(:name, :slug, :description, :imgs, :seo_text, :seo_keywords)
    end
end
