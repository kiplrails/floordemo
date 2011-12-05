class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user
      
      if user.role? :superadmin
        can :manage, [User]
      
      
      else
        can :manage, [Role]
      end
    end
  end
