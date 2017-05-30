class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :email
      t.string :content
      
      t.timestamps null: false
    end
  end
end
