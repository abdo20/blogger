class User < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, massage: "should match confirmation", if: :password
end
