class Category < ActiveRecord::Base
  belongs_to :company
  has_ancestry
  
  has_many :sub_categories, :dependent => :destroy
    accepts_nested_attributes_for :sub_categories, :reject_if => lambda { |a| a[:sub_category_name].blank? }, :allow_destroy => true
    
end
