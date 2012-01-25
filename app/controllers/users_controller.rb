class UsersController < ApplicationController
 # The before_filter is used to check the entered login credentials are authenticated or not
 before_filter :authenticate_user!
  
 # The following line is important mainly because 'cancan' gem functionality won't perform if it doesn't find the below line
 load_and_authorize_resource
  
  
  def index
    @a = current_user.id
    @b = User.where(:s_id => @a)
    # @users = User.find(params[:id])
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end
  
  # dashboard method is called to print all users on dashboard page.
  def dashboard
     @users = User.all
  end
  

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  
  def new
    @user = User.new
    @current_method = "new"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  
  def edit
    @user = User.find(params[:id])
    
  end

  
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to('/users') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def update
    @user = User.find(params[:id])
   
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end