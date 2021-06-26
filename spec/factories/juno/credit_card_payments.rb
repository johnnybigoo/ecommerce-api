FactoryBot.define do
  factory :juno_credit_card_payment, class: 'Juno::CreditCardPayment' do
    key { "MyString" }
    release_date { "2021-06-25 21:35:39" }
    status { "MyString" }
    reason { "MyString" }
    charge { nil }
  end
end
