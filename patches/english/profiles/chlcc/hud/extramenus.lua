root.ExtraMenus.ClearListMenu.TimePositions = {
    { X = 1026, Y = 69 }, { X = 1046, Y = 69 },
    { X = 1087, Y = 69 }, { X = 1107, Y = 69 },
    { X = 1157, Y = 69 }, { X = 1177, Y = 69 },
}
root.ExtraMenus.ClearListMenu.TIPSCountPositions = {
    { X = 1102, Y = 124 }, { X = 1122, Y = 124 }, { X = 1142, Y = 124 },
}

root.ExtraMenus.MovieMenu.MovieExtraVideosEnabled = true;
root.ExtraMenus.MovieMenu.MovieBoxExtra = "MovieBoxExtra";
root.ExtraMenus.MovieMenu.MovieThumbnailExtraOp = "MovieThumbnailExtraOp";
root.ExtraMenus.MovieMenu.MovieThumbnailExtraOp2 = "MovieThumbnailExtraOp2";
root.ExtraMenus.MovieMenu.MovieButtonExtraPromptPosition = { X = 877, Y = 651 };
root.ExtraMenus.MovieMenu.MovieButtonExtraPrompt = "MovieButtonExtraPrompt";
root.ExtraMenus.MovieMenu.SelectedMovieExtraAnimation = "SelectedMovieExtraAnimDef";

root.Sprites["MovieBoxExtra"] = {
    Sheet = "Movie",
    Bounds = { X = 1091, Y = 1, Width = 198, Height = 122 },
};

root.Sprites["MovieThumbnailExtraOp"] = {
    Sheet = "Movie",
    Bounds = { X = 1291, Y = 93, Width = 160, Height = 90 },
};

root.Sprites["MovieThumbnailExtraOp2"] = {
    Sheet = "Movie",
    Bounds = { X = 1291, Y = 185, Width = 160, Height = 90 },
};

root.Sprites["MovieButtonExtraPrompt"] = {
    Sheet = "Movie",
    Bounds = { X = 1, Y = 732, Width = 427, Height = 28 },
};

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
