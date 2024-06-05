class CreatePostsEditorsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :posts, :editors do |t|
      t.belongs_to :post
      t.belongs_to :editor
    end
  end
end
