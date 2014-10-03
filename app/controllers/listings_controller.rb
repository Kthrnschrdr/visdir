class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all     
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
    @names = []
    Listing.all.each do |l|
      @names << l.name
    end
  end
  
  def create
    @listing = Listing.new(params[:listing])
    @listing.user_id = current_user.id
    if @listing.save
      redirect_to listings_path
    else
      render "new"
    end
  end
  
end
