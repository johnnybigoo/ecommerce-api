require "cpf_cnpj"

class CpfCnpjValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
  end
end