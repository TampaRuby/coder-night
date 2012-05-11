namespace :db do
  task rebuild: ["db:drop", "db:create", "db:migrate"]

  namespace :rebuild do
    task seed: [:environment, 'rebuild', 'db:seed']
  end
end
