class Task < ApplicationRecord
  def change
    create_table :restaurants do |t|
      t.string :title
      t.text :details
      t.completed :boolean, default: :false

      t.timestamps
    end
  end
end
