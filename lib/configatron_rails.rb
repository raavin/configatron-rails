Configatron.class_eval do
  def initialize_with_settings
    initialize_without_settings
    load_environment_settings
  end

  def load_environment_settings
    cfg = YAML.load_file("#{RAILS_ROOT}/config/config.yml")[RAILS_ENV].symbolize_keys
    self.configure_from_hash(cfg)
  end

  alias_method_chain :initialize, :settings
end
