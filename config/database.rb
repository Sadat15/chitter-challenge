database_name = "chitter-#{Chitter.environment}"
db = URI.parse( ENV['DATABASE_URL'] || "postgres://localhost/#{database_name}")

ActiveRecord::Base.establish_connection(
  :adapter => db.scheme == "postgres" ? "postgresql" : db.scheme,
  :host => db.host,
  :port => db.port,
  :username => db.user,
  :password => db.password,
  :database => "#{database_name}",
  :encoding => "utf8"
)