local Unit = (HitPlayer.Head.Position - Self.Head.Position).Unit
local SelfLook = Self.Head.CFrame.LookVector
local dotProduct = Unit:Dot(SelfLook)

if dotProduct >= 0.5 then
    --do damage
end