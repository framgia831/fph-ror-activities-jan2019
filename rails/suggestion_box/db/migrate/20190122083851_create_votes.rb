class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      #topic_id
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
