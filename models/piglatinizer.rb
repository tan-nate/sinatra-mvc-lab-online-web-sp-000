class PigLatinizer
  def piglatinize(text)
    text_a = text.split("")
    pig_a = []
    if !text_a[0].match?(/[aeoui]/)
      text_a.each do |c|
        until c.match?(/[aeoui]/)
          text_a << text_a.shift
          binding.pry
        end
      end
      text_a.join
    else
      text << "way"
    end
  end
end
