class RemoveFieldFromTableName < ActiveRecord::Migration
  def change
    remove_column :dogs, :is_dead, :boolean
    remove_column :dogs, :deathdate, :date
  end
end
