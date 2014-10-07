class UserRumour < ActiveRecord::Base
  belongs_to :rumour
  belongs_to :user
end
