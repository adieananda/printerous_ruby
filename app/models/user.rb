class User < ApplicationRecord
  include Clearance::User
  belongs_to :Organization
end
