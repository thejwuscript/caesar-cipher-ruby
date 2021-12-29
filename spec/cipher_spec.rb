require './lib/caesar_cipher.rb'

describe "#caesar_cipher" do
  it "encrypts lowercase letters" do
    expect(caesar_cipher("hello", 5)).to eql("mjqqt")
  end

  it "encrypts uppercase letters" do
    expect(caesar_cipher("DREAM", 11)).to eql("OCPLX")
  end

  it "shifts left when shift factor is negative" do
    expect(caesar_cipher("ruby", -9)).to eql("ilsp")
  end

  it "wraps the alphabet when necessary" do
    expect(caesar_cipher('RSPEC', 531)).to eql('CDAPN')
  end

  it "maintains whitespaces and punctuations" do
    expect(caesar_cipher('i got it!', 3)).to eql("l jrw lw!")
  end

  it "encrypts lower and uppercase letters" do
    expect(caesar_cipher("Tag", 7)).to eql ('Ahn')
  end
end
