class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :user_email, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
