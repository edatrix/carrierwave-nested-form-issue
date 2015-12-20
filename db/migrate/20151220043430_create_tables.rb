class CreateTables < ActiveRecord::Migration
  def change
    create_table :elves do |t|
      t.string :name
    end

    create_table :toys do |t|
      t.string :name
      t.string :image
    end
  end
end
