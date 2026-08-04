root.Dialogue.REVLineSpacing = 0;
root.Dialogue.TextModesInfo = {
    ["0"] = { -- ADV box
        WindowPos = { X = 161, Y = 540 },
        NamePos = { X = -440, Y = -68 },
        NameGlyphSize = { X = 30, Y = 30 },
        LineSpacing = 3,
        AlwaysAddRubySpacing = false,
    },
    ["1"] = { -- NVL box
        LineSpacing = 3,
        AlwaysAddRubySpacing = false,
    },
    ["2"] = { -- Erin box
        WindowPos = { X = 334, Y = 206 + 1 + 14 * 24 / 32 }, -- Adjust for ruby spacing
        LineSpacing = 3,
        AlwaysAddRubySpacing = false,
    },
    ["7"] = { -- Tips box
        LineSpacing = 3,
    },
    ["9"] = { -- Backlog entry
        LineSpacing = 3,
    }
};