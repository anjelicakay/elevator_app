class Building < ApplicationRecord
  has_one :elevator     #currently only one elevator but could have many
end
