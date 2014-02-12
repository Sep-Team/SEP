class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
      user ||= User.new
      if user
       if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :jefe
        can :manage, [Evaluacion]
      elsif user.has_role? :aprendiz
        can :manage, [Estudiante, Bitacora, Actividad, AsignarProy, User]

      end
    end
  end
end


   
 

