class CreateSpreeComments < SpreeExtension::Migration[4.2]
  def self.up
    create_table :spree_comments do |t|
      t.string :title, limit: 50
      t.text :comment
      t.integer :comment_type_id
      t.references :commentable, polymorphic: true
      t.references :user
      t.timestamps
    end

    add_index :spree_comments, :commentable_type
    add_index :spree_comments, :commentable_id
    add_index :spree_comments, :user_id
  end

  def self.down
    drop_table :spree_comments
  end
end
