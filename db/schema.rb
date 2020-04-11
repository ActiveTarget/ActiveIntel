# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_10_170440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_attack_builds", force: :cascade do |t|
    t.string "buildable_id"
    t.string "platform_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "buildable_type"
  end

  create_table "active_attack_data_sources", force: :cascade do |t|
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_attack_detections", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_attack_difficulty_for_adversaries", force: :cascade do |t|
    t.string "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_attack_matrices", force: :cascade do |t|
    t.string "bundle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stix_id"
    t.string "name"
    t.text "description"
    t.string "created_by_ref"
  end

  create_table "active_attack_permissions_requireds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_attack_platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_attack_playbooks", force: :cascade do |t|
    t.string "name"
    t.string "bundle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "threat_actor_id"
  end

  create_table "active_attack_tactics", force: :cascade do |t|
    t.string "stix_id"
    t.string "name"
    t.text "description"
    t.string "shortname"
    t.string "created_by_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "matrix_ref"
  end

  create_table "active_attack_versions", force: :cascade do |t|
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_artifacts", force: :cascade do |t|
    t.string "stix_id"
    t.string "type"
    t.string "mime_type"
    t.binary "payload_bin"
    t.string "url"
    t.jsonb "hashes"
    t.jsonb "encryption_algorithm"
    t.string "decryption_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_attack_patterns", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.jsonb "kill_chain_phases"
    t.string "stix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "aliases"
  end

  create_table "active_stix_bcc_refs", force: :cascade do |t|
    t.integer "email_message_id"
    t.integer "email_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_bundled_objects", force: :cascade do |t|
    t.string "bundle_ref"
    t.string "object_ref"
    t.string "object_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_bundles", force: :cascade do |t|
    t.string "stix_id"
    t.jsonb "objects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "spec_version"
  end

  create_table "active_stix_campaigns", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.jsonb "aliases"
    t.datetime "first_seen"
    t.datetime "last_seen"
    t.string "objective"
    t.string "stix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_cc_refs", force: :cascade do |t|
    t.integer "email_message_id"
    t.integer "email_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_course_of_actions", force: :cascade do |t|
    t.string "stix_id"
    t.string "name"
    t.text "description"
    t.string "x_mitre_version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_cyber_observables", force: :cascade do |t|
    t.string "observed_datum_ref"
    t.integer "observable_object_id"
    t.string "cyber_observable_object_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_email_messages", force: :cascade do |t|
    t.boolean "is_multipart"
    t.datetime "date"
    t.string "content_type"
    t.integer "from_ref"
    t.integer "sender_ref"
    t.string "subject"
    t.text "body"
    t.string "raw_email_ref"
    t.jsonb "additional_header_fields"
    t.jsonb "received_lines"
    t.jsonb "body_multipart"
    t.string "observed_datum_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stix_id"
  end

  create_table "active_stix_external_references", force: :cascade do |t|
    t.string "source_name"
    t.text "description"
    t.string "url"
    t.string "external_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_files", force: :cascade do |t|
    t.jsonb "extensions"
    t.string "hashes"
    t.integer "size"
    t.string "name"
    t.string "name_enc"
    t.binary "magic_number_hex"
    t.string "mime_type"
    t.datetime "created_file"
    t.datetime "modified_file"
    t.datetime "accessed_file"
    t.integer "parent_director_ref"
    t.boolean "is_encrypted"
    t.integer "encryption_algorithm"
    t.string "decryption_key"
    t.integer "content_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_identities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "identity_class"
    t.string "stix_id"
    t.jsonb "contact_information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "labels", default: [], array: true
  end

  create_table "active_stix_indicator_labels", force: :cascade do |t|
    t.bigint "label_id"
    t.bigint "indicator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_indicators", force: :cascade do |t|
    t.string "name"
    t.jsonb "labels"
    t.text "description"
    t.string "pattern"
    t.datetime "valid_from"
    t.datetime "valid_until"
    t.jsonb "kill_chain_phases"
    t.string "stix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_intrusion_sets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "first_seen"
    t.datetime "last_seen"
    t.string "stix_id"
    t.jsonb "aliases"
    t.jsonb "object_marking_refs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_kill_chain_phases", force: :cascade do |t|
    t.string "attack_pattern_ref"
    t.integer "phase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_kill_chains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_labels", force: :cascade do |t|
    t.string "name"
    t.integer "open_vocabulary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_malwares", force: :cascade do |t|
    t.string "stix_id"
    t.string "name"
    t.text "description"
    t.string "created_by_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "aliases"
  end

  create_table "active_stix_marking_definitions", force: :cascade do |t|
    t.string "stix_id"
    t.string "definition_type"
    t.jsonb "definition"
    t.string "relationship_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_markups", force: :cascade do |t|
    t.integer "label_id"
    t.integer "labelable_id"
    t.string "labelable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_observed_data", force: :cascade do |t|
    t.string "stix_id"
    t.datetime "last_observed"
    t.integer "number_observed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "first_observed"
  end

  create_table "active_stix_open_vocabularies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_phases", force: :cascade do |t|
    t.integer "kill_chain_id"
    t.string "name"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_recipients", force: :cascade do |t|
    t.integer "email_message_id"
    t.integer "email_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_reference_items", force: :cascade do |t|
    t.integer "external_reference_id"
    t.integer "referrer_id"
    t.string "referrer_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_relationships", force: :cascade do |t|
    t.string "relationship_type"
    t.text "description"
    t.string "source_ref"
    t.string "target_ref"
    t.string "source_type"
    t.string "target_type"
    t.string "stix_id"
    t.jsonb "object_marking_refs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_report_objects", force: :cascade do |t|
    t.string "report_ref"
    t.string "object_ref"
    t.string "object_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_reports", force: :cascade do |t|
    t.string "created_by_ref"
    t.boolean "revoked"
    t.string "name"
    t.text "description"
    t.datetime "published"
    t.string "stix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_threat_actors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "stix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "aliases"
  end

  create_table "active_stix_to_refs", force: :cascade do |t|
    t.integer "email_message_id"
    t.integer "email_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_tools", force: :cascade do |t|
    t.string "stix_id"
    t.string "name"
    t.text "description"
    t.string "created_by_ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "aliases"
  end

  create_table "active_stix_urls", force: :cascade do |t|
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_stix_users", force: :cascade do |t|
    t.string "account"
    t.string "user_id"
    t.string "account_login"
    t.string "account_type"
    t.string "display_name"
    t.boolean "is_service_account"
    t.boolean "is_privileged"
    t.boolean "can_escalate_privs"
    t.boolean "is_disabled"
    t.datetime "account_created"
    t.datetime "account_expires"
    t.datetime "password_last_changed"
    t.datetime "account_first_login"
    t.datetime "account_last_login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
