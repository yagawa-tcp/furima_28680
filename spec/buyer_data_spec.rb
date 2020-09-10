require 'rails_helper'

RSpec.describe BuyerData, type: :model do
  describe '購入情報の保存' do
    before do
      @buying = FactoryBot.build(:buyer_data)
    end

    it 'すべての値が正しく入力されていれば保存できること' do
    end

    it 'numberが空だと保存できないこと' do
    end
    it 'exp_monthが空だと保存できないこと' do
    end
    it 'exp_yearが空だと保存できないこと' do
    end
    it 'cvcが空だと保存できないこと' do
    end
    it 'postal_codeが空だと保存できないこと' do
    end
    it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
    end
    it 'prefectureを選択していないと保存できないこと' do
    end
    it 'cityが空だと保存できないこと' do
    end
    it 'house_numberが空だと保存できないこと' do
    end
    it 'buildingは空でも保存できること' do
    end
    it 'tel_numが空だと保存できないこと' do
    end
    it 'tel_numが半角数字11桁以下でないと保存できないこと' do
    end
  end
end