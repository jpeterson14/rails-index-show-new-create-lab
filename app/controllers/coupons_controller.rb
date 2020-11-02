class CouponsController < ApplicationController
def index
    @coupons = Coupon.all
end

def new
    @coupon = Coupon.new
end

def create
    strong_params = params.require(:coupon).permit(:coupon_code, :store)
    @coupon = Coupon.create(strong_params)
    redirect_to coupon_path(@coupon)
end

def show
end

end