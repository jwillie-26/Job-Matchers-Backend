class JobListing < ApplicationRecord
    belongs_to :category
    belongs_to :employer
    belongs_to :employee

end
