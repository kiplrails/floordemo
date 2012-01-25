class ProductsController < ApplicationController
  
  # For using tiny mce editor put the below line on every controller where tiny mce needed
  uses_tiny_mce(:options => AppConfig.default_mce_options, :only => [:new, :edit])
  
  layout'dashboard'
  # before_filter :authenticate_user!, :except => []
 
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

  
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  
  def new
    @product = Product.new
    @suppliers = Supplier.find(:all)
    @categories = Category.find(:all)
    1.times do
      uom = @product.uoms.build
    end
    1.times do
      varient = @product.varients.build
    end
    1.times do
      discount = @product.discounts.build
    end
    1.times do
      attachment = @product.attachments.build
    end
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  
  def edit
    @product = Product.find(params[:id])
  end

  
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to(@product, :notice => 'Product was successfully created.') }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

 
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to(@product, :notice => 'Product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
end
