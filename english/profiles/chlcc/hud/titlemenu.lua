root.TitleMenu.IntroDelusionADVPositions = {
    { X = 78,  Y = 400 },
    { X = 78,  Y = 418 },
    { X = 174, Y = 400 },
    { X = 194, Y = 400 },
    { X = 211, Y = 400 }
};
root.TitleMenu.LCCLogoPositions[1] = { X = 231, Y = 333 };
root.TitleMenu.DelusionADVPosition = { X = 76, Y = 397 };
root.TitleMenu.LCCLogoUnderPosition = { X = 242, Y = 328 }

local oldCount = root.TitleMenu.IntroDelusionADVSpriteCount;
root.TitleMenu.IntroDelusionADVSprites = {};
root.TitleMenu.IntroDelusionADVSpriteCount = #root.TitleMenu.IntroDelusionADVPositions;
for i = 1, root.TitleMenu.IntroDelusionADVSpriteCount do
    root.TitleMenu.IntroDelusionADVSprites[i] = "IntroDelusionADV" .. i
end
for i = root.TitleMenu.IntroDelusionADVSpriteCount, oldCount do
    root.TitleMenu.IntroDelusionADVSprites[i] = nil
end

root.Sprites["DelusionADVUnder"] = {
    Sheet = "Title",
    Bounds = { X = 1862, Y = 785, Width = 154, Height = 33 },
};

root.Sprites["DelusionADV"] = {
    Sheet = "Title",
    Bounds = { X = 1862, Y = 734, Width = 154, Height = 33 },
};


root.Sprites["IntroDelusionADV1"] = {
    Sheet = "Title",
    Bounds = { X = 1862, Y = 683, Width = 90, Height = 18 },
};

root.Sprites["IntroDelusionADV2"] = {
    Sheet = "Title",
    Bounds = { X = 1862, Y = 701, Width = 90, Height = 15 },
};

root.Sprites["IntroDelusionADV3"] = {
    Sheet = "Title",
    Bounds = { X = 1958, Y = 683, Width = 19, Height = 33 },
};

root.Sprites["IntroDelusionADV4"] = {
    Sheet = "Title",
    Bounds = { X = 1978, Y = 683, Width = 17, Height = 33 },
};

root.Sprites["IntroDelusionADV5"] = {
    Sheet = "Title",
    Bounds = { X = 1996, Y = 683, Width = 19, Height = 33 },
};

root.Sprites["LCCLogoUnder"] = {
    Sheet = "Title",
    Bounds = { X = 591, Y = 771, Width = 468, Height = 122 },
};
