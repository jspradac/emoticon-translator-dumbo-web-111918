# require modules here
require "yaml"

def load_library(file_path)
  gov = YAML.load_file(file_path)
  emo_hash = {"get_emoticon" => {}, "get_meaning" => {}} 
  gov.each do |meaning, emoticons|
    emo_hash["get_meaning"][emoticons[1]] = "#{meaning}"
    emo_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end 
  emo_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emo_hash = load_library(file_path)
  emo_hash[emoticon]
end

def get_english_meaning
  # code goes here
end