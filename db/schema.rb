# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "batch_reports", :id => false, :force => true do |t|
    t.integer "batch_id"
    t.text    "report_name"
  end

  add_index "batch_reports", ["batch_id", "report_name"], :name => "sqlite_autoindex_batch_reports_1", :unique => true

  create_table "batches", :primary_key => "batch_id", :force => true do |t|
    t.integer "protocol_id"
    t.text    "name"
    t.text    "description"
  end

  create_table "chain_endings", :id => false, :force => true do |t|
    t.binary  "struct_id", :null => false
    t.integer "end_pos"
  end

# Could not dump table "charge_charge_pairs" because of following StandardError
#   Unknown type 'REAL' for column 'B1q1q2_angle'

  create_table "dssp_codes", :primary_key => "code", :force => true do |t|
    t.text "label", :null => false
  end

  add_index "dssp_codes", ["code"], :name => "sqlite_autoindex_dssp_codes_1", :unique => true

  create_table "features_reporters", :primary_key => "report_name", :force => true do |t|
  end

  add_index "features_reporters", ["report_name"], :name => "sqlite_autoindex_features_reporters_1", :unique => true

  create_table "fold_trees", :id => false, :force => true do |t|
    t.binary  "struct_id",            :null => false
    t.integer "start_res"
    t.text    "start_atom"
    t.integer "stop_res"
    t.text    "stop_atom"
    t.integer "label"
    t.integer "keep_stub_in_residue"
  end

  create_table "hbond_chem_types", :primary_key => "chem_type", :force => true do |t|
    t.text "label"
  end

  add_index "hbond_chem_types", ["chem_type"], :name => "sqlite_autoindex_hbond_chem_types_1", :unique => true

  create_table "hbond_dehydrons", :primary_key => "struct_id", :force => true do |t|
    t.integer "hbond_id"
    t.integer "wrapping_count"
  end

  add_index "hbond_dehydrons", ["struct_id", "hbond_id"], :name => "sqlite_autoindex_hbond_dehydrons_1", :unique => true

  create_table "hbond_evaluation_types", :primary_key => "database_tag", :force => true do |t|
    t.text "don_chem_type"
    t.text "acc_chem_type"
    t.text "separation"
    t.text "AHdist_short_fade"
    t.text "AHdist_long_fade"
    t.text "cosBAH_fade"
    t.text "cosAHD_fade"
    t.text "AHdist"
    t.text "cosBAH_short"
    t.text "cosBAH_long"
    t.text "cosAHD_short"
    t.text "cosAHD_long"
    t.text "weight_type"
  end

  add_index "hbond_evaluation_types", ["database_tag", "don_chem_type", "acc_chem_type", "separation"], :name => "sqlite_autoindex_hbond_evaluation_types_1", :unique => true

# Could not dump table "hbond_fade_interval" because of following StandardError
#   Unknown type 'REAL' for column 'min0'

# Could not dump table "hbond_geom_coords" because of following StandardError
#   Unknown type 'REAL' for column 'AHdist'

# Could not dump table "hbond_lennard_jones" because of following StandardError
#   Unknown type 'REAL' for column 'don_acc_atrE'

# Could not dump table "hbond_polynomial_1d" because of following StandardError
#   Unknown type 'REAL' for column 'xmin'

# Could not dump table "hbond_site_atoms" because of following StandardError
#   Unknown type 'REAL' for column 'atm_x'

# Could not dump table "hbond_site_environment" because of following StandardError
#   Unknown type 'REAL' for column 'sasa_r100'

  create_table "hbond_sites", :primary_key => "struct_id", :force => true do |t|
    t.integer "site_id"
    t.integer "resNum"
    t.text    "HBChemType"
    t.integer "atmNum"
    t.integer "is_donor"
    t.integer "chain"
    t.text    "resType"
    t.text    "atmType"
  end

  add_index "hbond_sites", ["struct_id", "site_id"], :name => "sqlite_autoindex_hbond_sites_1", :unique => true

# Could not dump table "hbond_sites_pdb" because of following StandardError
#   Unknown type 'REAL' for column 'heavy_atom_temperature'

# Could not dump table "hbonds" because of following StandardError
#   Unknown type 'REAL' for column 'energy'

# Could not dump table "jumps" because of following StandardError
#   Unknown type 'REAL' for column 'xx'

# Could not dump table "nonprotein_residue_angles" because of following StandardError
#   Unknown type 'REAL' for column 'chiangle'

# Could not dump table "nonprotein_residue_conformation" because of following StandardError
#   Unknown type 'REAL' for column 'phi'

  create_table "pose_conformations", :id => false, :force => true do |t|
    t.binary  "struct_id",          :null => false
    t.text    "annotated_sequence"
    t.integer "total_residue"
    t.integer "fullatom"
  end

# Could not dump table "protein_residue_conformation" because of following StandardError
#   Unknown type 'REAL' for column 'phi'

  create_table "protocols", :primary_key => "protocol_id", :force => true do |t|
    t.text "specified_options"
    t.text "command_line"
    t.text "svn_url"
    t.text "svn_version"
    t.text "script"
  end

# Could not dump table "residue_atom_coords" because of following StandardError
#   Unknown type 'REAL' for column 'x'

# Could not dump table "residue_burial" because of following StandardError
#   Unknown type 'REAL' for column 'neigh_vect_raw'

