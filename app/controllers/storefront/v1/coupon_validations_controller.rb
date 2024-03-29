# Endpoint para validação de uso do Cupom
module Storefront::V1
  class CouponValidationsController < ApiController
    def create
      @coupon = Coupon.find_by(code: params[:coupon_code])
      @coupon.validate_use!
      render :show
    rescue Coupon::InvalidUse, NoMethodError
      # Corrigindo aplicação de Cupons
      render_error(message: I18n.t('storefront/v1/coupon_validations.create.failure'))
    end
  end
end