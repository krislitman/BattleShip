require 'minitest/autorun'
require 'minitest/pride'
require './lib/ship'
require './lib/cell'
require './lib/board'

class BoardTest < MiniTest::Test
  def test_board_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_board_has_16_cells
    # skip
    board = Board.new
    assert_equal 16, board.cells.count
<<<<<<< HEAD
  # require 'pry'; binding.pry
=======
>>>>>>> 6c90b1eb6eed4ea1faf35815f8b9177b6487b73a
  end

  def test_valid_coordinate_a1
    # skip
    board = Board.new
    assert_equal true, board.valid_coordinate?("A1")
  end

  def test_valid_coordinate_d4
    # skip
    board = Board.new
    assert_equal true, board.valid_coordinate?("D4")
  end

  def test_valid_coordinate_a5
    # skip
    board = Board.new
    assert_equal false, board.valid_coordinate?("A5")
  end

  def test_valid_coordinate_e1
    # skip
    board = Board.new
    assert_equal false, board.valid_coordinate?("E1")
  end

  def test_valid_coordinate_a22
    # skip
    board = Board.new
    assert_equal false, board.valid_coordinate?("A22")
  end

  def test_for_valid_placement_1
<<<<<<< HEAD
    #skip
=======
    # skip
>>>>>>> 6c90b1eb6eed4ea1faf35815f8b9177b6487b73a
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(cruiser, ["A1", "A2"])
  end

  def test_for_valid_placement_2
<<<<<<< HEAD
    #skip
=======
    # skip
>>>>>>> 6c90b1eb6eed4ea1faf35815f8b9177b6487b73a
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(submarine, ["A2", "A3", "A4"])
  end

  def test_coordinates_are_consecutive_1
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(cruiser, ["A1", "A2", "A4"])
  end

  def test_coordinates_are_consecutive_2
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(submarine, ["A1", "C1"])
  end

  def test_coordinates_are_consecutive_3
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(cruiser, ["A3", "A2", "A1"])
  end

  def test_coordinates_are_consecutive_4
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(submarine, ["C1", "B1"])
  end

  def test_coordinates_cannot_be_diagonal_1
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(cruiser, ["A1", "B2", "C3"])
  end

  def test_coordinates_cannot_be_diagonal_2
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(submarine, ["C2", "D3"])
  end

  def test_that_placement_is_valid_1
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal true, board.valid_placement?(submarine, ["A1", "A2"])
  end

  def test_that_placement_is_valid_2
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    assert_equal true, board.valid_placement?(cruiser, ["B1", "C1", "D1"])
  end

  def test_ship_3_equals_ship_2
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    board.place(cruiser, ["A1", "A2", "A3"])
    cell_1 = board.cells["A1"]
    cell_2 = board.cells["A2"]
    cell_3 = board.cells["A3"]
    # require "pry"; binding.pry
    assert_instance_of Ship, cell_1.ship
    assert_instance_of Ship, cell_2.ship
    assert_instance_of Ship, cell_3.ship
    assert_equal true, cell_3.ship == cell_2.ship
  end

  def test_ships_do_not_overlap
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    board.place(cruiser, ["A1", "A2", "A3"])
    submarine = Ship.new("Submarine", 2)
    assert_equal false, board.valid_placement?(submarine, ["A1", "B1"])
  end

  def test_render_works
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    board.place(cruiser, ["A1", "A2", "A3"])
    the_board = "  1 2 3 4 \n" +
                "A . . . . \n" +
                "B . . . . \n" +
                "C . . . . \n" +
                "D . . . . \n"
    assert_equal the_board, board.render
  end

  def test_render_works_with_optional_argument
    # skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    board.place(cruiser, ["A1", "A2", "A3"])
    the_board = "  1 2 3 4 \n" +
                "A S S S . \n" +
                "B . . . . \n" +
                "C . . . . \n" +
                "D . . . . \n"
    assert_equal the_board, board.render(true)
  end

  def test_for_hits_misses_and_sinks_1
    skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    board.place(cruiser, ["A1", "A2", "A3"])
    the_board = "  1 2 3 4 \n" +
                "A H . . . \n" +
                "B . . . M \n" +
                "C X . . . \n" +
                "D X . . . \n"
    assert_equal the_board, board.render
  end

  def test_for_hits_misses_and_sinks_2
    skip
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    board.place(cruiser, ["A1", "A2", "A3"])
    the_board = "  1 2 3 4 \n" +
                "A H S S . \n" +
                "B . . . M \n" +
                "C X . . . \n" +
                "D X . . . \n"
    assert_equal the_board, board.render(true)
  end
end
