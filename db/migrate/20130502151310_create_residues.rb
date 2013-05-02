class CreateResidues < ActiveRecord::Migration
  def change
    create_table :residues do |t|
      t.text :name3
      t.text :res_type
      t.integer :resnum
      t.references :structure

      t.timestamps
    end
    add_index :residues, :structure_id
  end
end
