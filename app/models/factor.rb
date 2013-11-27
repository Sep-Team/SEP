class Factor < ActiveRecord::Base
  belongs_to :area
  belongs_to :tipo_factor
  has_many :detalle_evaluaciones
end
