-- Turtle Object --

Turtle = {  minFuelLevel = 20000, 
            fuelLevel = 0,

      getFuelLevel = function()
        return Turtle.fuelLevel  
        end,
      
      setFuelLevel = function()
        Turtle.fuelLevel = turtle.getFuelLevel()
        end,

      startingFuel = function()
          Turtle.setFuelLevel()
          if Turtle.fuelLevel < Turtle.minFuelLevel then
      
} 

-- Check Fuel lvl -- 

turtle.refuel()
Turtle.setFuelLevel()
print('Fuel Level is: ', Turtle.getFuelLevel()) 
