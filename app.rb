require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_and_replace')

get('/form') do
  erb(:form)
end

get('/result') do
  #@ = params.fetch('var')
  @input = params.fetch('input')
  @find = params.fetch('find')
  @replace = params.fetch('replace')

  @result = params.fetch('input').find_and_replace(params.fetch('find'), params.fetch('replace'))
  erb(:result)
end


# @player1 = params.fetch('player1')
# @player2 = params.fetch('player2')
# result = params.fetch('player1').beats?(params.fetch('player2'))
# if result == true
#   @result = 'Player 1 wins. Nice work!'
# elsif result == false
#   @result = 'Player 1 loses. Better luck next time.'
# else
#   @result = 'You tied!  Try again.'
# end
# erb(:result)
# end
