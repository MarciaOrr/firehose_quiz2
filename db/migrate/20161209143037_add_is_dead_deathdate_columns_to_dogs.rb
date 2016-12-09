class AddIsDeadDeathdateColumnsToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :is_dead, :boolean, :default => false
    add_column :dogs, :deathdate, :date
  end
end
