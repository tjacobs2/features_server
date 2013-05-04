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

ActiveRecord::Schema.define(:version => 20130503192333) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

# Could not dump table "atom_pairs" because of following StandardError
#   Unknown type 'REAL' for column 'lower_break'

# Could not dump table "atom_type_extra_parameters" because of following StandardError
#   Unknown type 'REAL' for column 'value'

  create_table "atom_type_properties", :primary_key => "atom_type_set_name", :force => true do |t|
    t.text "name"
    t.text "property"
  end

  add_index "atom_type_properties", ["atom_type_set_name", "name", "property"], :name => "sqlite_autoindex_atom_type_properties_1", :unique => true

  create_table "atom_type_property_values", :primary_key => "property", :force => true do |t|
  end

  add_index "atom_type_property_values", ["property"], :name => "sqlite_autoindex_atom_type_property_values_1", :unique => true

# Could not dump table "atom_types" because of following StandardError
#   Unknown type 'REAL' for column 'lennard_jones_radius'

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

  create_table "beta_turns", :primary_key => "struct_id", :force => true do |t|
    t.integer "residue_begin"
    t.text    "turn_type"
  end

  add_index "beta_turns", ["struct_id", "residue_begin"], :name => "sqlite_autoindex_beta_turns_1", :unique => true

  create_table "chain_endings", :id => false, :force => true do |t|
    t.integer "struct_id", :null => false
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
    t.integer "struct_id",            :null => false
    t.integer "start_res"
    t.text    "start_atom"
    t.integer "stop_res"
    t.text    "stop_atom"
    t.integer "label"
    t.integer "keep_stub_in_residue"
  end

# Could not dump table "geometric_solvation" because of following StandardError
#   Unknown type 'REAL' for column 'geometric_solvation_exact'

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

# Could not dump table "loop_anchor_transforms" because of following StandardError
#   Unknown type 'REAL' for column 'x'

# Could not dump table "loop_anchor_transforms_three_res" because of following StandardError
#   Unknown type 'REAL' for column 'x'

  create_table "loop_anchors", :primary_key => "struct_id", :force => true do |t|
    t.integer "residue_begin"
    t.integer "residue_end"
  end

  add_index "loop_anchors", ["struct_id", "residue_begin", "residue_end"], :name => "sqlite_autoindex_loop_anchors_1", :unique => true

  create_table "pose_comments", :primary_key => "struct_id", :force => true do |t|
    t.text "comment_key", :null => false
    t.text "value",       :null => false
  end

  add_index "pose_comments", ["struct_id", "comment_key"], :name => "sqlite_autoindex_pose_comments_1", :unique => true

  create_table "pose_conformations", :id => false, :force => true do |t|
    t.integer "struct_id",          :null => false
    t.text    "annotated_sequence"
    t.integer "total_residue"
    t.integer "fullatom"
  end

  create_table "prot_res_conf", :id => false, :force => true do |t|
    t.integer "struct_id"
    t.integer "seqpos"
    t.text    "secstruct"
    t.float   "phi"
    t.float   "psi"
    t.float   "omega"
    t.float   "chi1"
    t.float   "chi2"
    t.float   "chi3"
    t.float   "chi4"
  end

# Could not dump table "protein_backbone_atom_atom_pairs" because of following StandardError
#   Unknown type 'REAL' for column 'N_N_dist'

# Could not dump table "protein_backbone_torsion_angles" because of following StandardError
#   Unknown type 'REAL' for column 'phi'

# Could not dump table "protein_residue_conformation" because of following StandardError
#   Unknown type 'REAL' for column 'phi'

  create_table "protocols", :primary_key => "protocol_id", :force => true do |t|
    t.text "specified_options"
    t.text "command_line"
    t.text "svn_url"
    t.text "svn_version"
    t.text "script"
  end

# Could not dump table "radius_of_gyration" because of following StandardError
#   Unknown type 'REAL' for column 'radius_of_gyration'

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

# Could not dump table "residue_scores_1b" because of following StandardError
#   Unknown type 'REAL' for column 'score_value'

# Could not dump table "residue_scores_2b" because of following StandardError
#   Unknown type 'REAL' for column 'score_value'

# Could not dump table "residue_scores_lr_2b" because of following StandardError
#   Unknown type 'REAL' for column 'score_value'

  create_table "residue_secondary_structure", :primary_key => "struct_id", :force => true do |t|
    t.integer "resNum", :null => false
    t.text    "dssp"
  end

  add_index "residue_secondary_structure", ["struct_id", "resNum"], :name => "sqlite_autoindex_residue_secondary_structure_1", :unique => true

# Could not dump table "residue_total_scores" because of following StandardError
#   Unknown type 'REAL' for column 'score_value'

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

  create_table "score_function_method_options", :primary_key => "batch_id", :force => true do |t|
    t.text "score_function_name"
    t.text "option_key"
    t.text "option_value"
  end

  add_index "score_function_method_options", ["batch_id", "score_function_name", "option_key"], :name => "sqlite_autoindex_score_function_method_options_1", :unique => true

# Could not dump table "score_function_weights" because of following StandardError
#   Unknown type 'REAL' for column 'weight'

  create_table "score_types", :primary_key => "batch_id", :force => true do |t|
    t.integer "score_type_id",   :null => false
    t.text    "score_type_name", :null => false
  end

  add_index "score_types", ["batch_id", "score_type_id"], :name => "sqlite_autoindex_score_types_1", :unique => true

  create_table "secondary_structure_segments", :primary_key => "struct_id", :force => true do |t|
    t.integer "segment_id",    :null => false
    t.integer "residue_begin", :null => false
    t.integer "residue_end",   :null => false
    t.text    "dssp",          :null => false
  end

  add_index "secondary_structure_segments", ["struct_id", "segment_id"], :name => "sqlite_autoindex_secondary_structure_segments_1", :unique => true

# Could not dump table "smotifs" because of following StandardError
#   Unknown type 'REAL' for column 'distance'

  create_table "structure_scores", :primary_key => "batch_id", :force => true do |t|
    t.integer "struct_id",     :null => false
    t.integer "score_type_id", :null => false
    t.integer "score_value",   :null => false
  end

  add_index "structure_scores", ["batch_id", "struct_id", "score_type_id"], :name => "sqlite_autoindex_structure_scores_1", :unique => true

  create_table "structures", :primary_key => "struct_id", :force => true do |t|
    t.integer "batch_id"
    t.text    "tag"
    t.text    "input_tag"
  end

end
