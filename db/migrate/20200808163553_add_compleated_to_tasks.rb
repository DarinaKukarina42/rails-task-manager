class AddCompleatedToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :compleated, :boolean, default: :false
  end
end
