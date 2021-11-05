class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    #@user.has_any_role? :HR, :Manager
  end

  def edit?
    #update?
  end

  def update?
    #@user.has_any_role? :HR
  end
end
