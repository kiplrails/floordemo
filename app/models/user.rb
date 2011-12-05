class User < ActiveRecord::Base
  has_and_belongs_to_many :roles

    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable, :lockable and :timeoutable,, :trackable,:registerable,
    devise :database_authenticatable, 
           :recoverable, :rememberable, :validatable

    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :role_ids

    ROLES = %w[super admin staff]
    def role?(base_role)
      ROLES.index(base_role.to_s) <= ROLES.index(role)
    end
end
