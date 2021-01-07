class PostPolicy < ApplicationPolicy
  def new?
    user&.present?
  end

  def index?
    true
  end

  def show?
    true
  end

  def edit?
    true if user.present? && user == post.user || user.admin?
  end

  def update?
    true if user.present? && user == post.user || user.admin?
  end

  def destroy?
    true if user.present? && user == post.user || user.admin?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def post
    record
  end
end
