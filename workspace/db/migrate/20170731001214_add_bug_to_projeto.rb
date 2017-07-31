class AddBugToProjeto < ActiveRecord::Migration
  def change
    add_reference :projetos, :bug, index: true, foreign_key: true
  end
end
