FactoryBot.define do
  factory :item do
    # image                 {"MS251_rondonnoyoru_TP_V4.jpg"}
    # attached { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'files', 'test.jpg'), 'image/jpg') }
    image {Faker::Lorem.sentence}
    pro_name              {"テスト"}
    explanation           {"テストコードです、お納めください"}
    category_id              {"4"}
    condition_id            {"2"}
    deli_money_id           {"3"}
    prefecture_id            {"30"}
    deli_time_id           {"2"}
    price              {"4000"}
    association :user
  end
end
