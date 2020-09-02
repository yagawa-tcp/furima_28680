require 'rails_helper'
  describe Item do
    before do
      @item = FactoryBot.build(:item)
    end
  
    describe '商品出品登録' do
      context '出品登録がうまくいくとき' do
        it "image,pro_name,explanation,conditon_id,category_id,deli_money_id,prefecture_id,deli_time_id,priceが存在すれば登録できる" do
          expect(@item).to be_valid
        end
      end
  
      context '出品登録がうまくいかないとき' do
        it "imageが空だと登録できない" do
          @item.image = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Image is invalid")
        end
        it "pro_nameが空では登録できない" do
          @item.pro_name = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Pro name can't be blank")
        end
        it "pro_nameが40文字を超えると登録できない" do
          @item.pro_name = '01234567890123456789012345678901234567890'
          @item.valid?
          expect(@item.errors.full_messages).to include("Pro name is too long(maximum is 40 characters")
        end
        it "explanationが空だと登録できない" do
          @item.explanation = '' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Explanation can't be blank")
        end
        it "category_idが空だと登録できない" do
          @item.category_id = '' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Category id can't be blank")
        end
        it "condition_idが空だと登録できない" do
          @item.conditon_id = '' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Condition id can't be blank")
        end
        it "deli_money_idが空だと登録できない" do
          @item.deli_money_id = '' 
          @item.valid?
          expect(@item.errors.full_messages).to include("Deli money can't be blank")
        end
        it "prefecture_idが空では登録できない" do
          @item.prefecture_id = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Prefecture id can't be blank")
        end
        it "deli_time_idが空だと登録できない" do
          @item.deli_money_id = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Deli time can't be blank")
        end    
        it "priceが空だと登録できない" do
          @item.price = ''
          @item.valid?
          expect(@item.errors.full_messages).to include("Price can't be blank")
        end      
        it "priceが¥300以下だと登録できない" do
          @item.price = '299'
          @item.valid?
          expect(@item.errors.full_messages).to include("Price is invalid")
        end
        it "priceが¥9,999,999以上だと登録できない" do
          @item.price = '10000000'
          @item.valid?
          expect(@item.errors.full_messages).to include("Price is invalid")
        end        
      end
    end
  end


end
