class Fixnum
  define_method(:coin_combos) do
    # quarters = (self/25).floor()
    # dimes = ((self%25)/10).floor()
    # nickels = (((self%25)%10)/5).floor()
    # pennies = ((self%25)%10)%5
    # change = [quarters, dimes, nickels, pennies]

    remainder = self
    change = []
    counter = 1
    until remainder.==(0)
      if counter.==(1)
        divisor = 25
      elsif counter.==(2)
        divisor = 10
      elsif counter.==(3)
        divisor = 5
      elsif counter.==(4)
        divisor = 1
      end
      change.push((remainder/divisor).floor())
      remainder = remainder%divisor
      counter = counter.+(1)
    end
    (5 - counter).times do
      change.push(0)
    end
    change
  end
end
