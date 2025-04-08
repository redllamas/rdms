I18n.load_path += Dir[Rails.root.join("lib", "locale", "*.{rb,yml}")]
I18n.available_locales = [ :en, :ja, :zh, :ko, :es, :fr, :de, :pt ]
I18n.default_locale = :en
