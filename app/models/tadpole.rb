class Tadpole < ActiveRecord::Base
  # code goes here
  belongs_to :frog
  delegate :pond, to: :frog, :allow_nil => true

  def become_a_frog
    Frog.create(name: self.name, color: self.color, pond_id: self.pond.id)
  end
end
