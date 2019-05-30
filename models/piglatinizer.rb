class PigLatinizer
  def piglatinize(text)
    text_a = text.split("")
    if !text_a[0].downcase.match?(/[aeoui]/)
      until text_a[0].downcase.match?(/[aeiou]/)
        text_a << text_a.shift
      end
      text_a.join << "ay"
    else
      text << "way"
    end
  end
end
