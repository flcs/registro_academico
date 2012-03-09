class Turma < ActiveRecord::Base
  belongs_to :curso
  belongs_to :periodo

  def as_json(options = {})
    super(options.merge include: [:curso])
  end
end
