class Student < ApplicationRecord
    # Validations (optional, but recommended)
    validates :firstname, presence: true
    validates :lastname, presence: true
  
  end
  