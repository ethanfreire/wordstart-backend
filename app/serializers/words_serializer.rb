class WordsSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition , :synonym, :part_of_speech, :examples , :canvas_image
end
