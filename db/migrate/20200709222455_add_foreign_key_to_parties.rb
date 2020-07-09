class AddForeignKeyToParties < ActiveRecord::Migration[5.2]
  def change
    add_reference :parties, :category, foreign_key: true
  end
end
