class CouponsController < ApplicationController

  def index 
    @coupons = Coupon.all 
  end #index

  def new
  end #new

  def create
    @coupon = Coupon.new
    #binding.pry 
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end #create

  def show
    @coupon = Coupon.find_by(id: params[:id])
  end #show

end #class 