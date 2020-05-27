class GroupLinks < ActiveRecord::Migration[5.0]
  def change

    add_column :groups, :owner_id, :integer

    create_join_table :users, :groups do |t|
    end

  end
end
