class Question < ApplicationRecord
  belongs_to :subject
  paginates_per 10
end
