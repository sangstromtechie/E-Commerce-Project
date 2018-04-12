class AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @addresses = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new
    @address = Address.new
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(address_params)

    if @address.save
      current_customer.addresses << @address
      redirect_to @address
    else
      render 'new'
    end
  end

  def update
    @address = Address.find(params[:id])

    if @address.update(address_params)
      redirect_to @address
    else
      render 'edit'
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    redirect_to addresses_path
  end

  private

    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:province_id, :address_type_id, :aptno, :city, :street)
    end
end
