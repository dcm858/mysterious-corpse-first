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
    selected_sentences = Sentence.all(setting=>params[:setting]) & Sentence.all(protagonist=>params[:protagonist]) & Sentence.all(subgenre=>params[:setting])
    
    for sentence in selected_sentences
        @output += <<-HTML
        <p>#{sentence.id}</p>
        HTML
    end
end

    
    
    


   
