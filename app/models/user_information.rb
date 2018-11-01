class UserInformation < ApplicationRecord
validates :first_name, presence: true, length: {minimum: 5}
end
