class Ability
  include CanCan::Ability

  #can [:create, :read, :update, :destroy], Balance
  def initialize(user)
    if user.kind == 'Gerente' && user.status == 'Ativo'      
      can :manage, :all
      can [:create, :read], Product, user_id: user.id
    elsif user.kind == 'Gerente' && user.status == 'Inativo'
      can :dashboard, :all
      can :access, :rails_admin 
      can :read, :all
    elsif user.kind == 'Usuário' && user.status == 'Ativo'
      can :dashboard, :all
      can :access, :rails_admin
      can :read, :all
    else
      can :dashboard, :all
      can :access, :rails_admin
    end  
  end
end
