FactoryBot.define do
  factory :buyer_data do
    postal_code { '123-4567' }
    prefecture { 1 }
    city { '東京都' }
    house_number { '1-1' }
    building_name { '東京ハイツ' }
    tel_num { '12345678912' }
    price { "2000" }
  end
end
