root.ExtraMenus.ClearListMenu.TimePositions = {
    { X = 1026, Y = 69 }, { X = 1046, Y = 69 },
    { X = 1087, Y = 69 }, { X = 1107, Y = 69 },
    { X = 1157, Y = 69 }, { X = 1177, Y = 69 },
} 
root.ExtraMenus.ClearListMenu.TIPSCountPositions = {
    { X = 1102, Y = 124 }, { X = 1122, Y = 124 }, { X = 1142, Y = 124 },
}

--ClearList

root.Sprites["Circle"] = {
    Sheet = "ClearList",
    Bounds = { X = 1, Y = 917, Width = 106, Height = 106 }
}

root.Sprites["MenuTitleText"] = {
    Sheet = "ClearList",
    Bounds = { X = 607, Y = 1, Width = 120, Height = 912 }
}

root.Sprites["ClearListLabel"] = {
    Sheet = "ClearList",
    Bounds = { X = 1, Y = 591, Width = 490, Height = 136 }
}

for i = 0, 9 do
    root.Sprites["Digit" .. i] = {
        Sheet = "ClearList",
        Bounds = {
            X = 211 + 22 * i,
            Y = 729,
            Width = 20,
            Height = 30
        }
    }
    root.ExtraMenus.ClearListMenu.Digits[#root.ExtraMenus.ClearListMenu.Digits + 1] = "Digit" .. i;
end

root.Sprites["EndingList"] = {
    Sheet = "ClearList",
    Bounds = { X = 1, Y = 1, Width = 604, Height = 588 }
}

root.Sprites["EndingBox"] = {
    Sheet = "ClearList",
    Bounds = { X = 1, Y = 761, Width = 198, Height = 96 }
}

local thumbnailXOffset = 30;
local thumbnailYOffset = 3;
local bp = root.ExtraMenus.ClearListMenu.BoxPositions;

for i = 1, #bp do
    root.ExtraMenus.ClearListMenu.ThumbnailPositions[#root.ExtraMenus.ClearListMenu.ThumbnailPositions + 1] = {
        X = bp[i].X + thumbnailXOffset,
        Y = bp[i].Y + thumbnailYOffset
    };
end

root.Sprites["LockedThumbnail"] = {
    Sheet = "ClearList",
    Bounds = { X = 729, Y = 1, Width = 160, Height = 90 }
}

local firstX = 729;
local firstY = 93;
local yDelta = 92;

for i = 1, 8 do
    root.Sprites["EndingThumbnail" .. i] = {
        Sheet = "ClearList",
        Bounds = {
            X = firstX,
            Y = firstY,
            Width = 160,
            Height = 90
        }
    };
    root.ExtraMenus.ClearListMenu.EndingThumbnails[#root.ExtraMenus.ClearListMenu.EndingThumbnails + 1] = "EndingThumbnail" .. i;
    firstY = firstY + yDelta;
end

--Reorganize to be in the flag order (801 -> 808)
--Yes I know it's bad
et = root.ExtraMenus.ClearListMenu.EndingThumbnails;
temp = et[1];
et[1] = et[2];
et[2] = temp;
et[2] = et[5];
et[5] = temp;
et[5] = et[7];
et[7] = temp;
et[7] = et[8];
et[8] = temp;

root.Sprites["ButtonPrompt"] = {
    Sheet = "ClearList",
    Bounds = { X = 1, Y = 729, Width = 208, Height = 30 }
}

--MovieList
root.Sprites["CircleMovie"] = {
    Sheet = "Movie",
    Bounds = { X = 1, Y = 917, Width = 106, Height = 106 }
}

root.Sprites["MovieBox"] = {
    Sheet = "Movie",
    Bounds = { X = 728, Y = 1, Width = 198, Height = 122 }
}

root.Sprites["MovieBoxExtra"] = {
    Sheet = "Movie",
    Bounds = { X = 1091, Y = 1, Width = 198, Height = 122 }
}

root.Sprites["MovieThumbnailExtraOp"] = {
    Sheet = "Movie",
    Bounds = { X = 1291, Y = 93, Width = 160, Height = 90 }
}

root.Sprites["MovieThumbnailExtraOp2"] = {
    Sheet = "Movie",
    Bounds = { X = 1291, Y = 185, Width = 160, Height = 90 }
}

root.Sprites["MovieButtonExtraPrompt"] = {
    Sheet = "Movie",
    Bounds = { X = 1, Y = 732, Width = 427, Height = 28 }
}

local thumbnailXOffset = 20;
local thumbnailYOffset = 16;
local bp = root.ExtraMenus.MovieMenu.BoxPositions;

for i = 1, #bp do
    root.ExtraMenus.MovieMenu.ThumbnailPositions[#root.ExtraMenus.MovieMenu.ThumbnailPositions + 1] = {
        X = bp[i].X + thumbnailXOffset,
        Y = bp[i].Y + thumbnailYOffset
    };
end

root.Sprites["MovieLabel"] = {
    Sheet = "Movie",
    Bounds = { X = 1, Y = 591, Width = 490, Height = 136 }
}

root.Sprites["MovieList"] = {
    Sheet = "Movie",
    Bounds = { X = 1, Y = 1, Width = 605, Height = 585 }
}

root.Sprites["MovieMenuTitleText"] = {
    Sheet = "Movie",
    Bounds = { X = 609, Y = 3, Width = 116, Height = 1005 }
}

local firstX = 928;
local firstY = 93;
local yDelta = 92;

for i = 1, 10 do
    root.Sprites["MovieThumbnail" .. i] = {
        Sheet = "Movie",
        Bounds = {
            X = firstX,
            Y = firstY,
            Width = 160,
            Height = 90
        }
    };
    root.ExtraMenus.MovieMenu.MoviesThumbnails[#root.ExtraMenus.MovieMenu.MoviesThumbnails + 1] = "MovieThumbnail" .. i;
    firstY = firstY + yDelta;
end

root.Sprites["MovieLockedThumbnail"] = {
    Sheet = "Movie",
    Bounds = { X = 928, Y = 1, Width = 160, Height = 90 }
}

root.Sprites["MovieButtonPrompt"] = {
    Sheet = "Movie",
    Bounds = { X = 1, Y = 686, Width = 282, Height = 28 }
}

local selectMovieBounds = {
    { X = 1, Y = 597, Width = 15, Height = 57 },
    { X = 19, Y = 597, Width = 16, Height = 57 },
    { X = 37, Y = 597, Width = 15, Height = 57 },
    { X = 53, Y = 597, Width = 16, Height = 57 },
    { X = 72, Y = 597, Width = 17, Height = 57 },
    { X = 89, Y = 597, Width = 13, Height = 57 },
    { X = 114, Y = 597, Width = 21, Height = 57 },
    { X = 138, Y = 597, Width = 16, Height = 57 },
    { X = 157, Y = 597, Width = 15, Height = 57 },
    { X = 179, Y = 597, Width = 7, Height = 57 },
    { X = 189, Y = 597, Width = 16, Height = 57 }
}

for i, bounds in ipairs(selectMovieBounds) do
    root.Sprites["SelectMovie" .. i - 1] = {
        Sheet = "Movie",
        Bounds = bounds
    }
    root.ExtraMenus.MovieMenu.SelectMovie[i] = "SelectMovie" .. i - 1;
end

root.Sprites["SelectedMovieYellowDot"] = {
    Sheet = "Movie",
    Bounds = { X = 294, Y = 694, Width = 14, Height = 14 }
}

MakeAnimation({
    Name = "SelectedMovieAnimDef",
    Sheet = "Movie",
    FirstFrameX = 728,
    FirstFrameY = 125,
    FrameWidth = 198,
    ColWidth = 198,
    FrameHeight = 124,
    RowHeight = 124,
    Frames = 7,
    Duration = 0.2,
    Rows = 7,
    Columns = 1,
    PrimaryDirection = AnimationDirections.Down,
});

MakeAnimation({
    Name = "SelectedMovieExtraAnimDef",
    Sheet = "Movie",
    FirstFrameX = 1091,
    FirstFrameY = 125,
    FrameWidth = 198,
    ColWidth = 198,
    FrameHeight = 124,
    RowHeight = 124,
    Frames = 7,
    Duration = 0.2,
    Rows = 7,
    Columns = 1,
    PrimaryDirection = AnimationDirections.Down,
});

--SoundList
root.Sprites["CircleSound"] = {
    Sheet = "Sound",
    Bounds = { X = 1, Y = 917, Width = 106, Height = 106 }
}

root.Sprites["TrackTreeSprite"] = {
    Sheet = "Sound",
    Bounds = { X = 1, Y = 1, Width = 802, Height = 608 }
}

root.Sprites["TrackHighlight"] = {
    Sheet = "Sound",
    Bounds = { X = 1, Y = 693, Width = 676, Height = 29 }
}

root.Sprites["PlaymodeRepeat"] = {
    Sheet = "Sound",
    Bounds = { X = 257, Y = 644, Width = 51, Height = 10 }
}

root.Sprites["PlaymodeAll"] = {
    Sheet = "Sound",
    Bounds = { X = 310, Y = 644, Width = 28, Height = 10 }
}

root.Sprites["PlaymodeRepeatHighlight"] = {
    Sheet = "Sound",
    Bounds = { X = 257, Y = 632, Width = 51, Height = 10 }
}

root.Sprites["PlaymodeAllHighlight"] = {
    Sheet = "Sound",
    Bounds = { X = 310, Y = 632, Width = 28, Height = 10 }
}

root.Sprites["NowPlaying"] = {
    Sheet = "Sound",
    Bounds = { X = 1, Y = 611, Width = 656, Height = 19 }
}

root.Sprites["MusicButtonPrompt"] = {
    Sheet = "Sound",
    Bounds = { X = 1, Y = 724, Width = 552, Height = 28}
}


root.Sprites["SoundLibraryTitle"] = {
    Sheet = "Sound",
    Bounds = { X = 805, Y = 1, Width = 118, Height = 961 }
}

root.Sprites["HighlightStar"] = {
    Sheet = "Sound",
    Bounds = { X = 216, Y = 632, Width = 23, Height = 23 }
}

local selectSoundBounds = {
    { X = 2, Y = 633, Width = 15, Height = 58 },
    { X = 20, Y = 633, Width = 16, Height = 58 },
    { X = 38, Y = 633, Width = 15, Height = 58 },
    { X = 54, Y = 633, Width = 16, Height = 58 },
    { X = 73, Y = 633, Width = 15, Height = 58 },
    { X = 90, Y = 633, Width = 13, Height = 58 },
    { X = 116, Y = 633, Width = 16, Height = 58 },
    { X = 136, Y = 633, Width = 16, Height = 58 },
    { X = 156, Y = 633, Width = 17, Height = 58 },
    { X = 176, Y = 633, Width = 18, Height = 58 },
    { X = 197, Y = 633, Width = 17, Height = 58 }
}

for i, bounds in ipairs(selectSoundBounds) do
    root.Sprites["SelectSound" .. i - 1] = {
        Sheet = "Sound",
        Bounds = bounds
    }
    root.ExtraMenus.MusicMenu.SelectSoundSprites[i] = "SelectSound" .. i - 1;
end

root.Sprites["ScrollThumb"] = {
    Sheet = "Sound",
    Bounds = { X = 241, Y = 632, Width = 14, Height = 59 }
}

--CGList
root.Sprites["CircleCG"] = {
    Sheet = "CG",
    Bounds = { X = 1, Y = 917, Width = 106, Height = 106 }
}

root.Sprites["CGList"] = {
    Sheet = "CG",
    Bounds = { X = 1, Y = 1, Width = 638, Height = 538 }
}

root.Sprites["PageCountLabel"] = {
    Sheet = "CG",
    Bounds = { X = 1, Y = 611, Width = 204, Height = 57 }
}

root.Sprites["CGBox"] = {
    Sheet = "CG",
    Bounds = { X = 235, Y = 611, Width = 252, Height = 158 }
}

for i = 0, 6 do
    for j = 0, 7 do
        root.Sprites["AlbumThumbnail" .. (8 * i + j)] = {
            Sheet = "AlbumThumbnailSheet",
            Bounds = { X = 234 * j + 1, Y = 132 * i + 1, Width = 232, Height = 130 }
        }
        root.ExtraMenus.AlbumMenu.AlbumThumbnails[#root.ExtraMenus.AlbumMenu.AlbumThumbnails + 1] = "AlbumThumbnail" .. (8 * i + j);
    end
end

for i = 0, 6 do
    root.Sprites["AlbumThumbnail" .. (56 + i)] = {
        Sheet = "AlbumThumbnailSheet2",
        Bounds = { X =  234 * i + 1, Y = 1, Width = 232, Height = 130 }
    }
    root.ExtraMenus.AlbumMenu.AlbumThumbnails[#root.ExtraMenus.AlbumMenu.AlbumThumbnails + 1] = "AlbumThumbnail" .. (56 + i);
end

root.Sprites["VariationUnlocked"] = {
    Sheet = "CG",
    Bounds = { X = 489, Y = 611, Width = 22, Height = 22 }
}

root.Sprites["VariationLocked"] = {
    Sheet = "CG",
    Bounds = { X = 513, Y = 611, Width = 22, Height = 22 }
}

root.Sprites["LockedCG"] = {
    Sheet = "CG",
    Bounds = { X = 235, Y = 785, Width = 232, Height = 130 }
}

root.Sprites["ThumbnailHighlight"] = {
    Sheet = "CG",
    Bounds = { X = 1, Y = 785, Width = 232, Height = 130 }
}

for i = 0, 9 do
    root.Sprites["PageNum" .. i] = {
        Sheet = "Data",
        Bounds = { X = i * 36 + 371, Y = 1, Width = 34, Height = 48 }
    };
    root.ExtraMenus.AlbumMenu.PageNums[#root.ExtraMenus.AlbumMenu.PageNums + 1] = "PageNum" .. i;
end

root.Sprites["PageNumSeparatorSlash"] = {
    Sheet = "Data",
    Bounds = { X = 173, Y = 67, Width = 16, Height = 22 }
};

for i = 0, 9 do
    root.Sprites["ReachablePageNum" .. i] = {
        Sheet = "Data",
        Bounds = { X = 191 + 18 * i, Y = 67, Width = 16, Height = 22 }
    };
    root.ExtraMenus.AlbumMenu.ReachablePageNums[#root.ExtraMenus.AlbumMenu.ReachablePageNums + 1] = "ReachablePageNum" .. i;
end

root.Sprites["ButtonGuide"] = {
    Sheet = "CG",
    Bounds = { X = 1, Y = 581, Width = 380, Height = 28 }
}

local selectDataBounds = {
    { X = 1, Y = 670, Width = 18, Height = 55 },
    { X = 21, Y = 670, Width = 16, Height = 55 },
    { X = 39, Y = 670, Width = 15, Height = 55 },
    { X = 56, Y = 670, Width = 16, Height = 55 },
    { X = 74, Y = 670, Width = 17, Height = 55 },
    { X = 93, Y = 670, Width = 22, Height = 55 },
    { X = 117, Y = 670, Width = 22, Height = 55 },
    { X = 141, Y = 670, Width = 17, Height = 55 },
    { X = 159, Y = 670, Width = 18, Height = 55 },
    { X = 179, Y = 670, Width = 20, Height = 55 }
}

for i, bounds in ipairs(selectDataBounds) do
    root.Sprites["SelectData" .. i - 1] = {
        Sheet = "CG",
        Bounds = bounds
    }
    root.ExtraMenus.AlbumMenu.SelectDataSprites[i] = "SelectData" .. i - 1;
end

root.Sprites["AlbumMenuTitle"] = {
    Sheet = "CG",
    Bounds = { X = 641, Y = 1, Width = 120, Height = 954 }
}

root.Sprites["CgViewerButtonGuideVariation"] = {
    Sheet = "CG",
    Bounds = { X = 757, Y = 578, Width = 1190, Height = 38 }
}

root.Sprites["CgViewerButtonGuideNoVariation"] = {
    Sheet = "CG",
    Bounds = { X = 757, Y = 536, Width = 1190, Height = 38 }
}

root.Sprites["SelectionMarkerSprite"] = {
    Sheet = "CG",
    Bounds = { X = 433, Y = 581, Width = 28, Height = 28 }
}