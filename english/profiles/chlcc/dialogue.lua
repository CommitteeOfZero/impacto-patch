root.Dialogue.DialogueFont = "LanguageBarrier";
root.Dialogue.REVLineSpacing = 0;
if root.Dialogue.TextModesInfo == nil then root.Dialogue.TextModesInfo = {}; end

-- ADV box
if root.Dialogue.TextModesInfo[0] == nil then root.Dialogue.TextModesInfo[0] = {}; end
root.Dialogue.TextModesInfo[0].WindowPos = { X = 161, Y = 540 };
root.Dialogue.TextModesInfo[0].NamePos = { X = -440, Y = -68 };
root.Dialogue.TextModesInfo[0].NameGlyphSize = { X = 30, Y = 30 };
root.Dialogue.TextModesInfo[0].LineSpacing = 3;
root.Dialogue.TextModesInfo[0].AlwaysAddRubySpacing = false;

-- NVL box
if root.Dialogue.TextModesInfo[1] == nil then root.Dialogue.TextModesInfo[1] = {}; end
root.Dialogue.TextModesInfo[1].LineSpacing = 3;
root.Dialogue.TextModesInfo[1].AlwaysAddRubySpacing = false;

-- Erin box
if root.Dialogue.TextModesInfo[2] == nil then root.Dialogue.TextModesInfo[2] = {}; end
root.Dialogue.TextModesInfo[2].WindowPos = { X = 334, Y = 206 + 1 + 14 * 24 / 32 }; -- Adjust for ruby spacing
root.Dialogue.TextModesInfo[2].LineSpacing = 3;
root.Dialogue.TextModesInfo[2].AlwaysAddRubySpacing = false;

-- Tips box
if root.Dialogue.TextModesInfo[7] == nil then root.Dialogue.TextModesInfo[7] = {}; end
root.Dialogue.TextModesInfo[7].LineSpacing = 3;

-- Backlog entry
if root.Dialogue.TextModesInfo[9] == nil then root.Dialogue.TextModesInfo[9] = {}; end
root.Dialogue.TextModesInfo[9].LineSpacing = 3;
