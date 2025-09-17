class CreateSpreeCommentTypes < SpreeExtension::Migration[4.2]
  def self.up
    create_table :spree_comment_types do |t|
      t.string :name
      t.string :applies_to
      t.timestamps
    end
  end

  def self.down
    drop_table :spree_comment_types
  end
end
