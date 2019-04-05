class Ability
  include CanCan::Ability

  def initialize(user)
    if user.kind == 'Gerente' && user.status == 'Ativo'      
      can :manage, :all
    elsif user.kind == 'Gerente' && user.status == 'Inativo'
      can :dashboard, :all
      can :access, :rails_admin 
      #can [:create, :read, :update, :destroy], Balance
      can :read, :all
    elsif user.kind == 'Usuário' && user.status == 'Ativo'
      can :dashboard, :all
      can :access, :rails_admin
      #can [:create, :read, :update, :destroy], Balance
      can :read, :all
      can [:create, :read], Product, user_id: user.id
    else
      can :dashboard, :all
      can :access, :rails_admin
    end  
  end
end
