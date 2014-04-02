class CreateInboundEmails < ActiveRecord::Migration
  def change
    create_table :inbound_emails do |t|
      t.text :text
      t.text :html
      t.string :to
      t.string :from
      t.string :subject

      t.timestamps
    end
  end
end
