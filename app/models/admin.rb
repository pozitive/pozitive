class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  # devise :database_authenticatable, :rememberable, :trackable, :validatable

  has_many :blogs
  
end
