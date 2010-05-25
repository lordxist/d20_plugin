class D20Generator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.directory 'app'
      m.directory 'app/controllers'
      m.directory 'db'
      m.directory 'db/migrate'

      m.file 'controller.rb', 'app/controllers/game_characters_controller.rb'

      m.migration_template 'migration.rb', 'db/migrate', :assigns => {
          :migration_name => "CreateD20"
      }, :migration_file_name => "create_d20"
    end
  end
end
