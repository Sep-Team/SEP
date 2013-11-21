class Novedad < ActiveRecord::Base
  belongs_to :user
  belongs_to :actEstado
end
