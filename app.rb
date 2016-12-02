require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/add_word') do
  erb(:new_word)
end

post('/success') do
  word_entry = params.fetch("word_entry")
  Word.new(word_entry).save()
  @words = Word.all()
  erb(:index)
end

get('/words/:id') do

end
