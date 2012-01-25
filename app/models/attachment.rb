# The attachment class is important for carrierwave functionality
class Attachment < ActiveRecord::Base
 
  attr_accessible :file
  
  belongs_to :attachable, :polymorphic => true
  
  # FileUploader is a carrierwave generated file to upload the file attachemnt.so we need to mention below which uploader should be used to upload the file
  mount_uploader :file, FileUploader
end
