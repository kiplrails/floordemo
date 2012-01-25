class Product < ActiveRecord::Base
            
  belongs_to :user
  belongs_to :suppliers
  has_many :uoms, :dependent => :destroy
    accepts_nested_attributes_for :uoms, :reject_if => lambda { |a| a[:by_unit].blank? }, :allow_destroy => true
    
  has_many :varients, :dependent => :destroy
      accepts_nested_attributes_for :varients, :reject_if => lambda { |a| a[:var_name].blank? }, :allow_destroy => true
      
  has_many :discounts, :dependent => :destroy
        accepts_nested_attributes_for :discounts, :reject_if => lambda { |a| a[:discount].blank? }, :allow_destroy => true
        
  has_many :attachments, :as => :attachable, :dependent => :destroy
        accepts_nested_attributes_for :attachments
       
  # ImageUploader is a carrierwave generated file to upload the Image attachemnt.so we need to mention below which uploader should be used to upload the Image 
   mount_uploader :image, ImageUploader
        
end
