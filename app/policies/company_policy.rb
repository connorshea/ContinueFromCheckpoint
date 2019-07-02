# typed: true
class CompanyPolicy < ApplicationPolicy
  extend T::Sig
  
  sig { returns(T.nilable(User)) }
  attr_reader :user
  sig { returns(T.nilable(Company)) }
  attr_reader :company

  sig { params(user: User, company: Company).void }
  def initialize(user, company)
    @user = user
    @company = company
  end

  sig { returns(T::Boolean) }
  def index?
    true
  end

  sig { returns(T::Boolean) }
  def show?
    true
  end

  sig { returns(T::Boolean) }
  def create?
    user.present?
  end

  sig { returns(T::Boolean) }
  def update?
    user.present?
  end

  sig { returns(T::Boolean) }
  def destroy?
    user.present?
  end

  sig { returns(T::Boolean) }
  def search?
    user.present?
  end
end
