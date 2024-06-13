require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/:hands") do

@rps = params[:hands]

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

  erb(:turtle)

end
