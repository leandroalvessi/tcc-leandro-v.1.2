class Ability
  include CanCan::Ability

  def initialize(user)
    if user.kind == 'Gerente' && user.status == 'Ativo'      
      can :manage, :all
    elsif user.kind == 'Gerente' && user.status == 'Inativo'
      can :dashboard, :all
      can :access, :rails_admin 
      #can [:create, :read, :update, :destroy], Balance
      can :read, Balance, status: :Ativo
      can :read, Product, user_id: user.id
      can :read, ProductKind
      can :read, User
    elsif user.kind == 'Usuário' && user.status == 'Ativo'
      can :dashboard, :all
      can :access, :rails_admin
      #can [:create, :read, :update, :destroy], Balance
      can :read, Balance, status: :Ativo
      can :read, ProductKind
      can :read, User
      can [:create, :read], Product, user_id: user.id
    else
      can :dashboard, :all
      can :access, :rails_admin
    end  
  end
end
