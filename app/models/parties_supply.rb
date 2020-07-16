class PartiesSupply < ApplicationRecord
  belongs_to :supply
  belongs_to :party
  accepts_nested_attributes_for :supply
  delegate :name, to: :supply
  def supply_attributes=(params)
    if params[:name].present?
      self.supply =  Supply.find_or_create_by(params)
    end
  end
end
