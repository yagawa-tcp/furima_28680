class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    with_options presence: true do
      validates :nickname, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/} 
      validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
      validates :family_name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/}
      validates :first_huri, format: { with: /\A[ァ-ヶー－]+\z/}
      validates :family_huri, format: { with: /\A[ァ-ヶー－]+\z/}
      validates :birthday,    format: { with: /\A[-0-9]+\z/ }
      validates :email,  uniqueness: true
      end

  has_many   :items
  has_many   :favorites
  has_many   :comments
  has_many   :buying
  

end
