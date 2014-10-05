class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
    @categories = []
    Listing.all.each do |l|
      @categories << l.name
    end   
    @budgets = []
    Listing.all.each do |l|
      @budgets << l.budget
    end 
    @locations = []
    Listing.all.each do |l|
      @locations << l.location
    end 
      
  end
  
  def show
    @listing = Listing.find(params[:id])
  end
  
  def edit
    @listing = Listing.find(params[:id])
  end
  
  def update
    @listing = Listing.find(params[:id])
    @listing.update_attributes(params[:listing])
  end
  
  def delete
    @listing = Listing.find(params[:id]).destroy
  end
  
  def new
    @listing = Listing.new
  end
  
  def create
    @listing = Listing.new(params[:listing])
    @listing.user = current_user.id
    if @listing.save
      redirect_to listings_path
    else
      render "new"
    end
  end
  
end
