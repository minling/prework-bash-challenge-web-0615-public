require 'base64'
require 'pry'

RSpec.configure do |config|
  encoded_answers = "cHdkLCBjZCAuLiwgbHMsIHRvdWNoIHRleHQuaHRtbCwgbHMgLWxhaCwgb3Bl\nbiwgY2QgfiwgZWNobyAkUEFUSCwgbWtkaXIgY29kZQ==\n"
  
  decoded_answers = Base64.decode64(encoded_answers)

  answers = decoded_answers.split(", ")

  answers.each_with_index do |answer, index|
    define_method("answer_#{index+1}") do 
      answer
    end
  end
end
