class Destination < ApplicationRecord
  has_one_attached :card_image
  has_rich_text :content
end
