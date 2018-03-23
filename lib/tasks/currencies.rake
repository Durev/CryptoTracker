namespace :currencies do
  desc "Create new currencies in db"
  task create: :environment do
    NewCurrenciesCreation.perform_now
  end

  desc "Update existing currencies prices"
  task update: :environment do
    PricesUpdateJob.perform_now
  end
end
