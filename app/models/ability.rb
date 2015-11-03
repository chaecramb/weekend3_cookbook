class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    
    if user.role? 'admin'
        can :manage, :all
    else
        can :read, Recipe
        can :read, Ingredient
        can :read, Quantity
        can :read, Category
    end
  end
end
