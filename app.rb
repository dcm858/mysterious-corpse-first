#!/usr/bin/env ruby
require 'sinatra'
require 'dm-core'

DataMapper::setup(:default, {:adapter => 'yaml', :path => 'db'})

class Sentence
    include DataMapper::Resource
    property :id, Serial
    property :order, Serial
    property :author, String
    property :subgenre, String, :required => true
    property :protagonist, String, :required => true
    property :setting, String, :required => true
    property :sentence, Text
end

DataMapper.finalize

get '/' do
  erb :create_mystery_form
end

post '/save_choices' do
    @output = ""
    selected_sentences = Sentence.all(setting=>params[:setting])
    & Sentence.all(protagonist=>params[:protagonist])
    & Sentence.all(subgenre=>params[:setting])
    
    for sentence in selected_sentences
        @output += <<-HTML
        <p>#{sentence.id}</p>
        HTML
    end
end

    
    
    


   


    
  
  
  
  
  s1 = sentence.get(params[:sub-genre, :protagonist, :setting])
  s2 = sentence.get(params[:sub-genre, :protagonist, :setting])
  
  for sentence in mysterySentences.both
      if s1[:sub-genre] !!= s2[:sub-genre]  
      mysterySentences.append 
  elsif
    "No mystery in sameness. Select again."
  end
  
post '/create_mystery' do

mysterySentences = mysterySentences.new

mysterySentences.new.sub-genre = params[:sub-genre]
mysterySentences.new.setting = params[:setting]
mysterySentences.new.protagonist = params[:protagonist]

mysterySentences.new.save

output = HTML



end





  if (params[:sub-genres] == "noir")(params[settings] == US)+(params[protagonist] == M)
    @title
    
    
    
    Sentence.all(:sub-genre=>'noir') + Sentence.all(:protagonist=>M)+Sentence.all(:setting=>US)\
    