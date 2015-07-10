class UpdateCommentsTable < ActiveRecord::Migration
  def change
    add_column :comments, :skill_id, :integer
  end
end
