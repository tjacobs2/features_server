class CreateProteinResidueConformations < ActiveRecord::Migration
  def change
    create_table :protein_residue_conformations do |t|

      t.timestamps
    end
  end
end
