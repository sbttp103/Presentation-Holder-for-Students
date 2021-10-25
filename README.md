# Presentation Reviewer for Students

## In this project, we build a website for reviewing student presentations.

### Functions:
1. Create admin/student accounts
2. Difference views:
- Instructor view: create events, add grade, read student feedbacks, etc
- Student view: find all events created, add feedbacks to any of them, read feedback of presentation


### Instructions
If you want to access our website, just simply open the terminal, relocate to file "Project6" and enter the following command in terminal:
1. Create and migrate the database and install the gems
```
rails db:create
rails db:migrate
bundle
```
2. Now, if you encounter some issues like webpack error, you can run:
```
bundle exec rake assets:precompile
rails assets:precompile
```
3. Then, you can enter to start the server
```
rails s
```

4. If below info shows up, it means you have successfully connected to the rails server
```
=== puma shutdown: 2021-04-20 02:56:05 +0800 ===
- Goodbye!
Exiting
zhuofanli@Zhuofans-MacBook-Pro Project6 % rails s
=> Booting Puma
=> Rails 6.1.3.1 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.2.2 (ruby 2.6.6-p146) ("Fettisdagsbulle")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 8433
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
```
5. You can now enter in your web browser and add your feedback/create events!
```
localhost:3000
```

6. Create student/presentor account:
Simply click the sign up button, you can create an account as in any other website.

7. Create instructor account:
The very first step is the same with creating a student account.
Then, we need to go to database and set the account as an admin account.
go to terminal, enter:
```
rails c # open rails terminal
User.all # See the user you have
@usr = User.find(1) # Find the user you want to set as admin by user_id, you can also user User.last to get the newest user.
@usr.add_role “admin” # set admin
@usr.save # save the change to database
```
Now, your account will become an officially instroctor account. You can now create event, give grade to presenter's presentation.

8. If you want to end the server, press 'ctrl-c'  in terminal, if following info shows, it means you have successfully disconnected.

```
^C- Gracefully stopping, waiting for requests to finish
=== puma shutdown: 2021-04-20 02:56:05 +0800 ===
- Goodbye!
Exiting
```

