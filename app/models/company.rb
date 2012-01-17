class Company < ActiveRecord::Base
  has_many :users
  has_many :categories, :dependent => :destroy
  attr_accessible :user_id, :company_name, :company_address, :post_code, :phone_number, :fax_number, :web_url, :email, :vat_no, :vat_rate, :reg_no, :company_number, :currency
end
