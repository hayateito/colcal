class Calevent < ActiveRecord::Base
  belongs_to :combination
  belongs_to :user
end
