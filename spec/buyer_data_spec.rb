require 'rails_helper'

RSpec.describe BuyerData, type: :model do
  describe '購入情報の保存' do
    before do
      @buying = FactoryBot.build(:buyer_data)
    end

    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@buying).to be_valid
    end
    it 'カード情報が空、もしくは不正なものだと保存できないこと' do
      @buying.token = nil
      @buying.valid?
      expect(@buying.errors.full_messages).to include("Token can't be blank")
    end
    it 'postal_codeが空だと保存できないこと' do
      @buying.postal_code = nil
      @buying.valid?
      expect(@buying.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @buying.postal_code = "1111111"
      @buying.valid?
      expect(@buying.errors.full_messages).to include("Postal code is invalid")
    end
    it 'prefectureを選択していないと保存できないこと' do
      @buying.prefecture_id = 1
      @buying.valid?
      expect(@buying.errors.full_messages).to include("Prefecture can't be blank")
    end
    it 'cityが空だと保存できないこと' do
      @buying.city = nil
      @buying.valid?
      expect(@buying.errors.full_messages).to include("City can't be blank")
    end
    it 'house_numberが空だと保存できないこと' do
      @buying.house_num = nil
      @buying.valid?
      expect(@buying.errors.full_messages).to include("House num can't be blank")
    end
    it 'buildingは空でも保存できること' do
      @buying.building = ""
      expect(@buying).to be_valid
    end
    it 'tel_numが空だと保存できないこと' do
      @buying.tel_num = nil
      @buying.valid?
      expect(@buying.errors.full_messages).to include("Tel num can't be blank")
    end
    it 'tel_numが半角数字11桁以下でないと保存できないこと' do
      @buying.tel_num = "１２３４５６７８９０一"
      @buying.valid?
      expect(@buying.errors.full_messages).to include("Tel num is invalid")
    end
  end
end