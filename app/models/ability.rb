class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    can :qtip, Word
    if user && user.admin?
      can :manage, :all
    end
  end
end
