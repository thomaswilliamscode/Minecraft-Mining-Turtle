-- Turtle Object --

Turtle = {  -- variables -- 
            minFuelLevel = 20000, 
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

      -- Fuel check must pass to continue -- 
      startingFuel = function()
          Turtle.setFuelLevel()
          if Turtle.fuelLevel < Turtle.minFuelLevel then
             
} 

-- Check Fuel lvl -- 

turtle.refuel()
Turtle.setFuelLevel()
print('Fuel Level is: ', Turtle.getFuelLevel()) 
