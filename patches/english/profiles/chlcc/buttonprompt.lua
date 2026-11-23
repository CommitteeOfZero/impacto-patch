UpdateButtonSpriteScale({ X = 3 / 8, Y = 3 / 8 });

local guideSpriteScale = 2 / 3

root.SystemMenu.SystemMenuButtonPrompt = {
    Sprite = "SystemMenuButtonPrompt",
    Icons = {
        { Key = "Directional",       X = 33 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}

-- Update this once we splice in the guide with select, enter, back
root.Sprites.SystemMenuButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 491, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.TrophyMenu.ButtonPromptSprite = {
    Sprite = "ButtonPromptTrophy",
    Icons = {
        { Key = "Directional",       X = 34 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 358 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.ButtonPromptTrophy = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 540, Width = 1015, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.OptionsMenu.ButtonPromptSprite = {
    Sprite = "ButtonPromptConfig",
    Icons = {
        { Key = "Directional",       X = 33 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 468 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1R1, X = 502 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 790 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 970 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = root.PADinput.PAD1B, X = 33 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "Directional",       X = 33 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 468 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1R1, X = 502 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 754 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "Directional",       X = 33 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 502 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 791 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 825 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1042 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.CgViewerButtonGuideVariation = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 50, Width = 1228, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.ExtraMenus.AlbumMenu.CgViewerButtonGuideNoVariation = root.ExtraMenus.AlbumMenu.CgViewerButtonGuideVariation;
root.Sprites.CgViewerButtonGuideNoVariation = root.Sprites.CgViewerButtonGuideVariation;

root.ExtraMenus.MusicMenu.ButtonPromptSprite = {
    Sprite = "MusicButtonPrompt",
    Icons = {
        { Key = "Directional",       X = 33 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 429 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 610 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1006 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "Directional",       X = 33 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 502 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 754 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "ArrowUpDown",       X = 33 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 574 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = "ArrowLeftRight",    X = 934 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1222 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "Directional",       X = 33 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 502 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "Directional",       X = 33 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 250 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 502 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1L1, X = 721 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1R1, X = 754 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 1006 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.SaveButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 442, Width = 1198, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.SystemMenu.SystemMenuButtonPromptPosition.X = 998
root.TrophyMenu.ButtonPromptPosition.X = 954
root.OptionsMenu.ButtonPromptPosition.X = 546
root.ExtraMenus.AlbumMenu.ButtonGuidePos.X = 690
root.ExtraMenus.AlbumMenu.CgViewerButtonGuidePos.X = 498
root.ExtraMenus.AlbumMenu.CgViewerButtonGuideNoVariationPos.X = root.ExtraMenus.AlbumMenu.CgViewerButtonGuidePos.X
root.ExtraMenus.ClearListMenu.ButtonPromptPosition.X = 1171
root.ExtraMenus.MusicMenu.ButtonPromptPosition.X = 522
root.ExtraMenus.MovieMenu.MovieButtonExtraPromptPosition.X = 690
root.TipsMenu.ButtonPromptPosition.X = 378
root.BacklogMenu.ButtonPromptPosition.X = 858
root.SaveMenu.ButtonPromptPosition.X = 522
