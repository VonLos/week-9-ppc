class PartiesSupply < ApplicationRecord
  belongs_to :supply
  belongs_to :party

  delegate :name, to: :supply
end
