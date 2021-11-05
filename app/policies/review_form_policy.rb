class ReviewFormPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #if @user.has_role? :HR
      #scope.all

      en
    end
  end

  def index?
    true
  end
end
