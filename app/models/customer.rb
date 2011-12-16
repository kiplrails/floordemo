class Customer < ActiveRecord::Base
  belongs_to :user
  
  has_many :contacts, :dependent => :destroy
  accepts_nested_attributes_for :contacts, :reject_if => lambda { |a| a[:contact_name].blank? }, :allow_destroy => true
  
  has_many :communications, :dependent => :destroy
  accepts_nested_attributes_for :communications, :reject_if => lambda { |a| a[:comm_type].blank? }, :allow_destroy => true
end 
