namespace :db do
  desc "TODO"
  task rearrange: :environment do
  	Rake::Task['db:migrate'].execute('VERSION=0')
  	Rake::Task['db:migrate'].execute()
  	Rake::Task['db:seed'].execute()
  end

end
