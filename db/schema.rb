# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "away_messages", primary_key: "_id", force: :cascade do |t|
    t.text "jid", null: false
  end

  create_table "away_messages_exemptions", primary_key: "_id", force: :cascade do |t|
    t.text "jid", null: false
    t.boolean "exempt"
    t.integer "exempt_until"
  end

  create_table "call_log", primary_key: "_id", force: :cascade do |t|
    t.integer "jid_row_id"
    t.integer "from_me"
    t.text "call_id"
    t.integer "transaction_id"
    t.integer "timestamp"
    t.integer "video_call"
    t.integer "duration"
    t.integer "call_result"
    t.integer "bytes_transferred"
    t.integer "group_jid_row_id", default: 0, null: false
    t.integer "is_joinable_group_call"
    t.integer "call_creator_device_jid_row_id", default: 0, null: false
    t.index ["jid_row_id", "from_me", "call_id", "transaction_id"], name: "call_log_key_index", unique: true
  end

  create_table "call_log_participant_v2", primary_key: "_id", force: :cascade do |t|
    t.integer "call_log_row_id"
    t.integer "jid_row_id"
    t.integer "call_result"
    t.index ["call_log_row_id", "jid_row_id"], name: "call_log_participant_key_index", unique: true
  end

  # Could not dump table "chat" because of following StandardError
  #   Unknown type 'REAL' for column 'gen'
  #
  # CREATE TABLE chat (
    # _id INTEGER PRIMARY KEY AUTOINCREMENT,
    # jid_row_id INTEGER UNIQUE,
    # hidden INTEGER,
    # subject TEXT,
    # created_timestamp INTEGER,
    # display_message_row_id INTEGER,
    # last_message_row_id INTEGER,
    # last_read_message_row_id INTEGER,
    # last_read_receipt_sent_message_row_id INTEGER,
    # last_important_message_row_id INTEGER,
    # archived INTEGER,
    # sort_timestamp INTEGER,
    # mod_tag INTEGER,
    # gen REAL,
    # spam_detection INTEGER,
    # unseen_earliest_message_received_time INTEGER,
    # unseen_message_count INTEGER,
    # unseen_missed_calls_count INTEGER,
    # unseen_row_count INTEGER,
    # plaintext_disabled INTEGER,
    # vcard_ui_dismissed INTEGER,
    # change_number_notified_message_row_id INTEGER,
    # show_group_description INTEGER,
    # ephemeral_expiration INTEGER,
    # last_read_ephemeral_message_row_id INTEGER,
    # ephemeral_setting_timestamp INTEGER
  # )

  create_table "chat", primary_key: "_id", force: :cascade do |t|
    t.integer "jid_row_id"
    t.integer "hidden"
    t.text "subject"
    t.integer "created_timestamp"
    t.integer "display_message_row_id"
    t.integer "last_message_row_id"
    t.integer "last_read_message_row_id"
    t.integer "last_read_receipt_sent_message_row_id"
    t.integer "last_important_message_row_id"
    t.integer "archived"
    t.integer "sort_timestamp"
    t.integer "mod_tag"
    t.float "gen"
    t.integer "spam_detection"
    t.integer "unseen_earliest_message_received_time"
    t.integer "unseen_message_count"
    t.integer "unseen_missed_calls_count"
    t.integer "unseen_row_count"
    t.integer "plaintext_disabled"
    t.integer "vcard_ui_dismissed"
    t.integer "change_number_notified_message_row_id"
    t.integer "show_group_description"
    t.integer "ephemeral_expiration"
    t.integer "last_read_ephemeral_message_row_id"
    t.integer "ephemeral_setting_timestamp"
  end

  # Could not dump table "chat_list" because of following StandardError
  #   Unknown type 'REAL' for column 'gen'
  #
  # CREATE TABLE chat_list (
    # _id INTEGER PRIMARY KEY AUTOINCREMENT,
    # key_remote_jid TEXT UNIQUE,
    # message_table_id INTEGER,
    # subject TEXT,
    # creation INTEGER,
    # last_read_message_table_id INTEGER,
    # last_read_receipt_sent_message_table_id INTEGER,
    # archived INTEGER,
    # sort_timestamp INTEGER,
    # mod_tag INTEGER,
    # gen REAL,
    # my_messages INTEGER,
    # plaintext_disabled BOOLEAN,
    # last_message_table_id INTEGER,
    # unseen_message_count INTEGER,
    # unseen_missed_calls_count INTEGER,
    # unseen_row_count INTEGER,
    # vcard_ui_dismissed INTEGER,
    # deleted_message_id INTEGER,
    # deleted_starred_message_id INTEGER,
    # deleted_message_categories TEXT,
    # change_number_notified_message_id INTEGER,
    # last_important_message_table_id INTEGER,
    # show_group_description INTEGER,
    # unseen_earliest_message_received_time INTEGER,
    # ephemeral_expiration INTEGER,
    # last_read_ephemeral_message_table_id INTEGER,
    # ephemeral_setting_timestamp INTEGER
  # )

  create_table "chat_list", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid"
    t.integer "message_table_id"
    t.text "subject"
    t.integer "creation"
    t.integer "last_read_message_table_id"
    t.integer "last_read_receipt_sent_message_table_id"
    t.integer "archived"
    t.integer "sort_timestamp"
    t.integer "mod_tag"
    t.float "gen"
    t.integer "my_messages"
    t.boolean "plaintext_disabled"
    t.integer "last_message_table_id"
    t.integer "unseen_message_count"
    t.integer "unseen_missed_calls_count"
    t.integer "unseen_row_count"
    t.integer "vcard_ui_dismissed"
    t.integer "deleted_message_id"
    t.integer "deleted_starred_message_id"
    t.text "deleted_message_categories"
    t.integer "change_number_notified_message_id"
    t.integer "last_important_message_table_id"
    t.integer "show_group_description"
    t.integer "unseen_earliest_message_received_time"
    t.integer "ephemeral_expiration"
    t.integer "last_read_ephemeral_message_table_id"
    t.integer "ephemeral_setting_timestamp"
  end

  create_table "conversion_tuples", primary_key: "jid_row_id", force: :cascade do |t|
    t.text "data"
    t.text "source"
    t.integer "biz_count"
    t.boolean "has_user_sent_last_message"
    t.integer "last_interaction"
  end

  create_table "deleted_chat_job", primary_key: "_id", force: :cascade do |t|
    t.integer "chat_row_id", null: false
    t.integer "block_size"
    t.integer "deleted_message_row_id"
    t.integer "deleted_starred_message_row_id"
    t.boolean "deleted_messages_remove_files"
    t.integer "deleted_categories_message_row_id"
    t.integer "deleted_categories_starred_message_row_id"
    t.boolean "deleted_categories_remove_files"
    t.text "deleted_message_categories"
    t.index ["chat_row_id", "_id"], name: "deleted_chat_job_index"
  end

  create_table "deleted_chat_jobs", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid", null: false
    t.integer "block_size"
    t.integer "deleted_message_id"
    t.integer "deleted_starred_message_id"
    t.text "deleted_message_categories"
    t.boolean "delete_files"
    t.index ["key_remote_jid", "_id"], name: "deleted_chat_jobs_index"
  end

  create_table "frequent", primary_key: "_id", force: :cascade do |t|
    t.integer "jid_row_id", null: false
    t.integer "type", null: false
    t.integer "message_count", null: false
    t.index ["jid_row_id", "type"], name: "frequent_index", unique: true
  end

  create_table "frequents", primary_key: "_id", force: :cascade do |t|
    t.text "jid", null: false
    t.integer "type", null: false
    t.integer "message_count", null: false
  end

  create_table "group_notification_version", primary_key: "group_jid_row_id", force: :cascade do |t|
    t.integer "subject_timestamp", null: false
    t.integer "announcement_version", null: false
    t.integer "participant_version", null: false
    t.index ["group_jid_row_id"], name: "group_notification_version_index", unique: true
  end

  create_table "group_participant_device", primary_key: "_id", force: :cascade do |t|
    t.integer "group_participant_row_id", null: false
    t.integer "device_jid_row_id", null: false
    t.integer "sent_sender_key"
    t.index ["group_participant_row_id", "device_jid_row_id"], name: "group_participant_device_index", unique: true
  end

  create_table "group_participant_user", primary_key: "_id", force: :cascade do |t|
    t.integer "group_jid_row_id", null: false
    t.integer "user_jid_row_id", null: false
    t.integer "rank"
    t.integer "pending"
    t.index ["group_jid_row_id", "user_jid_row_id"], name: "group_participant_user_index", unique: true
  end

  create_table "group_participants", primary_key: "_id", force: :cascade do |t|
    t.text "gjid", null: false
    t.text "jid", null: false
    t.integer "admin"
    t.integer "pending"
    t.integer "sent_sender_key"
    t.index ["gjid", "jid"], name: "group_participants_index", unique: true
  end

  create_table "group_participants_history", primary_key: "_id", force: :cascade do |t|
    t.datetime "timestamp", null: false
    t.text "gjid", null: false
    t.text "jid", null: false
    t.integer "action", null: false
    t.text "old_phash", null: false
    t.text "new_phash", null: false
    t.index ["gjid"], name: "group_participants_history_index"
  end

  create_table "jid", primary_key: "_id", force: :cascade do |t|
    t.text "user", null: false
    t.text "server", null: false
    t.integer "agent"
    t.integer "type"
    t.text "raw_string"
    t.integer "device"
    t.index ["raw_string"], name: "jid_raw_string_index", unique: true
    t.index ["user", "server", "agent", "device", "type"], name: "jid_key_new_index", unique: true
  end

  create_table "keywords", primary_key: "_id", force: :cascade do |t|
    t.text "keyword", null: false
  end

  create_table "labeled_jid", primary_key: "_id", force: :cascade do |t|
    t.integer "label_id", null: false
    t.integer "jid_row_id", null: false
    t.index ["label_id", "jid_row_id"], name: "labeled_jid_index", unique: true
  end

  create_table "labeled_jids", primary_key: "_id", force: :cascade do |t|
    t.integer "label_id", null: false
    t.text "jid"
    t.index ["label_id", "jid"], name: "labeled_jids_index", unique: true
  end

  create_table "labeled_messages", primary_key: "_id", force: :cascade do |t|
    t.integer "label_id", null: false
    t.integer "message_row_id", null: false
    t.index ["label_id", "message_row_id"], name: "labeled_messages_index", unique: true
  end

  # Could not dump table "labeled_messages_fts" because of following StandardError
  #   Unknown type '' for column 'content'
  #
  # CREATE VIRTUAL TABLE labeled_messages_fts USING FTS3()
  create_table "labeled_messages", force: :cascade do |t|
    t.text "content"
  end


  # Could not dump table "labeled_messages_fts_content" because of following StandardError
  #   Unknown type '' for column 'c0content'
  #
  # CREATE TABLE 'labeled_messages_fts_content'(docid INTEGER PRIMARY KEY, 'c0content')
  create_table "labeled_messages_fts_content", primary_key: "docid", force: :cascade do |t|
    t.text "c0content"
  end


  create_table "labeled_messages_fts_segdir", primary_key: ["level", "idx"], force: :cascade do |t|
    t.integer "level"
    t.integer "idx"
    t.integer "start_block"
    t.integer "leaves_end_block"
    t.integer "end_block"
    t.binary "root"
  end

  create_table "labeled_messages_fts_segments", primary_key: "blockid", force: :cascade do |t|
    t.binary "block"
  end

  create_table "labels", primary_key: "_id", force: :cascade do |t|
    t.text "label_name"
    t.integer "predefined_id"
    t.integer "color_id"
    t.index ["label_name"], name: "labels_index", unique: true
  end

  create_table "media_hash_thumbnail", primary_key: "media_hash", id: :text, force: :cascade do |t|
    t.binary "thumbnail"
  end

  create_table "media_refs", primary_key: "_id", force: :cascade do |t|
    t.text "path"
    t.integer "ref_count"
  end

  create_table "message", primary_key: "_id", force: :cascade do |t|
    t.integer "chat_row_id", null: false
    t.integer "from_me", null: false
    t.text "key_id", null: false
    t.integer "sender_jid_row_id"
    t.integer "status"
    t.integer "broadcast"
    t.integer "recipient_count"
    t.text "participant_hash"
    t.integer "origination_flags"
    t.integer "origin"
    t.integer "timestamp"
    t.integer "received_timestamp"
    t.integer "receipt_server_timestamp"
    t.integer "message_type"
    t.text "text_data"
    t.integer "starred"
    t.integer "lookup_tables"
    t.integer "sort_id", default: 0, null: false
    t.index ["chat_row_id", "_id"], name: "message_chat_id_index"
    t.index ["chat_row_id", "from_me", "key_id", "sender_jid_row_id"], name: "message_key_index", unique: true
    t.index ["chat_row_id", "message_type"], name: "message_type_chat_index"
    t.index ["message_type"], name: "message_type_index"
    t.index ["sort_id"], name: "message_sort_id_index"
    t.index ["starred"], name: "message_starred_index"
  end

  create_table "message_ephemeral", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "start_timestamp"
    t.integer "duration", null: false
    t.integer "expire_timestamp", null: false
    t.index ["expire_timestamp"], name: "message_ephemeral_expire_timestamp_index"
  end

  create_table "message_ephemeral_setting", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "setting_duration"
  end

  create_table "message_external_ad_content", primary_key: "message_row_id", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.integer "media_type"
    t.text "thumbnail_url"
    t.binary "full_thumbnail"
    t.binary "micro_thumbnail"
    t.text "media_url"
    t.text "source_type"
    t.text "source_id"
    t.text "source_url"
  end

  create_table "message_forwarded", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "forward_score"
  end

  # Could not dump table "message_ftsv2" because of following StandardError
  #   Unknown type '' for column 'content'
  #
  # CREATE VIRTUAL TABLE message_ftsv2 USING FTS4(content, fts_jid, fts_namespace)
  create_table "message_ftsv2", primary_key: "docid", force: :cascade do |t|
    t.text "content"
    t.text "fts_jid"
    t.text "fts_namespace"
  end


  # Could not dump table "message_ftsv2_content" because of following StandardError
  #   Unknown type '' for column 'c0content'
  #
  # CREATE TABLE 'message_ftsv2_content'(docid INTEGER PRIMARY KEY, 'c0content', 'c1fts_jid', 'c2fts_namespace')
  create_table "message_ftsv2_content", primary_key: "docid", force: :cascade do |t|
    t.text "c0content"
    t.text "c1fts_jid"
    t.text "c2fts_namespace"
  end


  create_table "message_ftsv2_docsize", primary_key: "docid", force: :cascade do |t|
    t.binary "size"
  end

  create_table "message_ftsv2_segdir", primary_key: ["level", "idx"], force: :cascade do |t|
    t.integer "level"
    t.integer "idx"
    t.integer "start_block"
    t.integer "leaves_end_block"
    t.integer "end_block"
    t.binary "root"
  end

  create_table "message_ftsv2_segments", primary_key: "blockid", force: :cascade do |t|
    t.binary "block"
  end

  create_table "message_ftsv2_stat", force: :cascade do |t|
    t.binary "value"
  end

  create_table "message_future", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "version"
    t.binary "data"
  end

  create_table "message_group_invite", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "group_jid_row_id", null: false
    t.integer "admin_jid_row_id", null: false
    t.text "group_name"
    t.text "invite_code"
    t.integer "expiration"
    t.integer "invite_time"
    t.integer "expired"
  end

  create_table "message_link", primary_key: "_id", force: :cascade do |t|
    t.integer "chat_row_id"
    t.integer "message_row_id"
    t.integer "link_index"
    t.index ["message_row_id", "link_index"], name: "message_link_index", unique: true
  end

  # Could not dump table "message_location" because of following StandardError
  #   Unknown type 'REAL' for column 'latitude'
  #
  # CREATE TABLE message_location (
  #   message_row_id INTEGER PRIMARY KEY,
  #   chat_row_id INTEGER,
  #   latitude REAL,
  #   longitude REAL,
  #   place_name TEXT,
  #   place_address TEXT,
  #   url TEXT,
  #   live_location_share_duration INTEGER,
  #   live_location_sequence_number INTEGER,
  #   live_location_final_latitude REAL,
  #   live_location_final_longitude REAL,
  #   live_location_final_timestamp INTEGER,
  #   map_download_status INTEGER
  # )
  create_table "message_location", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "chat_row_id"
    t.float "latitude"
    t.float "longitude"
    t.text "place_name"
    t.text "place_address"
    t.text "url"
    t.integer "live_location_share_duration"
    t.integer "live_location_sequence_number"
    t.float "live_location_final_latitude"
    t.float "live_location_final_longitude"
    t.integer "live_location_final_timestamp"
    t.integer "map_download_status"
  end


  # Could not dump table "message_media" because of following StandardError
  #   Unknown type 'REAL' for column 'thumbnail_height_width_ratio'
  #
  # CREATE TABLE message_media (
  #   message_row_id INTEGER PRIMARY KEY,
  #   chat_row_id INTEGER,
  #   autotransfer_retry_enabled INTEGER,
  #   multicast_id TEXT,
  #   media_job_uuid TEXT,
  #   transferred INTEGER,
  #   transcoded INTEGER,
  #   file_path TEXT,
  #   file_size INTEGER,
  #   suspicious_content INTEGER,
  #   trim_from INTEGER,
  #   trim_to INTEGER,
  #   face_x INTEGER,
  #   face_y INTEGER,
  #   media_key BLOB,
  #   media_key_timestamp INTEGER,
  #   width INTEGER,
  #   height INTEGER,
  #   has_streaming_sidecar INTEGER,
  #   gif_attribution INTEGER,
  #   thumbnail_height_width_ratio REAL,
  #   direct_path TEXT,
  #   first_scan_sidecar BLOB,
  #   first_scan_length INTEGER,
  #   message_url TEXT,
  #   mime_type TEXT,
  #   file_length INTEGER,
  #   media_name TEXT,
  #   file_hash TEXT,
  #   media_duration INTEGER,
  #   page_count INTEGER,
  #   enc_file_hash TEXT,
  #   partial_media_hash TEXT,
  #   partial_media_enc_hash TEXT,
  #   is_animated_sticker INTEGER,
  #   original_file_hash TEXT
  # )
  create_table "message_media", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "chat_row_id"
    t.integer "autotransfer_retry_enabled"
    t.text "multicast_id"
    t.text "media_job_uuid"
    t.integer "transferred"
    t.integer "transcoded"
    t.text "file_path"
    t.integer "file_size"
    t.integer "suspicious_content"
    t.integer "trim_from"
    t.integer "trim_to"
    t.integer "face_x"
    t.integer "face_y"
    t.binary "media_key"
    t.integer "media_key_timestamp"
    t.integer "width"
    t.integer "height"
    t.integer "has_streaming_sidecar"
    t.integer "gif_attribution"
    t.float "thumbnail_height_width_ratio"
    t.text "direct_path"
    t.binary "first_scan_sidecar"
    t.integer "first_scan_length"
    t.text "message_url"
    t.text "mime_type"
    t.integer "file_length"
    t.text "media_name"
    t.text "file_hash"
    t.integer "media_duration"
    t.integer "page_count"
    t.text "enc_file_hash"
    t.text "partial_media_hash"
    t.text "partial_media_enc_hash"
    t.integer "is_animated_sticker"
    t.text "original_file_hash"
  end


  # Could not dump table "message_media_interactive_annotation" because of following StandardError
  #   Unknown type 'REAL' for column 'location_latitude'
  #
  # CREATE TABLE message_media_interactive_annotation (
  #   _id INTEGER PRIMARY KEY AUTOINCREMENT,
  #   message_row_id INTEGER,
  #   location_latitude REAL,
  #   location_longitude REAL,
  #   location_name TEXT,
  #   sort_order INTEGER
  # )
  create_table "message_media_interactive_annotation", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.float "location_latitude"
    t.float "location_longitude"
    t.text "location_name"
    t.integer "sort_order"
  end


  # Could not dump table "message_media_interactive_annotation_vertex" because of following StandardError
  #   Unknown type 'REAL' for column 'x'
  #
  # CREATE TABLE message_media_interactive_annotation_vertex (
  #   _id INTEGER PRIMARY KEY AUTOINCREMENT,
  #   message_media_interactive_annotation_row_id INTEGER,
  #   x REAL,
  #   y REAL,
  #   sort_order INTEGER
  # )
  create_table "message_media_interactive_annotation_vertex", primary_key: "_id", force: :cascade do |t|
    t.integer "message_media_interactive_annotation_row_id"
    t.float "x"
    t.float "y"
    t.integer "sort_order"
  end

  create_table "message_media_vcard_count", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.integer "count"
    t.index ["message_row_id"], name: "message_media_vcard_count_index", unique: true
  end

  create_table "message_mentions", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.integer "jid_row_id"
    t.index ["message_row_id", "jid_row_id"], name: "mentions_index", unique: true
  end

  create_table "message_order", primary_key: "message_row_id", force: :cascade do |t|
    t.text "order_id"
    t.binary "thumbnail"
    t.text "order_title"
    t.integer "item_count"
    t.integer "status"
    t.integer "surface"
    t.text "message"
    t.integer "seller_jid"
    t.text "token"
  end

  create_table "message_orphaned_edit", primary_key: "_id", force: :cascade do |t|
    t.text "key_id", null: false
    t.integer "from_me", null: false
    t.integer "chat_row_id", null: false
    t.integer "sender_jid_row_id", default: 0, null: false
    t.integer "timestamp"
    t.integer "message_type", null: false
    t.text "revoked_key_id"
    t.integer "retry_count"
    t.index ["key_id", "from_me", "chat_row_id", "sender_jid_row_id"], name: "message_orphaned_edit_key_index", unique: true
  end

  create_table "message_payment", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "sender_jid_row_id"
    t.integer "receiver_jid_row_id"
    t.text "amount_with_symbol"
    t.text "remote_resource"
    t.integer "remote_message_sender_jid_row_id"
    t.integer "remote_message_from_me"
    t.text "remote_message_key"
  end

  create_table "message_payment_status_update", primary_key: "message_row_id", force: :cascade do |t|
    t.text "transaction_info"
    t.text "transaction_data"
    t.text "init_timestamp"
    t.text "update_timestamp"
    t.text "amount_data"
  end

  create_table "message_payment_transaction_reminder", primary_key: "message_row_id", force: :cascade do |t|
    t.text "web_stub"
    t.text "amount"
    t.text "transfer_date"
    t.integer "payment_sender_name"
    t.integer "expiration"
    t.text "remote_message_key"
  end

  create_table "message_privacy_state", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "host_storage"
    t.integer "actual_actors"
    t.integer "privacy_mode_ts", null: false
    t.text "business_name"
  end

  create_table "message_product", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "business_owner_jid"
    t.text "product_id"
    t.text "title"
    t.text "description"
    t.text "currency_code"
    t.integer "amount_1000"
    t.text "retailer_id"
    t.text "url"
    t.integer "product_image_count"
  end

  create_table "message_quoted", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "chat_row_id", null: false
    t.integer "parent_message_chat_row_id", null: false
    t.integer "from_me", null: false
    t.integer "sender_jid_row_id"
    t.text "key_id", null: false
    t.integer "timestamp"
    t.integer "message_type"
    t.text "text_data"
    t.text "payment_transaction_id"
    t.integer "lookup_tables"
    t.integer "origin"
  end

  create_table "message_quoted_group_invite", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "group_jid_row_id", null: false
    t.integer "admin_jid_row_id", null: false
    t.text "group_name"
    t.text "invite_code"
    t.integer "expiration"
    t.integer "invite_time"
    t.integer "expired"
  end

  create_table "message_quoted_group_invite_legacy", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "group_jid_row_id", null: false
    t.integer "admin_jid_row_id", null: false
    t.text "group_name"
    t.text "invite_code"
    t.integer "expiration"
    t.integer "invite_time"
    t.integer "expired"
  end

  # Could not dump table "message_quoted_location" because of following StandardError
  #   Unknown type 'REAL' for column 'latitude'
  #
  # CREATE TABLE message_quoted_location (
  #   message_row_id INTEGER PRIMARY KEY,
  #   latitude REAL,
  #   longitude REAL,
  #   place_name TEXT,
  #   place_address TEXT,
  #   url TEXT,
  #   thumbnail BLOB
  # )
  create_table "message_quoted_location", primary_key: "message_row_id", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.text "place_name"
    t.text "place_address"
    t.text "url"
    t.binary "thumbnail"
  end


  create_table "message_quoted_media", primary_key: "message_row_id", force: :cascade do |t|
    t.text "media_job_uuid"
    t.integer "transferred"
    t.text "file_path"
    t.integer "file_size"
    t.binary "media_key"
    t.integer "media_key_timestamp"
    t.integer "width"
    t.integer "height"
    t.text "direct_path"
    t.text "message_url"
    t.text "mime_type"
    t.integer "file_length"
    t.text "media_name"
    t.text "file_hash"
    t.integer "media_duration"
    t.integer "page_count"
    t.text "enc_file_hash"
    t.binary "thumbnail"
  end

  create_table "message_quoted_mentions", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.integer "jid_row_id"
    t.index ["message_row_id", "jid_row_id"], name: "quoted_mentions_index", unique: true
  end

  create_table "message_quoted_order", primary_key: "message_row_id", force: :cascade do |t|
    t.text "order_id"
    t.binary "thumbnail"
    t.text "order_title"
    t.integer "item_count"
    t.integer "status"
    t.integer "surface"
    t.text "message"
    t.integer "seller_jid"
    t.text "token"
  end

  create_table "message_quoted_product", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "business_owner_jid"
    t.text "product_id"
    t.text "title"
    t.text "description"
    t.text "currency_code"
    t.integer "amount_1000"
    t.text "retailer_id"
    t.text "url"
    t.integer "product_image_count"
  end

  create_table "message_quoted_text", primary_key: "message_row_id", force: :cascade do |t|
    t.binary "thumbnail"
  end

  create_table "message_quoted_ui_elements", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "element_type"
    t.text "element_content"
  end

  create_table "message_quoted_ui_elements_reply", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "element_type"
    t.text "reply_values"
  end

  create_table "message_quoted_vcard", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.text "vcard"
    t.index ["message_row_id", "vcard"], name: "message_quoted_vcard_index", unique: true
  end

  create_table "message_revoked", primary_key: "message_row_id", force: :cascade do |t|
    t.text "revoked_key_id", null: false
  end

  create_table "message_send_count", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "send_count"
  end

  create_table "message_streaming_sidecar", primary_key: "message_row_id", force: :cascade do |t|
    t.binary "sidecar"
    t.binary "chunk_lengths"
    t.integer "timestamp"
  end

  create_table "message_system", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "action_type", null: false
  end

  create_table "message_system_block_contact", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "is_blocked"
  end

  create_table "message_system_business_state", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "privacy_message_type", null: false
    t.text "business_name"
  end

  create_table "message_system_chat_participant", id: false, force: :cascade do |t|
    t.integer "message_row_id"
    t.integer "user_jid_row_id"
    t.index ["message_row_id"], name: "message_system_chat_participant_index"
  end

  create_table "message_system_device_change", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "device_added_count"
    t.integer "device_removed_count"
  end

  create_table "message_system_ephemeral_setting_not_applied", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "setting_duration"
  end

  create_table "message_system_group", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "is_me_joined"
  end

  create_table "message_system_initial_privacy_provider", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "privacy_provider", default: 0, null: false
    t.text "verified_biz_name"
  end

  create_table "message_system_number_change", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "old_jid_row_id"
    t.integer "new_jid_row_id"
  end

  create_table "message_system_photo_change", primary_key: "message_row_id", force: :cascade do |t|
    t.text "new_photo_id"
    t.binary "old_photo"
    t.binary "new_photo"
  end

  create_table "message_system_value_change", primary_key: "message_row_id", force: :cascade do |t|
    t.text "old_data"
  end

  create_table "message_template", primary_key: "message_row_id", force: :cascade do |t|
    t.text "content_text_data", null: false
    t.text "footer_text_data"
    t.index ["message_row_id"], name: "message_template_index"
  end

  create_table "message_template_button", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.text "text_data", null: false
    t.text "extra_data"
    t.integer "button_type"
    t.integer "used"
    t.integer "selected_index"
    t.index ["message_row_id"], name: "message_template_button_index"
  end

  create_table "message_template_quoted", primary_key: "message_row_id", force: :cascade do |t|
    t.text "content_text_data", null: false
    t.text "footer_text_data"
  end

  create_table "message_text", primary_key: "message_row_id", force: :cascade do |t|
    t.text "description"
    t.text "page_title"
    t.text "url"
    t.integer "font_style"
    t.integer "text_color"
    t.integer "background_color"
    t.integer "preview_type"
  end

  create_table "message_thumbnail", primary_key: "message_row_id", force: :cascade do |t|
    t.binary "thumbnail"
  end

  create_table "message_thumbnails", id: false, force: :cascade do |t|
    t.binary "thumbnail"
    t.datetime "timestamp"
    t.text "key_remote_jid", null: false
    t.integer "key_from_me"
    t.text "key_id", null: false
    t.index ["key_remote_jid", "key_from_me", "key_id"], name: "messages_thumbnail_key_index", unique: true
  end

  create_table "message_ui_elements", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id", null: false
    t.integer "element_type"
    t.text "element_content"
  end

  create_table "message_ui_elements_reply", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "element_type"
    t.text "reply_values"
  end

  create_table "message_vcard", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.text "vcard"
    t.index ["message_row_id", "vcard"], name: "message_vcard_index", unique: true
  end

  create_table "message_vcard_jid", primary_key: "_id", force: :cascade do |t|
    t.integer "vcard_jid_row_id"
    t.integer "vcard_row_id"
    t.integer "message_row_id"
    t.index ["vcard_jid_row_id", "vcard_row_id", "message_row_id"], name: "message_vcard_jid_index", unique: true
  end

  create_table "message_view_once_media", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "state", null: false
    t.index ["state"], name: "message_view_once_media_state_index"
  end

  # Could not dump table "messages" because of following StandardError
  #   Unknown type 'REAL' for column 'latitude'
  #
  # CREATE TABLE messages (
  #   _id INTEGER PRIMARY KEY AUTOINCREMENT,
  #   key_remote_jid TEXT NOT NULL,
  #   key_from_me INTEGER,
  #   key_id TEXT NOT NULL,
  #   status INTEGER,
  #   needs_push INTEGER,
  #   data TEXT,
  #   timestamp INTEGER,
  #   media_url TEXT,
  #   media_mime_type TEXT,
  #   media_wa_type TEXT,
  #   media_size INTEGER,
  #   media_name TEXT,
  #   media_hash TEXT,
  #   media_duration INTEGER,
  #   origin INTEGER,
  #   latitude REAL,
  #   longitude REAL,
  #   thumb_image TEXT,
  #   remote_resource TEXT,
  #   received_timestamp INTEGER,
  #   send_timestamp INTEGER,
  #   receipt_server_timestamp INTEGER,
  #   receipt_device_timestamp INTEGER,
  #   raw_data BLOB,
  #   recipient_count INTEGER,
  #   read_device_timestamp INTEGER,
  #   played_device_timestamp INTEGER,
  #   media_caption TEXT,
  #   participant_hash TEXT,
  #   starred INTEGER,
  #   quoted_row_id INTEGER,
  #   mentioned_jids TEXT,
  #   multicast_id TEXT,
  #   edit_version INTEGER,
  #   media_enc_hash TEXT,
  #   payment_transaction_id TEXT,
  #   forwarded INTEGER,
  #   preview_type INTEGER,
  #   send_count INTEGER
  # )
  create_table "messages", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid"
    t.integer "key_from_me"
    t.text "key_id"
    t.integer "status"
    t.integer "needs_push"
    t.text "data"
    t.integer "timestamp"
    t.text "media_url"
    t.text "media_mime_type"
    t.text "media_wa_type"
    t.integer "media_size"
    t.text "media_name"
    t.text "media_hash"
    t.integer "media_duration"
    t.integer "origin"
    t.float "latitude"
    t.float "longitude"
    t.text "thumb_image"
    t.text "remote_resource"
    t.integer "received_timestamp"
    t.integer "send_timestamp"
    t.integer "receipt_server_timestamp"
    t.integer "receipt_device_timestamp"
    t.binary "raw_data"
    t.integer "recipient_count"
    t.integer "read_device_timestamp"
    t.integer "played_device_timestamp"
    t.text "media_caption"
    t.text "participant_hash"
    t.integer "starred"
    t.integer "quoted_row_id"
    t.text "mentioned_jids"
    t.text "multicast_id"
    t.integer "edit_version"
    t.text "media_enc_hash"
    t.text "payment_transaction_id"
    t.integer "forwarded"
    t.integer "preview_type"
    t.integer "send_count"
  end


  create_table "messages_dehydrated_hsm", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.text "message_elementname"
    t.text "message_namespace"
    t.text "message_lg"
  end

  # Could not dump table "messages_fts" because of following StandardError
  #   Unknown type '' for column 'content'
  #
  # CREATE VIRTUAL TABLE messages_fts USING FTS3()
  create_table "messages_fts", force: :cascade do |t|
    t.text "content"
  end


  # Could not dump table "messages_fts_content" because of following StandardError
  #   Unknown type '' for column 'c0content'
  # CREATE TABLE 'messages_fts_content'(docid INTEGER PRIMARY KEY, 'c0content')
  create_table "messages_fts_content", primary_key: "docid", force: :cascade do |t|
    t.text "c0content"
  end

  create_table "messages_fts_segdir", primary_key: ["level", "idx"], force: :cascade do |t|
    t.integer "level"
    t.integer "idx"
    t.integer "start_block"
    t.integer "leaves_end_block"
    t.integer "end_block"
    t.binary "root"
  end

  create_table "messages_fts_segments", primary_key: "blockid", force: :cascade do |t|
    t.binary "block"
  end

  create_table "messages_hydrated_four_row_template", primary_key: "message_row_id", force: :cascade do |t|
    t.text "message_template_id"
  end

  create_table "messages_links", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid"
    t.integer "message_row_id"
    t.integer "link_index"
  end

  # Could not dump table "messages_quotes" because of following StandardError
  #   Unknown type 'REAL' for column 'latitude'
  #
  # CREATE TABLE messages_quotes (
  #   _id INTEGER PRIMARY KEY AUTOINCREMENT,
  #   key_remote_jid TEXT NOT NULL,
  #   key_from_me INTEGER,
  #   key_id TEXT NOT NULL,
  #   status INTEGER,
  #   needs_push INTEGER,
  #   data TEXT,
  #   timestamp INTEGER,
  #   media_url TEXT,
  #   media_mime_type TEXT,
  #   media_wa_type TEXT,
  #   media_size INTEGER,
  #   media_name TEXT,
  #   media_caption TEXT,
  #   media_hash TEXT,
  #   media_duration INTEGER,
  #   origin INTEGER,
  #   latitude REAL,
  #   longitude REAL,
  #   thumb_image TEXT,
  #   remote_resource TEXT,
  #   received_timestamp INTEGER,
  #   send_timestamp INTEGER,
  #   receipt_server_timestamp INTEGER,
  #   receipt_device_timestamp INTEGER,
  #   read_device_timestamp INTEGER,
  #   played_device_timestamp INTEGER,
  #   raw_data BLOB,
  #   recipient_count INTEGER,
  #   participant_hash TEXT,
  #   starred INTEGER,
  #   quoted_row_id INTEGER,
  #   mentioned_jids TEXT,
  #   multicast_id TEXT,
  #   edit_version INTEGER,
  #   media_enc_hash TEXT,
  #   payment_transaction_id TEXT,
  #   forwarded INTEGER,
  #   preview_type INTEGER,
  #   send_count INTEGER
  # )
  create_table "messages_quotes", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid"
    t.integer "key_from_me"
    t.text "key_id"
    t.integer "status"
    t.integer "needs_push"
    t.text "data"
    t.integer "timestamp"
    t.text "media_url"
    t.text "media_mime_type"
    t.text "media_wa_type"
    t.integer "media_size"
    t.text "media_name"
    t.text "media_caption"
    t.text "media_hash"
    t.integer "media_duration"
    t.integer "origin"
    t.float "latitude"
    t.float "longitude"
    t.text "thumb_image"
    t.text "remote_resource"
    t.integer "received_timestamp"
    t.integer "send_timestamp"
    t.integer "receipt_server_timestamp"
    t.integer "receipt_device_timestamp"
    t.integer "read_device_timestamp"
    t.integer "played_device_timestamp"
    t.binary "raw_data"
    t.integer "recipient_count"
    t.text "participant_hash"
    t.integer "starred"
    t.integer "quoted_row_id"
    t.text "mentioned_jids"
    t.text "multicast_id"
    t.integer "edit_version"
    t.text "media_enc_hash"
    t.text "payment_transaction_id"
    t.integer "forwarded"
    t.integer "preview_type"
    t.integer "send_count"
  end


  create_table "messages_vcards", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.text "sender_jid"
    t.text "vcard"
    t.text "chat_jid"
  end

  create_table "messages_vcards_jids", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.text "vcard_jid"
    t.integer "vcard_row_id"
  end

  create_table "missed_call_log_participant", primary_key: "_id", force: :cascade do |t|
    t.integer "call_logs_row_id"
    t.text "jid"
    t.integer "call_result"
    t.index ["call_logs_row_id", "jid"], name: "missed_call_log_participants_key_index", unique: true
  end

  create_table "missed_call_logs", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.integer "timestamp"
    t.integer "video_call"
    t.integer "group_jid_row_id", default: 0, null: false
    t.integer "is_joinable_group_call"
    t.index ["message_row_id"], name: "missed_call_logs_key_index", unique: true
  end

  create_table "mms_thumbnail_metadata", primary_key: "message_row_id", force: :cascade do |t|
    t.text "direct_path"
    t.binary "media_key"
    t.integer "media_key_timestamp"
    t.text "enc_thumb_hash"
    t.text "thumb_hash"
    t.integer "thumb_width"
    t.integer "thumb_height"
    t.integer "transferred"
    t.binary "micro_thumbnail"
    t.integer "insert_timestamp"
    t.index ["transferred"], name: "mms_thumbnail_metadata_transferred_index"
  end

  # Could not dump table "pay_transaction" because of following StandardError
  #   Unknown type '' for column 'amount_1000'
  #
  # CREATE TABLE pay_transaction (
  #   _id INTEGER PRIMARY KEY AUTOINCREMENT,
  #   message_row_id INTEGER,
  #   remote_jid_row_id INTEGER,
  #   key_id TEXT,
  #   interop_id TEXT,
  #   id TEXT,
  #   timestamp INTEGER,
  #   status INTEGER,
  #   error_code TEXT,
  #   sender_jid_row_id INTEGER,
  #   receiver_jid_row_id INTEGER,
  #   type INTEGER,
  #   currency_code TEXT,
  #   amount_1000,
  #   credential_id TEXT,
  #   methods TEXT,
  #   bank_transaction_id TEXT,
  #   metadata TEXT,
  #   init_timestamp INTEGER,
  #   request_key_id TEXT,
  #   country TEXT,
  #   version INTEGER,
  #   future_data BLOB
  # )
  create_table "pay_transaction", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id"
    t.integer "remote_jid_row_id"
    t.text "key_id"
    t.text "interop_id"
    t.text "id"
    t.integer "timestamp"
    t.integer "status"
    t.text "error_code"
    t.integer "sender_jid_row_id"
    t.integer "receiver_jid_row_id"
    t.integer "type"
    t.text "currency_code"
    t.text "amount_1000"
    t.text "credential_id"
    t.text "methods"
    t.text "bank_transaction_id"
    t.text "metadata"
    t.integer "init_timestamp"
    t.text "request_key_id"
    t.text "country"
    t.integer "version"
    t.binary "future_data"
  end


  # Could not dump table "pay_transactions" because of following StandardError
  #   Unknown type '' for column 'amount_1000'
  #
  # CREATE TABLE pay_transactions (
  #   key_remote_jid TEXT,
  #   key_from_me INTEGER,
  #   key_id TEXT,
  #   id TEXT,
  #   timestamp INTEGER,
  #   status INTEGER,
  #   error_code TEXT,
  #   sender TEXT,
  #   receiver TEXT,
  #   type INTEGER,
  #   currency TEXT,
  #   amount_1000,
  #   credential_id TEXT,
  #   methods TEXT,
  #   bank_transaction_id TEXT,
  #   metadata TEXT,
  #   init_timestamp INTEGER,
  #   request_key_id TEXT,
  #   country TEXT,
  #   version INTEGER,
  #   future_data BLOB
  # )
  create_table "pay_transactions", id: false, force: :cascade do |t|
    t.text "key_remote_jid"
    t.integer "key_from_me"
    t.text "key_id"
    t.text "id"
    t.integer "timestamp"
    t.integer "status"
    t.text "error_code"
    t.text "sender"
    t.text "receiver"
    t.integer "type"
    t.text "currency"
    t.text "amount_1000"
    t.text "credential_id"
    t.text "methods"
    t.text "bank_transaction_id"
    t.text "metadata"
    t.integer "init_timestamp"
    t.text "request_key_id"
    t.text "country"
    t.integer "version"
    t.binary "future_data"
  end


  create_table "props", primary_key: "_id", force: :cascade do |t|
    t.text "key"
    t.text "value"
  end

  create_table "quick_replies", primary_key: "_id", force: :cascade do |t|
    t.text "title", null: false
    t.text "content", null: false
  end

  create_table "quick_reply_attachments", primary_key: "_id", force: :cascade do |t|
    t.text "quick_reply_id", null: false
    t.text "uri", null: false
    t.text "caption"
    t.integer "media_type"
    t.index ["quick_reply_id"], name: "attachments_quick_reply_id_index"
  end

  create_table "quick_reply_keywords", primary_key: "_id", force: :cascade do |t|
    t.text "quick_reply_id", null: false
    t.text "keyword_id", null: false
  end

  create_table "quick_reply_usage", primary_key: "_id", force: :cascade do |t|
    t.text "quick_reply_id", null: false
    t.date "usage_date"
    t.integer "usage_count"
  end

  create_table "quoted_message_product", primary_key: "message_row_id", force: :cascade do |t|
    t.integer "business_owner_jid"
    t.text "product_id"
    t.text "title"
    t.text "description"
    t.text "currency_code"
    t.integer "amount_1000"
    t.text "retailer_id"
    t.text "url"
    t.integer "product_image_count"
  end

  create_table "receipt_device", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id", null: false
    t.integer "receipt_device_jid_row_id", null: false
    t.integer "receipt_device_timestamp"
    t.index ["message_row_id", "receipt_device_jid_row_id"], name: "receipt_device_index", unique: true
    t.index ["receipt_device_jid_row_id"], name: "receipt_device_table_device_index"
  end

  create_table "receipt_orphaned", primary_key: "_id", force: :cascade do |t|
    t.integer "chat_row_id", null: false
    t.integer "from_me", null: false
    t.text "key_id", null: false
    t.integer "receipt_device_jid_row_id", null: false
    t.integer "receipt_recipient_jid_row_id"
    t.integer "status"
    t.integer "timestamp"
    t.index ["chat_row_id", "from_me", "key_id", "receipt_device_jid_row_id", "receipt_recipient_jid_row_id", "status"], name: "receipt_orphaned_index", unique: true
  end

  create_table "receipt_user", primary_key: "_id", force: :cascade do |t|
    t.integer "message_row_id", null: false
    t.integer "receipt_user_jid_row_id", null: false
    t.integer "receipt_timestamp"
    t.integer "read_timestamp"
    t.integer "played_timestamp"
    t.index ["message_row_id", "receipt_user_jid_row_id"], name: "receipt_user_index", unique: true
  end

  create_table "receipts", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid", null: false
    t.text "key_id", null: false
    t.text "remote_resource"
    t.integer "receipt_device_timestamp"
    t.integer "read_device_timestamp"
    t.integer "played_device_timestamp"
    t.index ["key_remote_jid", "key_id"], name: "receipts_key_index"
  end

  create_table "status", primary_key: "_id", force: :cascade do |t|
    t.integer "jid_row_id"
    t.integer "message_table_id"
    t.integer "last_read_message_table_id"
    t.integer "last_read_receipt_sent_message_table_id"
    t.integer "first_unread_message_table_id"
    t.integer "autodownload_limit_message_table_id"
    t.integer "timestamp"
    t.integer "unseen_count"
    t.integer "total_count"
  end

  create_table "status_list", primary_key: "_id", force: :cascade do |t|
    t.text "key_remote_jid"
    t.integer "message_table_id"
    t.integer "last_read_message_table_id"
    t.integer "last_read_receipt_sent_message_table_id"
    t.integer "timestamp"
    t.integer "unseen_count"
    t.integer "total_count"
    t.integer "first_unread_message_table_id"
    t.integer "autodownload_limit_message_table_id"
  end

  create_table "user_device", primary_key: "_id", force: :cascade do |t|
    t.integer "user_jid_row_id"
    t.integer "device_jid_row_id"
    t.integer "key_index", default: 0, null: false
    t.index ["user_jid_row_id", "device_jid_row_id"], name: "user_device_index", unique: true
  end

  create_table "user_device_info", primary_key: "user_jid_row_id", force: :cascade do |t|
    t.integer "raw_id", null: false
    t.integer "timestamp", null: false
    t.index ["user_jid_row_id"], name: "user_device_info_index", unique: true
  end

end
