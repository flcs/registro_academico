class Periodo < ActiveRecord::Base
  belongs_to :curso
  has_and_belongs_to_many :disciplinas

  def to_s
    periodo
  end
end
