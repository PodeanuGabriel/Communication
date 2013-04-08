class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :id
      t.string :from
      t.string :to
      t.string :subject
      t.string :content
      t.string :interval_type
      t.integer :interval
      t.datetime :begin
      t.datetime :end

      t.timestamps
    end
  end
end
