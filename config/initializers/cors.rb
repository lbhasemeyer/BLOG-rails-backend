Rails.configuration.middleware.insert_before 0, "Rack::Cors" do
  allow do
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :put, :patch, :post, :options, :delete]
  end
end
