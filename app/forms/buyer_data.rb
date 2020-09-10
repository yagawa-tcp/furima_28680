class BuyerData

  include ActiveModel::Model
  attr_accessor :prefecture, :city, :house_num, :building, :tel_num, :postal_code, :building, :price, :token

  with_options presence: true do   
    validates :prefecture_id,   null: false
    validates :city,            null: false
    validates :postal_code,     null: false, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :house_num,       null: false
    validates :tel_num,         null: false, length: { maximum: 11 }
  end

  validates :prefecture, numericality: { other_than: 0, message: "can't be blank" }
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is out of setting range"}

  def save
    @buyer = Buying.create
    Address.create(prefecture: prefecture, city: city, postal_code: postal_code, house_num: house_num, building: building, tel_num: tel_num, buying_id: buying.id, )
    Buying.create(item_id: item.id, user_id: user.id)
  end

end

