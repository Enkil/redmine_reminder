class AddIssueReminderNotification < ActiveRecord::Migration

  def self.up
    add_column(:issues, "reminder_notification", :string)
  end

  def self.down
    remove_column(:issues, "reminder_notification")
  end
end
