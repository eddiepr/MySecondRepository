require_relative("../lib/class_cell.rb")

RSpec.describe("Cell") do 


  it ("A live cell with fewer than two live neighbours dies, as if caused by under-population.") do
      cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
      expect(cell1.live_on).to eq(false)
    end    

    it ("A live cell with two or three live neighbours lives on to the next generation.") do
      cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
      expect(cell1.live_on).to eq(true)
    end

    it ("A live cell with two or three live neighbours lives on to the next generation.") do
      cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
      expect(cell1.live_on).to eq(true)
    end

    it ("A live cell with more than three live neighbours dies, as if by overcrowding.") do
      cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
      expect(cell1.live_on).to eq(false)
    end

    it ("regenerates a dead cell from a dead cell if it has 0 neighbours") do
      cell1 = Cell.new(0, [0,0,0,0,0,1,1,1])
      expect(cell1.live_on).to eq(true)
    end






  #   it ("A live cell with fewer than two live neighbours dies, as if caused by under-population.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
  #     expect(cell1.regenerate).to eq(false)
  #   end    

  #   it ("A live cell with two or three live neighbours lives on to the next generation.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
  #     expect(cell1.regenerate).to eq(false)
  #   end

  #   it ("A live cell with more than three live neighbours dies, as if by overcrowding.") do
  #     cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
  #     expect(cell1.regenerate).to eq(false)
  #   end

  #   it ("regenerates a dead cell from a dead cell if it has 0 neighbours") do
  #     cell1 = Cell.new(0, [0,0,0,0,0,1,1,1])
  #     expect(cell1.regenerate).to eq(true)
  #   end




  #   it ("A live cell with fewer than two live neighbours dies, as if caused by under-population.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
  #     expect(cell1.move_on).to eq(false)
  #   end    

  #   it ("A live cell with two or three live neighbours lives on to the next generation.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
  #     expect(cell1.move_on).to eq(true)
  #   end

  #   it ("A live cell with more than three live neighbours dies, as if by overcrowding.") do
  #     cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
  #     expect(cell1.move_on).to eq(false)
  #   end

  #   it ("regenerates a dead cell from a dead cell if it has 0 neighbours") do
  #     cell1 = Cell.new(0, [0,0,0,0,0,1,1,1])
  #     expect(cell1.move_on).to eq(false)
  #   end
  # # write more tests to cover all cases



  # it ("A live cell with fewer than two live neighbours dies, as if caused by under-population.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
  #     expect(cell1.under_population).to eq(true)
  #   end    

  #   it ("A live cell with two or three live neighbours lives on to the next generation.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
  #     expect(cell1.under_population).to eq(false)
  #   end

  #   it ("A live cell with more than three live neighbours dies, as if by overcrowding.") do
  #     cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
  #     expect(cell1.under_population).to eq(false)
  #   end

  #   it ("regenerates a dead cell from a dead cell if it has 0 neighbours") do
  #     cell1 = Cell.new(0, [0,0,0,0,0,1,1,1])
  #     expect(cell1.under_population).to eq(false)
  #   end



  #   it ("A live cell with fewer than two live neighbours dies, as if caused by under-population.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
  #     expect(cell1.over_population).to eq(false)
  #   end    

  #   it ("A live cell with two or three live neighbours lives on to the next generation.") do
  #     cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
  #     expect(cell1.over_population).to eq(false)
  #   end

  #   it ("A live cell with more than three live neighbours dies, as if by overcrowding.") do
  #     cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
  #     expect(cell1.over_population).to eq(true)
  #   end

  #   it ("regenerates a dead cell from a dead cell if it has 0 neighbours") do
  #     cell1 = Cell.new(0, [0,0,0,0,0,1,1,1])
  #     expect(cell1.over_population).to eq(false)
  #   end

end