class Product < ApplicationRecord
	has_many :users
	has_many :carts
	belongs_to :category
	has_one_attached :image

  def image_url
    Rails.application.routes.url_helpers.rails_representation_url(image.variant(resize: '100x100').processed)
  end

end
