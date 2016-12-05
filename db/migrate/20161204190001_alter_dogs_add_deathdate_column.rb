class AlterDogsAddDeathdateColumn < ActiveRecord::Migration
  def change
    add_column :dogs, :deathdate, :date
  end
end
