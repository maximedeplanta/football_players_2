class League < ApplicationRecord
  # Direct associations

  has_many   :clubs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
