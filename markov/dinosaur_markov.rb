require './dinosaur_parser'

class Array
  def car
    first
  end
  
  def caar
    first.first
  end

  def cadr
    first.last
  end
end

class DinosaurMarkov
  def initialize(character_name)
    @corpus = DinosaurParser.new.lines_by(character_name)
    build_pairs_table
  end

  def chain(word, links = 2)
    table = @frequency_table.slice(1..-1)
    after = ->(word) do
      match = table.find do |entry|
        entry.caar == word
      end
      table.delete(match)
      match.cadr
    end

    current = word
    current + " " + links.times.collect do 
      current = after[current]
    end.join(" ")
  end

  private
  def clean(corpus)
    corpus.downcase.gsub(
      /[^A-Za-z ]/, ""
    ).gsub(/\s+/, " ")
  end

  def build_pairs_table
    cleaned_corpus = clean(@corpus)

    @frequency_table = cleaned_corpus.split.each_cons(2).inject(
      Hash.new(0)
    ) do |counting_table, pair| 
      counting_table[pair] +=1
      counting_table
    end.to_a.sort_by(&:last).reverse
  end
end
