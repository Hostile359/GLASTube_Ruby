class PostPolicy < ApplicationPolicy
  def new?
    user&.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
