class AgregarColumnaCategoriaid < ActiveRecord::Migration
  def up
    add_column :notas, :categoria_id, :integer
  end

  def down
    remove_column :notas, :categoria_id
  end
end
