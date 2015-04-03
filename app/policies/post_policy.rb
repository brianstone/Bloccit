class PostPolicy < ApplicationPolicy

  #this index? will override the index? inherited from ApplicationPolicy
  def index?
    true
  end
end