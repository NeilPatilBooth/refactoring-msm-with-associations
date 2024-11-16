# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  validates(:director_id, presence: true)
  validates(:title, uniqueness: true)

  #def director #one to many - one director to many movies
  #  x = self.director_id
  #  return Director.where({ :id => x}).first
  #end
  belongs_to(:director, class_name: "Director", foreign_key: "director_id") # :Symbol-can be anything and defines the new method, class_name: Table, foreign_key: String containing name of foreign key column

  has_many(:characters, class_name: "Character", foreign_key:"movie_id")


end
