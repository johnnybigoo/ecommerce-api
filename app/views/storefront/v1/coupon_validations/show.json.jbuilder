# Endpoint para validação de uso do Cupom
json.coupon do
  json.(@coupon, :id, :code, :discount_value)
end