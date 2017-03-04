class Ability
  include CanCan::Ability

  def initialize(current_user)
    if current_user
      if current_user.kind == 'user'
        can :access, :rails_admin
        can :dashboard
        can :manage, User, id: current_user.id
      elsif current_user.kind == 'manager'
        can :manage, :all
      elsif current_user.kind == 'other'
        can :read, :all
      end
    end
  end
end
