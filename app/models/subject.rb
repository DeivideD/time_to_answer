class Subject < ApplicationRecord

    validates :description, uniqueness: true

    # kaminary
    paginates_per 10
end
