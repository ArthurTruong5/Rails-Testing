class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all # calling model, inside the controller and now this will be availiable to the view
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body)) # If you don't have this, you would have security flaws. We're giving a whitelisted set of parameters. This is a STRONG parameter
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' } # portfolios_path - full list of portfolio items
      else
        format.html { render :new }
      end
    end
  end


end
