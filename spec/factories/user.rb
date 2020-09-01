FactoryBot.define do
  factory :user do
    nickname              {"テスト"}
    email                 {"testcode@gmail.com"}
    password              {"test1234"}
    password_confirmation {password}
    first_name            {"試験"}
    family_name           {"太郎"}
    first_huri            {"シケン"}
    family_huri           {"タロウ"}
    birthday              {"2000-01-31"}
  end
end