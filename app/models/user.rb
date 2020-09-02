class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :pro_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/} 
    validates :explanation, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
    validates :price,    format: { with: /\A[0-9]+\z/ }
  end

  has_many   :items
  has_many   :favorites
  has_many   :comments
  has_many   :buying
  

end
