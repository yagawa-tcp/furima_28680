require 'rails_helper'
  describe Item do
    before do
      @item = FactoryBot.build(:item)
      @item.image = fixture_file_upload("spec/factories/testimage/test.jpg")
      @user = FactoryBot.build(:user)
    end
  
    describe '商品出品登録' do
      context '出品登録がうまくいくとき' do
        it "image,pro_name,explanation,conditon_id,category_id,deli_money_id,prefecture_id,deli_time_id,priceが存在すれば登録できる" do
          expect(@item).to be_valid
        end
      end
  
      context '出品登録がうまくいかないとき' do
        it "imageが空だと登録できない" do
          @item.image = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("Image can't be blank")
        end
        it "pro_nameが空では登録できない" do
          @item.pro_name = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Pro name can't be blank")
        end
        it "pro_nameが40文字を超えると登録できない" do
          @item.pro_name = '01234567890123456789012345678901234567890'
          @item.valid?
          expect(@item.errors.full_messages).to include("Pro name is too long (maximum is 40 characters)")
        end
        it "explanationが空だと登録できない" do
          @item.explanation = '' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Explanation can't be blank")
        end
        it "category_idが空だと登録できない" do
          @item.category_id = '1' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Category must be other than 1")
        end
        it "condition_idが空だと登録できない" do
          @item.condition_id = '1' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Condition must be other than 1")
        end
        it "deli_money_idが空だと登録できない" do
          @item.deli_money_id = '1' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Deli money must be other than 1")
        end
        it "prefecture_idが空では登録できない" do
          @item.prefecture_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include("Prefecture must be other than 1")
        end
        it "deli_time_idが空だと登録できない" do
          @item.deli_money_id = '1'
          @item.valid?
          expect(@item.errors.full_messages).to include("Deli money must be other than 1")
        end    
        it "priceが空だと登録できない" do
          @item.price = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Price is out of setting range")
        end      
        it "priceが¥300以下だと登録できない" do
          @item.price = '299'
          @item.valid?
          expect(@item.errors.full_messages).to include("Price is out of setting range")
        end
        it "priceが¥9,999,999以上だと登録できない" do
          @item.price = '10000000'
          @item.valid?
          expect(@item.errors.full_messages).to include("Price is out of setting range")
        end        
      end
    end
  end



