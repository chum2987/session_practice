class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :phone

  validates :nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day, presence: true
end
