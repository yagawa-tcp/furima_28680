require 'rails_helper'
describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nickname・first_name・family_name・first_huri・family_huriとemail、passwordとpassword_confirmation、birthdayが存在すれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordが6文字以上且つ英数字混合の半角であれば登録できる" do
        @user.password = "test123"
        @user.password_confirmation = "test123"
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname is invalid")
      end
      it "emailが空では登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      # 追加部分↓
      it "emailに＠が含まれていないと登録できない" do
        @user.email = 'testtestgmail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it "first_nameが半角だと登録できない" do
        @user.first_name = 'ﾀﾅｶ' 
        @user.valid?
        expect(@user.errors.full_messages).to include("First name is invalid")
      end
      # 追加部分↓
      it "first_nameが空だと登録できない" do
        @user.first_name = '' 
        @user.valid?
        expect(@user.errors.full_messages).to include("First name can't be blank")
      end
      it "family_nameが半角だと登録できない" do
        @user.family_name = 'ﾀﾛｳ' 
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name is invalid")
      end
      # 追加部分↓
      it "family_nameが空だと登録できない" do
        @user.family_name = '' 
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name can't be blank")
      end
      it "first_huriが半角だと登録できない" do
        @user.first_huri = 'ﾀﾅｶ' 
        @user.valid?
        expect(@user.errors.full_messages).to include("First huri is invalid")
      end
      # 追加部分↓
      it "first_huriが空だと登録できない" do
        @user.first_huri = '' 
        @user.valid?
        expect(@user.errors.full_messages).to include("First huri can't be blank")
      end
      it "family_huriが半角だと登録できない" do
        @user.family_huri = 'ﾀﾛｳ' 
        @user.valid?
        expect(@user.errors.full_messages).to include("Family huri is invalid")
      end
      # 追加部分↓
      it "family_huriが空だと登録できない" do
        @user.family_huri = '' 
        @user.valid?
        expect(@user.errors.full_messages).to include("Family huri can't be blank")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "passwordが空では登録できない" do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "passwordが5文字以下であれば登録できない" do
        @user.password = 'test1'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "passwordが半角英数字混合でないと登録できない" do
        @user.password = 'testtest'
        @user.password_confirmation = 'testtest'
        @user.valid?
        expect(@user.errors.full_messages).to include()
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "birthdayが空だと登録できない" do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday is invalid")
      end       
    end
  end
end