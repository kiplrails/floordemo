class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user

      if user.role? :super
        can :manage, :all
        
      elsif user.role? :admin
        can :update, :all
        can :new, :all
        can :read, [User]
        can :manage, [User]
        
        
      elsif user.role? :staff
        can :read, [User]
        can :manage, [User]
        can :new, [Customer]
        can :manage, [Customer]
        
      else
        can :manage, [Role]
      end
    end
  end
