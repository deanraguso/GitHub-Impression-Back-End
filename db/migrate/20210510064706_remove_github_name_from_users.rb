class RemoveGithubNameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :github_name, :string
  end
end
