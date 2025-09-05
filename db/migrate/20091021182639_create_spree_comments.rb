class CreateSpreeComments < SpreeExtension::Migration[4.2]
  def self.up
    create_table :spree_comments do |t|
      t.string :title, limit: 50
      t.text :comment
      t.references :comment_type, index: true
      t.references :commentable, index: true, polymorphic: true
      t.references :user, index: true
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_comments
  end
end
