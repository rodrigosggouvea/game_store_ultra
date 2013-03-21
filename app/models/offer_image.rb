class OfferImage < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  attr_accessible :image, :_destroy
  attr_accessor :image, :_destroy
end
