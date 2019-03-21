class Club < ApplicationRecord
  # Direct associations

  has_many   :players,
             :dependent => :destroy

  belongs_to :league

  # Indirect associations

  # Validations

end
