class Factor < ActiveRecord::Base
  belongs_to :area
  belongs_to :tipofactor
  has_many :detalle_evaluaciones
end
