require 'rexml/document'
class DinosaurParser
  def initialize
    @xml = REXML::Document.new(File.read('qwantz.xml'))
  end

  def lines_by(character_name = "T-Rex")
    @xml.elements.to_a(%Q{
        transcriptions
          /transcription
            /body
              /panel
                /line
    }.gsub(/\s+/, "")).map(&:text).select do |line|
      line.start_with?(character_name)
    end.join("\n").gsub(/#{character_name}:/, "")
  end
end
