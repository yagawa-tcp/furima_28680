FactoryBot.define do
  factory :buyer_data do
    token {'tok_kjafjakdajjfaldmemrkcoco'}
    postal_code { '123-4567' }
    prefecture_id { '4' }
    city { '東京都' }
    house_num { '1-1' }
    building { '東京ハイツ' }
    tel_num { '12345678912' }
    price { "2000" }
  end
end
