class StorageManagesController < ApplicationController
  before_action :set_storage_manage, only: %i[ show edit update destroy ]

  # GET /storage_manages or /storage_manages.json
  def index
    @storage_manages = StorageManage.all
  end

  # GET /storage_manages/1 or /storage_manages/1.json
  def show
  end

  # GET /storage_manages/new
  def new
    @storage_manage = StorageManage.new
  end

  # GET /storage_manages/1/edit
  def edit
  end

  # POST /storage_manages or /storage_manages.json
  def create
    @storage_manage = StorageManage.new(storage_manage_params)

    respond_to do |format|
      if @storage_manage.save
        format.html { redirect_to storage_manage_url(@storage_manage), notice: "Storage manage was successfully created." }
        format.json { render :show, status: :created, location: @storage_manage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @storage_manage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storage_manages/1 or /storage_manages/1.json
  def update
    respond_to do |format|
      if @storage_manage.update(storage_manage_params)
        format.html { redirect_to storage_manage_url(@storage_manage), notice: "Storage manage was successfully updated." }
        format.json { render :show, status: :ok, location: @storage_manage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @storage_manage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storage_manages/1 or /storage_manages/1.json
  def destroy
    @storage_manage.destroy

    respond_to do |format|
      format.html { redirect_to storage_manages_url, notice: "Storage manage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storage_manage
      @storage_manage = StorageManage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def storage_manage_params
      params.require(:storage_manage).permit(:storageid, :productid, :quantity)
    end
end
