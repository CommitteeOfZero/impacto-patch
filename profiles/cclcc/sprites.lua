local numberOfPages = 1;
local i = numberOfPages;
while root.SpriteSheets["ManualSheet" .. i] ~= nil do
    root.SpriteSheets["ManualSheet" .. i] = nil
    i = i + 1
end