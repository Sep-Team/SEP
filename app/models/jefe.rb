class Jefe < ActiveRecord::Base
  belongs_to :empresa
  has_many :estudiantes
  has_many :evaluaciones
end
