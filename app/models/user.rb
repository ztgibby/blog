class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :first_name, :last_name, :presence => true

  has_many :posts
  has_many :comments

  def name
    "#{first_name} #{last_name}"
  end

end
