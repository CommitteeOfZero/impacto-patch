UpdateButtonSpriteScale( { X = 0.5, Y = 0.5 } );

-- y padding = 61
root.SystemMenu.MenuButtonGuide = {
    Sprite = "SystemMenuButtonGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 282, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 535, Y = 8.5 },
    }
};
root.Sprites.SystemMenuButtonGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 872, Width = 1926, Height = 57}
};

root.OptionsMenu.GuideSprite = {
    Sprite = "OptionsGuide",
    Icons = {
        { Key = "Directional",       X = 66,  Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 282, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 535, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 751, Y = 8.5 },
    }
};
root.Sprites.OptionsGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 66, Width = 1926, Height = 57}
};

root.OptionsMenu.VoiceGuideSprite = {
    Sprite = "OptionsVoiceGuide",
    Icons = {
        { Key = "Directional",       X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 282, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 535, Y = 8.5 },
        { Key = root.PADinput.PAD1Y, X = 749, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 1075, Y = 8.5 },
    }
};
root.Sprites.OptionsVoiceGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 128, Width = 1926, Height = 57}
};

root.ExtraMenus.ClearListMenu.ClearListGuideSprite = {
    Sprite = "ClearListGuide",
    Icons = {
        { Key = root.PADinput.PAD1B, X = 66, Y = 8.5 },
    }
};
root.Sprites.ClearListGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 190, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.AlbumMenuGuideSprite = {
    Sprite = "AlbumMenuGuide",
    Icons = {
        { Key = "Directional",        X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A,  X = 282, Y = 8.5 },
        { Key = root.PADinput.PAD1L1, X = 542, Y = 8.5 },
        { Key = root.PADinput.PAD1R2, X = 570, Y = 8.5 },
        { Key = root.PADinput.PAD1B,  X = 931, Y = 8.5 },
    }
};
root.Sprites.AlbumMenuGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 252, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.AlbumMenuCGViewerGuideSprite = {
    Sprite = "AlbumMenuCGViewerGuide",
    Icons = {
        { Key = "Directional",        X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A,  X = 283, Y = 8.5 },
        { Key = root.PADinput.PAD1Y,  X = 535, Y = 8.5 },
        { Key = root.PADinput.PAD1L2, X = 901, Y = 8.5 },
        { Key = root.PADinput.PAD1R2, X = 929, Y = 8.5 },
        { Key = root.PADinput.PAD1B,  X = 1183, Y = 8.5 },
    }
};
root.Sprites.AlbumMenuCGViewerGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 314, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.MusicMenuGuideSprite = {
    Sprite = "MusicMenuGuide",
    Icons = {
        { Key = "Directional",       X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 283, Y = 8.5 },
        { Key = root.PADinput.PAD1Y, X = 534, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 750, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 1183, Y = 8.5 },
    }
};
root.Sprites.MusicMenuGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 376, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.MovieMenuGuideSprite = {
    Sprite = "MovieMenuGuide",
    Icons = {
        { Key = "Directional",       X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 282, Y = 8.5 },
        { Key = root.PADinput.PAD1Y, X = 535, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 751, Y = 8.5 },
    }
};
root.Sprites.MovieMenuGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 5, Width = 1926, Height = 57}
};

root.TipsMenu.TipsGuideSprite = {
    Sprite = "TipsGuide",
    Icons = {
        { Key = "Directional",        X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A,  X = 282, Y = 8.5 },
        { Key = "Scroll",             X = 534, Y = 8.5 },
        { Key = root.PADinput.PAD1L1, X = 758, Y = 8.5 },
        { Key = root.PADinput.PAD1R1, X = 786, Y = 8.5 },
        { Key = root.PADinput.PAD1B,  X = 1111, Y = 8.5 },
    }
};
root.Sprites.TipsGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 438, Width = 1926, Height = 55}
};

root.BacklogMenu.BacklogControlsSprite = {
    Sprite = "BacklogControls",
    Icons = {
        { Key = "Directional",       X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 283, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 571, Y = 8.5 },
    }
};
root.Sprites.BacklogControls = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 500, Width = 1926, Height = 57}
};

for i, menuType in ipairs({ "QuickLoad", "Save", "Load" }) do
    root.SaveMenu[menuType .. "ButtonGuideSprite"] = {
        Sprite = menuType .. "ButtonGuide",
        Icons = {
            { Key = "Directional",       X = 66, Y = 8.5 },
            { Key = root.PADinput.PAD1A, X = 282, Y = 8.5 },
            { Key = root.PADinput.PAD1Y, X = 535, Y = 8.5 },
            { Key = root.PADinput.PAD1B, X = 823, Y = 8.5 },
        }
    };
    root.Sprites[menuType .. "ButtonGuide"] = {
        Sheet = "GuideSpritesNoIcons",
        Bounds = {X = 4, Y = 562, Width = 1926, Height = 59}
    };
end

root.GameSpecific.UIButtonGuideSprites[1] = {
    Sprite = "UIButtonGuide1",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
    }
};
root.Sprites["UIButtonGuide1"] = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 810, Width = 1926, Height = 57 },
};

root.GameSpecific.UIButtonGuideSprites[2] = {
    Sprite = "UIButtonGuide0",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 282, Y = 8.5 },
    }
};
root.Sprites["UIButtonGuide0"] = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 748, Width = 1926, Height = 57 },
};

