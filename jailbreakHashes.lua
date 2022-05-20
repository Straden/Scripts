local remote = game:GetService("ReplicatedStorage"):FindFirstChildWhichIsA("RemoteEvent")
local hashes = {arrest = ""}
local index = 0
for a,b in next, getreg() do
 if typeof(b) == "function" and getfenv(b).script == game:GetService('Players').LocalPlayer.PlayerScripts.LocalScript then
  for c,d in next, debug.getupvalues(b) do
   if typeof(d) == "function" then
    for e,f in next, debug.getupvalues(d) do
     if typeof(f) == "table" and e == 3 then
      for g,h in next, f do
       if #g == 8 then
        if #tostring(h) == 37 then
         index = index + 1
         if index == 219 then 
                hashes.arrest = h
            end
            if index == 147 then 
             hashes.drop = h 
            end
        end
       end
      end
     end
    end
   end
  end
 end
end
return hashes, remote
