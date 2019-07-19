class Item < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
  mount_uploader :image, ImageUploader

  has_many :user_items, dependent: :destroy

  def self.generate_items
    %w(맥북 그램 에어닷 에어팟 애플워치 르노바).each do |item_title|
      Item.create(title: item_title, user: User.first)
    end
  end
end
