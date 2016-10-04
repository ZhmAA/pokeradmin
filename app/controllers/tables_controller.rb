class TablesController < ApplicationController
  
  def homepage 
    @table = Table.new
    @tables = Table.active_tables.full_tables
    @user = User.new
    @users = User.all
  end

  def create
    @table = Table.new(table_params)
    if @table.save
      redirect_to root_path
      flash[:notice] = "Table create successful!"
    else
      redirect_to root_path
    end
  end

  private

  def table_params
    params.require(:table).permit(:title, :gamestart, :players)
  end

end
