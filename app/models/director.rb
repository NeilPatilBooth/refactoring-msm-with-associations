# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  validates(:name, presence: true)

  has_many(:filmography, class_name:"Movie" foreign_key: "director_id") # :Symbol-can be anything and defines the new method, class_name: Table, foreign_key: String containing name of foreign key column

  #def filmograpy
  #  Movie.where({ :director_id=>self.id })
  #end
end
