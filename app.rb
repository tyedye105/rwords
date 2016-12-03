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
  word_check = Word.new(word_entry)
    if word_check.is_word?() == false
      redirect('/add_word')
    elsif word_check.word_entry == ""
      redirect('/add_word')
    else
      word_check.save()
    end
  @words = Word.all()
  erb(:index)
end

get('/words/view/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @definitions = Definition.all()
  erb(:word_view)
end

post('/words/view/:id/defined') do
  definition = params.fetch("definition")
  @new_def = Definition.new(definition)
  @new_def.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@new_def)
  @definitions = Definition.all()
  erb(:word_view)
end

get('/words/views/everything') do
  @words = Word.all()

  erb(:everything)
end
