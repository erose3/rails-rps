class MoveController < ApplicationController
  def rules
    render ({ :template => "game_templates/rules"})
  end
  
  def rock
    @random_move = ["rock", "paper", "scissors"].sample
    
    @our_move = "rock"
    if @random_move == @our_move
      @outcome = "tied"
    elsif @random_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render ({ :template => "game_templates/play_rock"})
  end

  def paper
    @random_move = ["rock", "paper", "scissors"].sample

    @our_move = "paper"
    if @random_move == @our_move
      @outcome = "tied"
    elsif @random_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render ({ :template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample

    @our_move = "scissors"
    if @random_move == @our_move
      @outcome = "tied"
    elsif @random_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render ({ :template => "game_templates/play_scissors"})
  end
end
