class PagesController < ApplicationController

  def home
    @connection = params['connection']
    if @connection
      cookies[:connection] = params['connection']
    end
  end

  def change
  @connection = params['connection']
  cookies[:connection] = @connection
  username = params['username']
  password = params['password']
  case @connection
  when "kho_1"
    if password == "kho_1"
      do_change(@connection)
    else
      redirect_to root_path
    end
  when "kho_2"
    if password == "kho_2"
      do_change(@connection)
    else
      redirect_to root_path
    end
  end

end

def login
  cookies[:connection] = 'kho_1'
end

def logout
  cookies.delete(:connection)
  redirect_to pages_login_path
end

  private
  def do_change(connection)
    @connection = connection
    Product.connect_to_database(@connection)
    Bill.connect_to_database(@connection)
    Farm.connect_to_database(@connection)
    ShippingManage.connect_to_database(@connection)
    Shipping.connect_to_database(@connection)
    Staff.connect_to_database(@connection)
    Storage.connect_to_database(@connection)
    StorageManage.connect_to_database(@connection)
    AuthorizedShop.connect_to_database(@connection)
    redirect_to pages_home_path(connection: @connection)
  end

end



# def home

# end

# def change
#   @connection = params['connection']
#   cookies[:connection] = @connection
#   username = params['username']
#   password = params['password']
#   case @connection
#   when "kho_1"
#     if password == "kho_1"
#       do_change(@connection)
#     else
#       redirect_to root_path
#     end
#   when "kho_2"
#     if password == "kho_2"
#       do_change(@connection)
#     else
#       redirect_to root_path
#     end
#   end

# end

#   private
#   def do_change(connection)
#     @connection = connection
#     Product.connect_to_database(@connection)
#     Bill.connect_to_database(@connection)
#     Farm.connect_to_database(@connection)
#     ShippingManage.connect_to_database(@connection)
#     Shipping.connect_to_database(@connection)
#     Staff.connect_to_database(@connection)
#     Storage.connect_to_database(@connection)
#     StorageManage.connect_to_database(@connection)
#     AuthorizedShop.connect_to_database(@connection)
#   end
