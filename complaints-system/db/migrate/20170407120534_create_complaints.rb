class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.string :user_email
      t.text :content

      t.timestamps
    end
  end
end
