class ShippingManagesController < ApplicationController
  before_action :set_shipping_manage, only: %i[ show edit update destroy ]

  # GET /shipping_manages or /shipping_manages.json
  def index
    @shipping_manages = ShippingManage.all
  end

  # GET /shipping_manages/1 or /shipping_manages/1.json
  def show
  end

  # GET /shipping_manages/new
  def new
    @shipping_manage = ShippingManage.new
  end

  # GET /shipping_manages/1/edit
  def edit
  end

  # POST /shipping_manages or /shipping_manages.json
  def create
    @shipping_manage = ShippingManage.new(shipping_manage_params)

    respond_to do |format|
      if @shipping_manage.save
        format.html { redirect_to shipping_manage_url(@shipping_manage), notice: "Shipping manage was successfully created." }
        format.json { render :show, status: :created, location: @shipping_manage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipping_manage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipping_manages/1 or /shipping_manages/1.json
  def update
    respond_to do |format|
      if @shipping_manage.update(shipping_manage_params)
        format.html { redirect_to shipping_manage_url(@shipping_manage), notice: "Shipping manage was successfully updated." }
        format.json { render :show, status: :ok, location: @shipping_manage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipping_manage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_manages/1 or /shipping_manages/1.json
  def destroy
    @shipping_manage.destroy

    respond_to do |format|
      format.html { redirect_to shipping_manages_url, notice: "Shipping manage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_manage
      @shipping_manage = ShippingManage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipping_manage_params
      params.require(:shipping_manage).permit(:shippingid, :productid, :quantity)
    end
end
