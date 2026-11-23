UpdateButtonSpriteScale( { X = 0.5, Y = 0.5 } );

-- y padding = 61
root.SystemMenu.MenuButtonGuide = {
    Sprite = "SystemMenuButtonGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 388, Y = 8.5 },
    }
};
root.Sprites.SystemMenuButtonGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 872, Width = 1926, Height = 57}
};

root.OptionsMenu.GuideSprite = {
    Sprite = "OptionsGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 387, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 630, Y = 8.5 },
    }
};
root.Sprites.OptionsGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 66, Width = 1926, Height = 57}
};

root.OptionsMenu.VoiceGuideSprite = {
    Sprite = "OptionsVoiceGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 387, Y = 8.5 },
        { Key = root.PADinput.PAD1Y, X = 630, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 988, Y = 8.5 },
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
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
        { Key = root.PADinput.PAD1L1, X = 390, Y = 8.5 },
        { Key = root.PADinput.PAD1R1, X = 418, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 662, Y = 8.5 },
    }
};
root.Sprites.AlbumMenuGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 252, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.AlbumMenuCGViewerGuideSprite = {
    Sprite = "AlbumMenuCGViewerGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 309, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 477, Y = 8.5 },
        { Key = root.PADinput.PAD1L2, X = 747, Y = 8.5 },
        { Key = root.PADinput.PAD1R2, X = 775, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 923, Y = 8.5 },
    }
};
root.Sprites.AlbumMenuCGViewerGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 314, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.MusicMenuGuideSprite = {
    Sprite = "MusicMenuGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 263, Y = 8.5 },
        { Key = root.PADinput.PAD1X, X = 388, Y = 8.5 },
        { Key = root.PADinput.PAD1Y, X = 513, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 781, Y = 8.5 },
    }
};
root.Sprites.MusicMenuGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 376, Width = 1926, Height = 57}
};

root.ExtraMenus.LibraryMenu.MovieMenuGuideSprite = {
    Sprite = "MovieMenuGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
        { Key = root.PADinput.PAD1Y, X = 387, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 558, Y = 8.5 },
    }
};
root.Sprites.MovieMenuGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 5, Width = 1926, Height = 57}
};

root.TipsMenu.TipsGuideSprite = {
    Sprite = "TipsGuide",
    Icons = {
        { Key = "Directional", X = 66, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
        { Key = "Scroll", X = 392, Y = 8.5 },
        { Key = root.PADinput.PAD1L1, X = 686, Y = 8.5 },
        { Key = root.PADinput.PAD1R1, X = 714, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 955, Y = 8.5 },
    }
};
root.Sprites.TipsGuide = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = {X = 4, Y = 438, Width = 1926, Height = 55}
};

root.BacklogMenu.BacklogControlsSprite = {
    Sprite = "BacklogControls",
    Icons = {
        { Key = "Directional", X = 68, Y = 8.5 },
        { Key = root.PADinput.PAD1A, X = 265, Y = 8.5 },
        { Key = root.PADinput.PAD1B, X = 462, Y = 8.5 },
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
            { Key = "Directional", X = 66, Y = 8.5 },
            { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
            { Key = root.PADinput.PAD1Y, X = 387, Y = 8.5 },
            { Key = root.PADinput.PAD1L1, X = 577, Y = 8.5 },
            { Key = root.PADinput.PAD1R1, X = 605, Y = 8.5 },
            { Key = root.PADinput.PAD1B, X = 849, Y = 8.5 },
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
        { Key = "Directional", X = 65, Y = 8.5 },
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
        { Key = root.PADinput.PAD1A, X = 262, Y = 8.5 },
    }
};
root.Sprites["UIButtonGuide0"] = {
    Sheet = "GuideSpritesNoIcons",
    Bounds = { X = 2, Y = 748, Width = 1926, Height = 57 },
};

