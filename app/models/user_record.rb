class UserRecord < ApplicationRecord
    belongs_to :user
    validates :client_name, :presence => true
    validates :project_name, :presence => true
    validates :activity_type, :presence => true
    validates :date, :presence => true, :format => {
        :with => /\A\d{4}-(((0)[0-9])|((1)[0-2]))-([0-2][0-9]|(3)[0-1])\z/,
        :message => "Date format invalid"
    }
    validates :start_time, :presence => true, :format => {
        :with => /\A((1[0-2]|0?[1-9]):([0-5][0-9])(\s)?([AaPp][Mm]))\z/,
        :message => "Time format invalid"
    }
    validates :end_time, :presence => true, :format => {
        :with => /\A((1[0-2]|0?[1-9]):([0-5][0-9])(\s)?([AaPp][Mm]))\z/,
        :message => "Time format invalid"
    }
    validates :description, :presence => true
    ACTIVITY_TYPES = ["Client Call","Code Review","Deployment","Development","Meeting","Miscalaneous","Support","Testing"]
end
