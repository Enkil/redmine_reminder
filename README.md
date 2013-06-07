# Redmine Reminder plugin for Redmine 

Plugin for Redmine project that sends notification to assignee if due date is coming.

Users can choose on which days before due date they want to be notified.
Also users can create issues category and choose on which days before due date of issues in this category they want to be notified.

User setting is located at the user account page.
![User settings](https://raw.github.com/Enkil/Redmine_Reminer/master/doc/user_settings.png)


Moreover, administrator can set default notification settings for new users.
![Default settings](https://raw.github.com/Enkil/Redmine_Reminer/master/doc/default_settings.png)

Category settings is located at the category properties page
![Category Settings] (https://raw.github.com/Enkil/Redmine_Reminer/master/doc/category_settings.jpg)

Plugin also sends info about issues behind a schedule.
Users cannot change this behavior.


## Compatibility

* redmine-2.x for Redmine 2.0 and higher

## Installation

    cd /home/user/path_to_you_app/
    git clone git://github.com/Enkil/Redmine_Reminer.git plugins/redmine_reminder
    cd plugins/redmine_reminder; git checkout <YOUR BRANCH HERE - see above>

For Redmine 2.x and higher

    bundle exec rake redmine:plugins:migrate RAILS_ENV=production

Also you can read instructions on http://www.redmine.org/projects/redmine/wiki/Plugins

## Sending notifications
You can send notifications manually:

    cd /home/user/path_to_you_app
    bundle exec rake redmine:reminder_plugin:send_notifications RAILS_ENV=production

It is good idea to add the task to cron:

    crontab -e
    0 5 * * * cd /home/user/path_to_you_app && bundle exec rake redmine:reminder_plugin:send_notifications RAILS_ENV=production &> /tmp/redmine_due_date_reminder.log

Learn more about cron at http://en.wikipedia.org/wiki/Cron

You should run this task *only* *once* *a* *day*.

## License

This plugin is licensed under the GPLv2 license.
