class DeleteAuthorArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :author
  end
end
