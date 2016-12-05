class AlterDogsAddIsDeadColumn < ActiveRecord::Migration
  def change
    add_column :dogs, :is_dead, :boolean, :default => false
  end
end
