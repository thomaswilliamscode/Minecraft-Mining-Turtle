-- Turtle Object --

Turtle = {  -- variables -- 
            minFuelLevel = 5000, 
            fuelLevel = 0,

      -- functions -- 

      -- This returns the fuel level that we store in the object variable -- 
      getFuelLevel = function()
        return Turtle.fuelLevel  
        end,
      
      -- This sets object fuel level to the correct value -- 
      setFuelLevel = function()
        Turtle.fuelLevel = turtle.getFuelLevel()
        end,

      -- This checks all inventory slots for fuel and tries to refuel -- 
      reFuel = function()
        for i = 1, 16 do 
          turtle.select(i)
          turtle.refuel()
        end 
      end,

      -- Fuel check must pass to continue -- 
      startingFuel = function()
          Turtle.setFuelLevel()
          local count = 1
          while Turtle.fuelLevel < Turtle.minFuelLevel do
            print('I Need A Fuel Level Of ', Turtle.minFuelLevel)
            print('Currently I have A Fuel Level Of ', Turtle.fuelLevel)
            print(count)
            print()
            count = count + 1
            sleep(10)
            Turtle.reFuel()
            if Turtle.fuelLevel >= Turtle.minFuelLevel then 
               break end
          end
      print('Starting With A Fuel Level Of:',Turtle.fuelLevel)
      end,

    -- StartUp Function that Checks Fuel Levels, Torch Amounts, and Cob Amounts before being able to Proceed. -- 
    startUp = function()
      Turtle.startingFuel()
    end,
             
} 

-- StartUp Function -- 

Turtle.startUp()
