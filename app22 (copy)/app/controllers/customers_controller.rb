class CustomersController < ApplicationController
  protect_from_forgery except: :index
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @customers = Customer.all
    # render json: @customer
    #render js: "alert('Hello Rails');"
    # render file: "#{Rails.root}/public/404.html", layout: false
  end

  def new
    @customer = Customer.new
  end

  def Show
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: "Customer was successfully created." }
        format.json { render :index, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @customer.destroy
    flash[:notice] = "You have successfully Kick out."
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def block
    @customer = Customer.find(params[:id])
     @customer.update(blacklist: true)
     redirect_to customers_path
  end

  def un_block_all
    @customers = Customer.all
    @customers.update(blacklist: false)
    redirect_to customers_path
  end

  private
    def customer_params
      params.require(:customer).permit(:name,:id)
    end

    def set_user
      @customer = Customer.find(params[:id])
    end
end
