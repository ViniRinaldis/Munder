if defined?(PryRails::RAILS_PROMPT)
  Pry.config.prompt = PryRails::RAILS_PROMPT
  (ActiveRecord::Base.connection.tables - %w[schema_migrations]).each do |table|
    table.classify.constantize rescue nil
  end
end
