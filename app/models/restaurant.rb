class Restaurant < ApplicationRecord

  CATEGORIES =["chinese","italian","japanese","french","belgian"]

  def self.categories
    CATEGORIES
  end

  has_many :reviews, dependent: :destroy

  validates :name, presence:true
  validates :address, presence:true
  validates :phone_number, presence:true
  validates :category, presence:true
  validates :category, inclusion: {in: CATEGORIES }
end
