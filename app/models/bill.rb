class Bill < ApplicationRecord
    def self.connect_to_database(database)
        establish_connection database.to_sym
    end
end
