root.ExtraMenus.LibraryMenu.MovieExtraVideosEnabled = true;
root.ExtraMenus.LibraryMenu.MovieDiskExtraOp = "MovieDiskExtraOp";
root.ExtraMenus.LibraryMenu.MovieDiskExtraOpHighlight = "MovieDiskExtraOpHighlight";
root.ExtraMenus.LibraryMenu.MovieDiskExtraOpPlayId = 62;

root.Sprites["MovieDiskExtraOp"] = {
    Sheet = "MovMenu",
    Bounds = { X = 2300, Y = 0, Width = 575, Height = 575 },
};

root.Sprites["MovieDiskExtraOpHighlight"] = {
    Sheet = "MovMenu",
    Bounds = { X = 2300, Y = 575 + 9, Width = 575, Height = 575 },
};
