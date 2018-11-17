# require modules here
require "yaml"

def load_library(file_path)
  gov = YAML.load_file(file_path)
  emo_hash = {"get_emoticon" => {}, "get_meaning" => {}} 
  gov.each do |meaning, emoticons|
    emoticons.each do |emoticon|
      emo_hash["get_meaning"][emoticon] = "#{meaning}"
      emo_hash[]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end