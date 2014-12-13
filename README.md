#DevBud

##Installation##
```
git clone git@github.com:ssapra/devbud.git
cd devbud
bundle install
rake db:reset_role db:create db:migrate db:seed
rails server
```

If you want the mailer to work and send the activation email, make sure to create a .env file and specify your GMAIL_USERNAME AND GMAIL_PASSWORD credentials.
