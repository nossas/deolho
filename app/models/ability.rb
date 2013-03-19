class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    can :qtip, Word
    can :highlight, Post
    if user && user.admin?
      can :manage, :all
    end
  end
end
