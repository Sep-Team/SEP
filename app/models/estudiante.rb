class Estudiante < ActiveRecord::Base
  belongs_to :tipopractica
  belongs_to :ficha
  belongs_to :jefe
  belongs_to :tipodoc
  has_many :actividades
  has_many :asignares_proy
  has_many :evaluaciones
end
