class AuthorizedShopsController < ApplicationController
  before_action :set_authorized_shop, only: %i[ show edit update destroy ]

  # GET /authorized_shops or /authorized_shops.json
  def index
    @authorized_shops = AuthorizedShop.all
  end

  # GET /authorized_shops/1 or /authorized_shops/1.json
  def show
  end

  # GET /authorized_shops/new
  def new
    @authorized_shop = AuthorizedShop.new
  end

  # GET /authorized_shops/1/edit
  def edit
  end

  # POST /authorized_shops or /authorized_shops.json
  def create
    @authorized_shop = AuthorizedShop.new(authorized_shop_params)

    respond_to do |format|
      if @authorized_shop.save
        format.html { redirect_to authorized_shop_url(@authorized_shop), notice: "Authorized shop was successfully created." }
        format.json { render :show, status: :created, location: @authorized_shop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorized_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorized_shops/1 or /authorized_shops/1.json
  def update
    respond_to do |format|
      if @authorized_shop.update(authorized_shop_params)
        format.html { redirect_to authorized_shop_url(@authorized_shop), notice: "Authorized shop was successfully updated." }
        format.json { render :show, status: :ok, location: @authorized_shop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorized_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorized_shops/1 or /authorized_shops/1.json
  def destroy
    @authorized_shop.destroy

    respond_to do |format|
      format.html { redirect_to authorized_shops_url, notice: "Authorized shop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorized_shop
      @authorized_shop = AuthorizedShop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorized_shop_params
      params.require(:authorized_shop).permit(:name, :address, :owner_name, :productid)
    end
end
