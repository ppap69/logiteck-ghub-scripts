local Fire_key = 5 --mouse button
local waitdelay = 1


local robloxSen = 0.36-- enter roblox sensitivity
function robloxTurn(PAng,YAng)
  MoveMouseRelative( (YAng*2) * (1/robloxSen) , (PAng*2) * (1/robloxSen) )
end

function OnEvent(event, arg)
    if (event == "MOUSE_BUTTON_PRESSED" and arg == Fire_key) then
        while IsMouseButtonPressed(Fire_key) do
          robloxTurn(0,180)
          Sleep(waitdelay)
        end
    end
end
