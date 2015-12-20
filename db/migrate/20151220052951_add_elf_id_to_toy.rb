class AddElfIdToToy < ActiveRecord::Migration
  def change
    add_column :toys, :elf_id, :integer
  end
end
