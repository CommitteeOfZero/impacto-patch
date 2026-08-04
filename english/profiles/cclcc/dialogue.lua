root.Dialogue.DialogueFont = "LanguageBarrier";

if root.Dialogue.TextModesInfo == nil then root.Dialogue.TextModesInfo = {}; end

-- ADV box
if root.Dialogue.TextModesInfo[0] == nil then root.Dialogue.TextModesInfo[0] = {}; end
root.Dialogue.TextModesInfo[0].WindowPos = { X = 220 * 1.5, Y = (518 + 11 + 5 + 1) * 1.5 }; -- Correct for missing ruby space
root.Dialogue.TextModesInfo[0].TextGlyphSize = { X = 38, Y = 38 };
root.Dialogue.TextModesInfo[0].LineSpacing = (1 + 5 + 1) * 1.5 - 3; -- (RubySpacing + RubyHeight + LineSpacing) * 1.5 - 3
root.Dialogue.TextModesInfo[0].AlwaysAddRubySpacing = false;

-- NVL box
if root.Dialogue.TextModesInfo[1] == nil then root.Dialogue.TextModesInfo[1] = {}; end
root.Dialogue.TextModesInfo[1].TextGlyphSize = { X = 38, Y = 38 };
root.Dialogue.TextModesInfo[1].LineSpacing = (1 + 5 + 1) * 1.5 - 3;
root.Dialogue.TextModesInfo[1].AlwaysAddRubySpacing = false;

-- Tips box
if root.Dialogue.TextModesInfo[7] == nil then root.Dialogue.TextModesInfo[7] = {}; end
root.Dialogue.TextModesInfo[7].TextGlyphSize = { X = 38, Y = 38 };
root.Dialogue.TextModesInfo[7].LineSpacing = (1 + 5 + 1) * 1.5 - 3;
root.Dialogue.TextModesInfo[7].AlwaysAddRubySpacing = false;

-- Backlog entry
if root.Dialogue.TextModesInfo[9] == nil then root.Dialogue.TextModesInfo[9] = {}; end
root.Dialogue.TextModesInfo[9].NameGlyphSize = { X = 38, Y = 38 };
root.Dialogue.TextModesInfo[9].TextGlyphSize = { X = 38, Y = 38 };
root.Dialogue.TextModesInfo[9].LineSpacing = (1 + 5 + 1) * 1.5 - 3;
root.Dialogue.TextModesInfo[9].AlwaysAddRubySpacing = false;
