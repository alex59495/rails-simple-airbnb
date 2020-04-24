class Flat < ApplicationRecord
    def self.search(search)
        if search
            Flat.where("name LIKE '%#{search}%'")
        else
            @flats = Flat.all
        end
    end
end
