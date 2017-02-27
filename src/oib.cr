require "./oib/*"

module OIB
  extend self

  def is_valid?(number : Int) : Bool
    digits = number.to_s.chars.map { |c| c.to_i }
    validate_ISO7064 digits
  end

  def is_valid?(number : String) : Bool
    number = number.to_i64?
    return false if number.nil?
    is_valid? number
  end

  private def validate_ISO7064(digits : Array(Int)) : Bool
    return false if digits.size != 11
    control_digit = digits.pop
    digits.unshift 10
    val = digits.reduce do |acc, digit|
      check = acc + digit
      check %= 10
      check = 10 if check == 0
      check *= 2
      check %= 11
      check
    end
    checksum = (11 - val != 10) ? (11 - val) : 0
    checksum == control_digit
  end
end
