class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == "admin"
      can :manage, :all
    elsif user.role == "moderator"
      can :create, :all
      can :update, :all
    elsif user.role == "author"
      can :create, Blog
      can :update, Blog
    elsif user.role == "normal"

    end
    can :read, :all
  end
end
