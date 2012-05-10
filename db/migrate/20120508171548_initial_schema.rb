class InitialSchema < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :twitter_handle
      t.string :email
      t.string :oauth_provider
      t.string :oauth_uid
      t.boolean :is_admin

      t.timestamps
    end

    create_table :events do |t|
      t.string :title
      t.string :short_description
      t.text :long_description
      t.string :bundle_file_name
      t.string :bundle_content_type
      t.integer :bundle_file_size
      t.datetime :bundle_updated_at
      t.datetime :scheduled_at
      t.datetime :finalized_at
      t.timestamps
    end

    create_table :submissions do |t|
      t.references :event
      t.references :user
      t.string :uid
      t.text :description
      t.string :archive_file_name
      t.string :archive_content_type
      t.integer :archive_file_size
      t.datetime :archive_updated_at
      t.timestamps
    end
  end
end
