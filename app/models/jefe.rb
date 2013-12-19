class Jefe < ActiveRecord::Base
  belongs_to :empresa
  has_many :estudiantes
  has_many :evaluaciones
  def self.search(search)
   where("nombres like '%#{search}%' or apellidos like '%#{search}%'")
  end
end