# Could not dump table "residue_pairs" because of following StandardError
#   Unknown type 'REAL' for column 'actcoord_dist'

# Could not dump table "residue_pdb_confidence" because of following StandardError
#   Unknown type 'REAL' for column 'max_temperature'

  create_table "residue_pdb_identification", :primary_key => "struct_id", :force => true do |t|
    t.integer "residue_number",     :null => false
    t.text    "chain_id",           :null => false
    t.text    "insertion_code",     :null => false
    t.integer "pdb_residue_number", :null => false
  end

  add_index "residue_pdb_identification", ["struct_id", "residue_number"], :name => "sqlite_autoindex_residue_pdb_identification_1", :unique => true

  create_table "residue_secondary_structure", :primary_key => "struct_id", :force => true do |t|
    t.integer "resNum", :null => false
    t.text    "dssp"
  end

  add_index "residue_secondary_structure", ["struct_id", "resNum"], :name => "sqlite_autoindex_residue_secondary_structure_1", :unique => true

# Could not dump table "residue_type" because of following StandardError
#   Unknown type 'REAL' for column 'nbr_radius'

# Could not dump table "residue_type_atom" because of following StandardError
#   Unknown type 'REAL' for column 'charge'

  create_table "residue_type_bond", :primary_key => "residue_type_set_name", :force => true do |t|
    t.text    "residue_type_name"
    t.integer "atom1"
    t.integer "atom2"
    t.integer "bond_type"
  end

  add_index "residue_type_bond", ["residue_type_set_name", "residue_type_name", "atom1", "atom2"], :name => "sqlite_autoindex_residue_type_bond_1", :unique => true

  create_table "residue_type_chi", :primary_key => "residue_type_set_name", :force => true do |t|
    t.text    "residue_type_name"
    t.text    "atom1"
    t.text    "atom2"
    t.text    "atom3"
    t.text    "atom4"
    t.integer "chino"
  end

  add_index "residue_type_chi", ["residue_type_set_name", "residue_type_name", "atom1", "atom2", "atom3", "atom4"], :name => "sqlite_autoindex_residue_type_chi_1", :unique => true

# Could not dump table "residue_type_chi_rotamer" because of following StandardError
#   Unknown type 'REAL' for column 'mean'

  create_table "residue_type_cut_bond", :primary_key => "residue_type_set_name", :force => true do |t|
    t.text    "residue_type_name"
    t.integer "atom1"
    t.integer "atom2"
  end

  add_index "residue_type_cut_bond", ["residue_type_set_name", "residue_type_name", "atom1", "atom2"], :name => "sqlite_autoindex_residue_type_cut_bond_1", :unique => true

# Could not dump table "residue_type_icoor" because of following StandardError
#   Unknown type 'REAL' for column 'phi'

  create_table "residue_type_property", :primary_key => "residue_type_set_name", :force => true do |t|
    t.text "residue_type_name"
    t.text "property"
  end

  add_index "residue_type_property", ["residue_type_set_name", "residue_type_name", "property"], :name => "sqlite_autoindex_residue_type_property_1", :unique => true

# Could not dump table "residue_type_proton_chi" because of following StandardError
#   Unknown type 'REAL' for column 'sample'

  create_table "residue_type_variant_type", :primary_key => "residue_type_set_name", :force => true do |t|
    t.text "residue_type_name"
    t.text "variant_type"
  end

  add_index "residue_type_variant_type", ["residue_type_set_name", "residue_type_name", "variant_type"], :name => "sqlite_autoindex_residue_type_variant_type_1", :unique => true

  create_table "residues", :primary_key => "struct_id", :force => true do |t|
    t.integer "resNum",   :null => false
    t.text    "name3",    :null => false
    t.text    "res_type", :null => false
  end

  add_index "residues", ["struct_id", "resNum"], :name => "sqlite_autoindex_residues_1", :unique => true

# Could not dump table "salt_bridges" because of following StandardError
#   Unknown type 'REAL' for column 'psi'

  create_table "sampled_structures", :id => false, :force => true do |t|
    t.integer "batch_id"
    t.text    "tag"
    t.text    "input_tag"
  end

  add_index "sampled_structures", ["tag", "batch_id"], :name => "sqlite_autoindex_sampled_structures_1", :unique => true

  create_table "secondary_structure_segments", :primary_key => "struct_id", :force => true do |t|
    t.integer "segment_id",    :null => false
    t.integer "residue_begin", :null => false
    t.integer "residue_end",   :null => false
    t.text    "dssp",          :null => false
  end

  add_index "secondary_structure_segments", ["struct_id", "segment_id"], :name => "sqlite_autoindex_secondary_structure_segments_1", :unique => true

# Could not dump table "smotifs" because of following StandardError
#   Unknown type 'REAL' for column 'distance'

  create_table "structures", :primary_key => "struct_id", :force => true do |t|
    t.integer "batch_id"
    t.text    "tag"
    t.text    "input_tag"
  end

  add_index "structures", ["struct_id"], :name => "sqlite_autoindex_structures_1", :unique => true

# Could not dump table "unrecognized_atoms" because of following StandardError
#   Unknown type 'REAL' for column 'coord_x'

# Could not dump table "unrecognized_neighbors" because of following StandardError
#   Unknown type 'REAL' for column 'unrecognized_residue_number'

# Could not dump table "unrecognized_residues" because of following StandardError
#   Unknown type 'REAL' for column 'max_temperature'

end
