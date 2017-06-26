class User < ApplicationRecord
   extend FriendlyId
  friendly_id :name, use: :slugged
  
  User.create! name: "Joe Schmoe"

# Change User.find to User.friendly.find in your controller
User.friendly.find(params[:id])

rails server

GET http://localhost:8080/users/joe-schmoe
end
