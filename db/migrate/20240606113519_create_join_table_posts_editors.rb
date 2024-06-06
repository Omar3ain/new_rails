class CreateJoinTablePostsEditors < ActiveRecord::Migration[7.1]
  def change
    create_join_table :posts, :editors do |t|
      # t.index [:post_id, :editor_id]
      # t.index [:editor_id, :post_id]
    end
  end
end
