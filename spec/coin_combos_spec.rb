require('rspec')
require('coin_combos')

describe('Fixnum#coin_combos') do
  it('returns the number of quarters required to add up to an input that is divisible by 25') do
    expect(75.coin_combos).to(eq([3,0,0,0]))
  end
  it('returns the least number of quarters and dimes required to add up to an input (neglecting any remainder)') do
    expect(95.coin_combos).to(eq([3,2,0,0]))
  end
  it('returns the least number of quarters, dimes, and nickels required to add up to an input (neglecting any remainder)') do
    expect(90.coin_combos).to(eq([3,1,1,0]))
  end
  it('returns the least number of quarters, dimes, nickels, and pennies require to add up to an input') do
    expect(93.coin_combos).to(eq([3,1,1,3]))
  end
end
