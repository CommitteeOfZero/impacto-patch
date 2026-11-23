UpdateButtonSpriteScale({ X = 3 / 8, Y = 3 / 8 });

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
        { Key = "Directional",       X = 35 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 321 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = "Directional",       X = 34 * guideSpriteScale,   Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1A, X = 257 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1X, X = 391 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 523 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = root.PADinput.PAD1A, X = 257 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1Y, X = 391 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = root.PADinput.PAD1X, X = 543 * guideSpriteScale,  Y = 4 * guideSpriteScale },
        { Key = "ArrowLeftRight",    X = 965 * guideSpriteScale, Y = 4 * guideSpriteScale },
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
        { Key = root.PADinput.PAD1L1, X = 611 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1R1, X = 645 * guideSpriteScale, Y = 4 * guideSpriteScale },
        { Key = root.PADinput.PAD1B, X = 931 * guideSpriteScale, Y = 4 * guideSpriteScale },
    }
}
root.Sprites.SaveButtonPrompt = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 442, Width = 1198, Height = 44 },
    BaseScale = { X = guideSpriteScale, Y = guideSpriteScale }
}

root.SystemMenu.SystemMenuButtonPromptPosition.X = 1029;
root.TrophyMenu.ButtonPromptPosition.X = 989;
root.OptionsMenu.ButtonPromptPosition.X = 533;
root.ExtraMenus.AlbumMenu.ButtonGuidePos.X = 723;
root.ExtraMenus.AlbumMenu.CgViewerButtonGuidePos.X = 512;
root.ExtraMenus.AlbumMenu.CgViewerButtonGuideNoVariationPos.X = root.ExtraMenus.AlbumMenu.CgViewerButtonGuidePos.X
root.ExtraMenus.ClearListMenu.ButtonPromptPosition.X = 1179;
root.ExtraMenus.MusicMenu.ButtonPromptPosition.X = 642;
root.ExtraMenus.MovieMenu.MovieButtonExtraPromptPosition.X = 817;
root.TipsMenu.ButtonPromptPosition.X = 370;
root.BacklogMenu.ButtonPromptPosition.X = 881;
root.SaveMenu.ButtonPromptPosition.X = 582;
