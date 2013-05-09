class DeliveriesController < ApplicationController
  # GET /deliveries
  # GET /deliveries.json
  before_filter :find_delivery
  before_filter :confirmed_logged_in
  
  def index
    @deliveries = Delivery.all
    @users = User.all
    @delivery = User.find_by_username(params[:username])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end
  
  def courier_salaries
     @deliveries = Delivery.all
    @users = User.all
    @delivery = User.find_by_username(params[:username])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end
  
  def completed
    @deliveries = Delivery.all
    @users = User.all
    @delivery = User.find_by_username(params[:username])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end
  
  def complete_for_salaries
    @deliveries = Delivery.where(:user_id => @user.id)
    @users = User.all
    @delivery = User.find_by_username(params[:username])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end

  
  def onroad
    @deliveries = Delivery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end

  def done
    @delivery = Delivery.find(params[:id])
    @users = User.where(:id => session[:user_id])
  end

  def courier_onroad
    @deliveries = Delivery.all
    @users = User.all
    @order = User.find_by_username(params[:username])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deliveries }
    end
  end

  # GET /deliveries/1
  # GET /deliveries/1.json
  def show
    @delivery = Delivery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @delivery }
    end
  end

  # GET /deliveries/new
  # GET /deliveries/new.json
  def new
    @delivery = Delivery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @delivery }
    end
  end

  # GET /deliveries/1/edit
  def edit
    @delivery = Delivery.find(params[:id])
    @users = User.where(:id => session[:user_id])
  end

  # POST /deliveries
  # POST /deliveries.json
  def create
    @delivery = Delivery.new(params[:delivery])

    respond_to do |format|
        if @delivery.weight > 1 and @delivery.weight < 1.5 
  @delivery.price = 1.5  
  end 
     if @delivery.weight > 1.5 and @delivery.weight < 2 
  @delivery.price = 2  
   end 
    if @delivery.weight > 2 and @delivery.weight < 2.5 
   @delivery.price = 2.5  
   end 
   if @delivery.weight > 2.5 and @delivery.weight < 3 
   @delivery.price = 3  
   end 
   if @delivery.weight > 3 and @delivery.weight < 3.5 
   @delivery.price = 3.5  
   end 
   if @delivery.weight > 3.5 and @delivery.weight < 4 
   @delivery.price = 4  
   end 
   if @delivery.weight > 4 and @delivery.weight < 4.5 
   @delivery.price = 4.5  
   end 
    if @delivery.weight > 4.5 and @delivery.weight < 5 
   @delivery.price = 5  
   end
      if @delivery.save
        format.html { redirect_to @delivery, notice: 'Delivery was successfully created.' }
        format.json { render json: @delivery, status: :created, location: @delivery }
      else
        format.html { render action: "new" }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deliveries/1
  # PUT /deliveries/1.json
  def update
    @delivery = Delivery.find(params[:id])
    
    
    respond_to do |format|
      if @delivery.update_attributes(params[:delivery])
        format.html { redirect_to @delivery, notice: 'Delivery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @delivery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveries/1
  # DELETE /deliveries/1.json
  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy

    respond_to do |format|
      format.html { redirect_to deliveries_url }
      format.json { head :no_content }
    end
  end
  
  private
  
  def find_delivery
     if params[:user_id]
      @user = User.find_by_id(params[:user_id])
    end
  end
  
end
