class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.integer :id
      t.string :from
      t.string :to
      t.string :content
      t.string :password

      t.timestamps
    end
  end
end
