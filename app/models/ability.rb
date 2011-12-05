class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user
      
      if user.role? :superadmin
        can :manage, :all
      
      elsif user.role? :staff
        can :read, [User]
        
      else
        can :manage, [Role]
      end
    end
  end
