class PortfoliosController < ApplicationController


  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def index
    @portfolio_items = Portfolio.angular
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

def edit
  @portfolio_item = Portfolio.find(params[:id]) # rake routes, then find edit ID.
end

def update
  @portfolio_item = Portfolio.find(params[:id])
  respond_to do |format|
    if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
      format.html { redirect_to @portfolio_item, notice: 'This was successfully updated.' }
    else
      format.html { render :edit }
    end
  end
end

def destroy
  # perform the lookup
  @portfolio_item = Portfolio.find(params[:id])
  #destroy/delete the record
  @portfolio_item.destroy
  #Redirect
  respond_to do |format|
    format.html { redirect_to portfolios_url, notice: 'Record was removed' }
  end
end



end
