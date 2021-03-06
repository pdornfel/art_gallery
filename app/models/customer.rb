class Customer < ActiveRecord::Base
  has_many :sales,
    dependent: :destroy,
    inverse_of: :customer

  has_many :favorite_collections
  has_many :collections, through: :favorite_collections


  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates_presence_of :name
end
