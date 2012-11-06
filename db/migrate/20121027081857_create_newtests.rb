class CreateNewtests < ActiveRecord::Migration
  def change
    create_table :newtests do |t|
      t.string :name

      t.timestamps
    end
  end
end
