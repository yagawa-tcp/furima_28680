class BuyerData

  include ActiveModel::Model
  attr_accessor :prefecture_id, :city, :house_num, :building, :tel_num, :postal_code, :building, :price, :token, :user_id, :item_id

  POSTAL_CODE_REGEX = /\A\d{3}[-]\d{4}\z/

  with_options presence: true do   
    validates :token
    validates :city            
    validates :postal_code,    format: { with: POSTAL_CODE_REGEX }
    validates :house_num     
    validates :tel_num,        length: { maximum: 11 }, format: {with: /\d/}
  end

  validates :prefecture_id, numericality: { other_than: 1, message: " を指定してください" }

  def save
    buying = Buying.create(item_id: item_id, user_id: user_id)
    Address.create(prefecture_id: prefecture_id, city: city, postal_code: postal_code, house_num: house_num, building: building, tel_num: tel_num, buying_id: buying.id, )
  end
end

 