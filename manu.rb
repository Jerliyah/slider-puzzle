def neighbors(board)
  # assume 9 coordinates
  result = []
  i = board.index("_")
  result << i - 3 if i / 3 > 0
  result << i + 3 if i / 3 < 2
  result << i - 1 if i % 3 > 0
  result << i + 1 if i % 3 < 2
end
