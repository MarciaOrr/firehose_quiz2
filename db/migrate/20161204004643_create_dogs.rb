class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|

      t.string    :name
      t.string    :breed
      t.string    :nickname
      t.date      :birthday
      t.text      :story

      t.timestamps
    end
  end
end
