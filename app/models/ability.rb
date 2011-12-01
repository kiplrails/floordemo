class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user

      if user.role? :superadmin
        can :manage, :all
      elsif user.role? :administrator
        can :update, :all
        can :new, [User]
        can :read, [User]
      elsif user.role? :operator
        can :read, [User]
        
      end
    end
  end
