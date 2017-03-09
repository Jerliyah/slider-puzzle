require_relative "controller.rb"

c = Controller.new

c.clear_view
c.new_game


until c.game_solved?
	c.prompt_user
	c.clear_view
	c.display_board
end
