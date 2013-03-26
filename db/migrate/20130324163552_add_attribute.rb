class AddAttribute < ActiveRecord::Migration
  def up
    add_column :Mail, :subject, :string
  end

  def down
  end
end
