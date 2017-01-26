namespace :simulate do
  desc 'Simulate traffic'
  task traffic: :environment do
    require 'open-uri'

    routes = Rails.application.routes.routes.map do |route|
      path = route.path.spec.to_s
      if path =~ /api/
        path.split('(').first
      end
    end.compact

    loop do
      url = "http://localhost:3000#{routes.sample}"
      puts url
      open(url).read
    end
  end
end
