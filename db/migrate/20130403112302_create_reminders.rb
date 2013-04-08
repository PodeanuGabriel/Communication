class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :from
      t.string :to
      t.string :subject
      t.string :content
      t.string :type
      t.integer :interval

      t.timestamps
    end
  end
end
