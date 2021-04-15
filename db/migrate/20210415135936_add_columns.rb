class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :title, :string
    add_column :books, :body, :text
    remove_column :books, :book_title, :string
    remove_column :books, :book_body, :text
  end
end
