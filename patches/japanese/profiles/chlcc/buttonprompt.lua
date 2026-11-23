UpdateButtonSpriteScale({ X = 3 / 8, Y = 3 / 8 });

root.SpriteSheets["GuideSpritesNoIcons"] = {
    Path = { Mount = "system", Id = 27 },
    DesignWidth = 2048,
    DesignHeight = 538
}

local guideSpriteScale = 2 / 3

root.SystemMenu.SystemMenuButtonPrompt = {
    Sprite = "SystemMenuButtonPrompt",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
};
-- Update this once we splice in the guide with select, enter, back
root.Sprites.SystemMenuButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 491, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
};

root.TrophyMenu.ButtonPromptSprite = {
    Sprite = "ButtonPromptTrophy",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.ButtonPromptTrophy = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 491, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.OptionsMenu.ButtonPromptSprite = {
    Sprite = "ButtonPromptConfig",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 400 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1R1, X = 434 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 719 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1005 * guideSpriteScale, Y = 4 * guideSpriteScale },
        }
}
root.Sprites.ButtonPromptConfig = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 99, Width = 1198, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.ClearListMenu.ButtonPromptSprite = {
    Sprite = "ButtonPrompt",
    Icons = {
        { Key = root.PADinput.PAD1B, X = 35 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.ButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 246, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.AlbumMenu.ButtonGuide = {
    Sprite = "ButtonGuide",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 400 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1R1, X = 434 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 720 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.ButtonGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 295, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.AlbumMenu.CgViewerButtonGuideVariation = {
    Sprite = "CgViewerButtonGuideVariation",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 320 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 512 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 829 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 871 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1035 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 1267 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.CgViewerButtonGuideVariation = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 50, Width = 1460, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.AlbumMenu.CgViewerButtonGuideNoVariation = {
    Sprite = "CgViewerButtonGuideNoVariation",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 392 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.CgViewerButtonGuideNoVariation = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 197, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.MusicMenu.ButtonPromptSprite = {
    Sprite = "MusicButtonPrompt",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 391 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 524 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 841 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.MusicButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 148, Width = 1198, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.MovieMenu.MovieButtonExtraPrompt = {
    Sprite = "MovieButtonExtraPrompt",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 392 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 579 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.MovieButtonExtraPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 344, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.TipsMenu.ButtonPromptSprite = {
    Sprite = "ButtonPromptTips",
    Icons = {
        { Key = "ArrowUpDown",       X = 34 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 544 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = "ArrowLeftRight", X = 965 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1249 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.ButtonPromptTips = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 2, Width = 1470, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.BacklogMenu.BacklogButtonPromptSprite = {
    Sprite = "BacklogButtonPrompt",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 483 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.BacklogButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 393, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.SaveMenu.ButtonPrompt = {
    Sprite = "SaveButtonPrompt",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 258 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 391 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 645 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.SaveButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 442, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

local function rightAlignedX(spriteName)
    local sprite = root.Sprites[spriteName]
    return root.DesignWidth - sprite.Bounds.Width * sprite.BaseScale.X
end

root.SystemMenu.SystemMenuButtonPromptPosition.X = 1050;
root.OptionsMenu.ButtonPromptPosition.X = 525;
root.ExtraMenus.AlbumMenu.ButtonGuidePos.X = 700;
root.ExtraMenus.AlbumMenu.CgViewerButtonGuidePos.X = 490;
root.ExtraMenus.AlbumMenu.CgViewerButtonGuideNoVariationPos.X = 920;
root.ExtraMenus.ClearListMenu.ButtonPromptPosition.X = 1180;
root.ExtraMenus.MusicMenu.ButtonPromptPosition.X = 640;
root.ExtraMenus.MovieMenu.MovieButtonExtraPromptPosition.X = 800;
root.TipsMenu.ButtonPromptPosition.X = 370;
root.BacklogMenu.ButtonPromptPosition.X = 875;
root.SaveMenu.ButtonPromptPosition.X = 753;
