class Supplier < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  
  has_many :supcontacts, :dependent => :destroy
    accepts_nested_attributes_for :supcontacts, :reject_if => lambda { |a| a[:contact_name].blank? }, :allow_destroy => true
    
    has_many :supcommunications, :dependent => :destroy
      accepts_nested_attributes_for :supcommunications, :reject_if => lambda { |a| a[:comm_type].blank? }, :allow_destroy => true
      
       has_many :credits, :dependent => :destroy
          accepts_nested_attributes_for :credits, :reject_if => lambda { |a| a[:credit_limit].blank? }, :allow_destroy => true
          
 # SupplierImageUploader is a carrierwave generated file to upload the supplier images attachemnt.so we need to mention below which uploader should be used to upload the file
     mount_uploader :supplier_image, SupplierImageUploader
end
