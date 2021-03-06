class PortfoliosController < ApplicationController
   before_action :set_blog, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
 
  def index
    @portfolio_items = Portfolio.all
  end
  
  def angular
    @angular_portfolio_items = Portfolio.angular
  end
  
  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end
  
  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
        format.json { render :show, status: :created, location: portfolio_item }
      else
        format.html { render :new }
        format.json { render json: portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolios_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    #Perform the lookups
    @portfolio_item = Portfolio.find(params[:id])
    
    # Destroy/delete
    @portfolio_item.destroy
    
    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Record was removed." }
      format.json { head :no_content }
    end
  end
  
  private
  
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body,
                                      :image,
                                      technologies_attributes: [:name]
                                      )
  end

end