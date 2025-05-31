class RenameUserIdInPosts < ActiveRecord::Migration[8.0]
  def change
    remove_index :posts, name: "index_posts_on_User_id"

    # Rename the column
    rename_column :posts, :User_id, :user_id

    # Add the correct index back
    add_index :posts, :user_id
  end
end
