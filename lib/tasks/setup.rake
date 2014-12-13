desc 'Run database role setup'
namespace :db do
  task :reset_role => :environment do
    `psql -c "DROP DATABASE devbud_test"`
    `psql -c "DROP DATABASE devbud_development"`
    `psql -c "DROP ROLE devbud"`
    `psql -c "CREATE ROLE devbud WITH SUPERUSER LOGIN"`
  end
end
