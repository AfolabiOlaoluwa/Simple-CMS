class CreateAdminUsersPagesJoin < ActiveRecord::Migration

  def up
    create_table :admin_users_pages, :id => false do |t|
      t.integer 'admin_user_id' #Foreign Key 1
      t.integer 'page_id' #Foreign Key 2
    end
    add_index :admin_users_pages, ['admin_user_id', 'page_id']
  end

  def down
    drop_table :admin_users_pages
  end

end
