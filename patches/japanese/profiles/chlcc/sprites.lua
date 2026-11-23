root.SpriteSheets.DelusionText.DesignWidth = 2730;
root.SpriteSheets.DelusionText.DesignHeight = 1408;

if root.Patch.HasDelusionMouseSupport then
    root.SpriteSheets.DelusionHeart  = {
        Path = { Mount = "system", Id = 26 },
        DesignWidth = 1280,
        DesignHeight = 720
    }
end

root.SpriteSheets["GuideSpritesNoIcons"] = {
    Path = { Mount = "system", Id = 27 },
    DesignWidth = 2048,
    DesignHeight = 538,
}