class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      add_player
      redirect_to root_path
      flash[:notice] = "User create successful and add to game!"
    else
      add_player
      redirect_to root_path
      flash[:notice] = "Exist user add to game"
    end
  end

  def add_player
    @table_ids = params[:user][:tables].select {|key,value| value == '1'}.keys
    email = params[:user][:email]
    @user = User.find_by_email(email)
    @table_ids.each do |id|
      current_table = Table.find(id)
      if current_table.free_places == true
        current_table.new_player
        @user.tables = [current_table]
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
