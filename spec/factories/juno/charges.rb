FactoryBot.define do
  factory :juno_charge, class: 'Juno::Charge' do
    key { "MyString" }
    code { "MyString" }
    number { "MyString" }
    amount { "9.99" }
    status { "MyString" }
    billet_url { "MyString" }
    order { nil }
  end
end
