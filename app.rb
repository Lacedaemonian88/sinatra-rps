require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/:rps") do

@rps = params.fetch("rps")

@moves = ["rock", "paper", "scissors"]


@comp_move = @moves.sample

if @comp_move == @rps 
  @outcome = "tied"
  elsif @comp_move == "paper" && @rps == "rock"
  @outcome = "lost"
  elsif @comp_move == "rock" && @rps == "scissors"
  @outcome = "lost"
  elsif @comp_move == "scissors" && @rps == "paper"
  @outcome = "lost"
  else
  @outcome = "won"
  end



  erb(:chomp)
  erb(:swim)
  erb(:turtle)

end
