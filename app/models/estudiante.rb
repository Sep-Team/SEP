class Estudiante < ActiveRecord::Base
  belongs_to :ficha
  belongs_to :jefe
  belongs_to :tipodoc
  has_many :actividades
  has_many :asignares_proy
end
