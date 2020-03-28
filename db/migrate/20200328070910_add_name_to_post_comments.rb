class AddNameToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :name, :string
  end
end
