local numberOfPages = 1;
local i = numberOfPages;
while root.SpriteSheets["ManualSheet" .. i] ~= nil do
    root.SpriteSheets["ManualSheet" .. i] = nil
    i = i + 1
end

root.SpriteSheets["ControllerButtonIcons"] = {
    Path = root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/controller_button_icons.png",
    DesignWidth = 704,
    DesignHeight = 704,
}
root.SpriteSheets["KeyboardButtonIcons"] = {
    Path = root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/keyboard_button_icons.png",
    DesignWidth = 1088,
    DesignHeight = 1024,
}
root.SpriteSheets["GuideSpritesNoIcons"] = {
    Path = { Mount = "system", Id = 40 },
    DesignWidth = 2048,
    DesignHeight = 1386,
}