class RailsUtils
  def self.stylesheet_path(filename)
    "#{Rails.root}/app/assets/stylesheets/#{filename}.css"
  end
end
