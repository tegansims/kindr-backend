class Name < ApplicationRecord
    has_many :picks
    has_many :users, through: :picks
    has_many :user_groups, through: :users
    has_many :groups, through: :user_groups

    def self.create_from_API(gender, usage)

        response = RestClient.get "https://www.behindthename.com/api/random.json?usage=#{usage}&number=1&gender=#{gender}&key=#{ENV["BEHIND_THE_NAME_API_KEY"]}"

        response2 = JSON.parse( response ).with_indifferent_access
    
        response3 = response2['names'][0]
    end

    def self.create_from_API_JSON(gender, usage)
        response = RestClient.get "https://www.behindthename.com/api/random.json?usage=#{usage}&number=1&gender=#{gender}&key=#{ENV["BEHIND_THE_NAME_API_KEY"]}"

        response2 = JSON.parse( response ).with_indifferent_access
    end
end
