class AsignarProy < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :objsyproy
  has_many :actividades
  def self.search(search)
    where("nombre like '%#{search}%'")
  end
end
