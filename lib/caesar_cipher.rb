 def caesar_cipher(string, shift)
  string.gsub(/[a-zA-Z]/) do |letter|
    code = letter.ord 
    if code > 64 && code < 91 # upcase letters
      if shift > 26 || shift < -26
        shift = shift % 26
      end
      if code + shift > 90
        newcode = code - 26 + shift
      elsif code + shift < 65
        newcode = code + 26 + shift
      else newcode = code + shift
      end
    end
    if code > 96 && code < 123 #downcase letters
      if shift > 26 || shift < -26
        shift = shift % 26
      end
      if code + shift > 122
        newcode = code - 26 + shift
      elsif code + shift < 97
        newcode = code + 26 + shift
      else newcode = code + shift
      end
    end
    newcode.chr
  end
end

# puts caesar_cipher("Have a NICE day!", -362)