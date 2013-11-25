class Actividad < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :objsyproy
  belongs_to :estudiante
  belongs_to :actEstado
  has_many :estudiantes
end
