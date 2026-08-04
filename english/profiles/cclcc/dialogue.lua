root.Dialogue.TextModesInfo =  {
    ["0"] = { -- ADV box
        WindowPos = { X = 220 * 1.5, Y = (518 + 11 + 5 + 1) * 1.5 }, -- Correct for missing ruby space
        WaitIconDispMode = WaitIconDispModeType.FixedPos,
        WaitIconPos = waitIconPos,
        TextGlyphSize = { X = 38, Y = 38 },
        LineSpacing = (1 + 5 + 1) * 1.5 - 3, -- (RubySpacing + RubyHeight + LineSpacing) * 1.5 - 3
        AlwaysAddRubySpacing = false,
    },
    ["1"] = { -- NVL box
        WaitIconDispMode = WaitIconDispModeType.FixedPos,
        WaitIconPos = waitIconPos,
        TextGlyphSize = { X = 38, Y = 38 },
        LineSpacing = (1 + 5 + 1) * 1.5 - 3,
        AlwaysAddRubySpacing = false,
    },
    ["7"] = { -- Tips box
        TextGlyphSize = { X = 38, Y = 38 },
        LineSpacing = (1 + 5 + 1) * 1.5 - 3,
        AlwaysAddRubySpacing = false,
    },
    ["9"] = { -- Backlog entry
        NameGlyphSize = { X = 38, Y = 38 },
        TextGlyphSize = { X = 38, Y = 38 },
        LineSpacing = (1 + 5 + 1) * 1.5 - 3,
        AlwaysAddRubySpacing = false,
    }
}