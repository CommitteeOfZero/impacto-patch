local numberOfPages = 1;
local i = numberOfPages;
while root.SpriteSheets["ManualSheet" .. i] ~= nil do
    root.SpriteSheets["ManualSheet" .. i] = nil
    i = i + 1
end

root.SpriteSheets["GuideSpritesNoIcons"] = {
    Path = { Mount = "system", Id = 40 },
    DesignWidth = 2048,
    DesignHeight = 1386,
}