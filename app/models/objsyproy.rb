class Objsyproy < ActiveRecord::Base
  belongs_to :departamento
  has_many :actividades
  has_many :asignares_proy
end
