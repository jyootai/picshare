class AddInfoToUsers < ActiveRecord::Migration
  def change
		add_column :users, :name, :string
		add_column :users, :facebook, :string
		add_column :users, :github, :string
		add_column :users, :qq, :string
		add_column :users, :weixin, :string
  end
end
