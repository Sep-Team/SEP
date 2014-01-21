class AsignarProy < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :objsyproy
  has_many :actividades
  has_many :bitacoras
  def self.search(search)
    where("nombreproyecto like '%#{search}%'")
  end
end
