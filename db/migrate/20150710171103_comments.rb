class Comments < ActiveRecord::Migration
    def change
   create_table :comments do |t|
   t.column :author, :string
   t.column :body, :string

   t.timestamps
    end
  end
end
