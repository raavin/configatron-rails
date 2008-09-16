class ConfigGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file "config.yml", "config/config.yml"
      m.readme "INSTALL"
    end
  end
end
