class AddColumnSexToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sex, :integer, null: false, default: 0, limit: 1
  end
end
