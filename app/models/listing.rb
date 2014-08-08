class Listing < ActiveRecord::Base
    has_attached_file :image,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
    validates :name, :description, :price, presence: true
end
