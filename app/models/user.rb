class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :privileges
  has_many :customers, :dependent => :destroy
  has_many :products, :dependent => :destroy
  belongs_to :company
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable, :lockable and :timeoutable,, :trackable,:registerable,
    devise :database_authenticatable, 
           :recoverable, :rememberable, :validatable

    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :role_ids, :s_id, :company_id, :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, :city, :postcode, :fix_line, :mobile_number, :county

    # This method is used for cancan gem. It will check the user role at the time of user authentication.  
    def role?(role)
      return !!self.roles.find_by_name(role.to_s)
    end
end
