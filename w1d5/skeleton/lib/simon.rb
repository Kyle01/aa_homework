class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if require_sequence == seq
      @sequence_length += 1 unless sequence_length.nil?
      round_success_message
    else
      game_over = true
    end
  end

  def show_sequence
    add_random_color
    puts seq
  end

  def require_sequence
    puts "Put the correct sequence"
    return gets.chomp
  end

  def add_random_color
    seq << COLORS[rand(0..3)]
  end

  def round_success_message
    puts "CORRECT. SCORE: #{sequence_length}"
  end

  def game_over_message
    puts "INCORRECT. GAME OVER."
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end

game = Simon.new
game.play
