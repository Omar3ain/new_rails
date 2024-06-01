class CreateUsersPostJoin < ActiveRecord::Migration[7.1]
  def change
    create_table :users_post_joins do |t|
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true
      t.timestamps
    end
  end
end
