class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :word
      t.string :definition
      t.string :synonym
      t.string :part_of_speech
      t.string :examples
      t.boolean :canvas_image

      t.timestamps
    end
  end
end
