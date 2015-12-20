class Toy < ActiveRecord::Base
  belongs_to :elf

  mount_uploader :image, ImageUploader
end