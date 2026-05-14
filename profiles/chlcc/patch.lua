root.Patch = {
  Language = "English",
  HasScriptedExitLogic = true,
  CloseBacklogWhenReachedEnd = true,
  DateFormat = DateFormatType.YMD,
}

include(root.BaseConfig.RootPatchesDir .. "/profiles/chlcc/game.lua") 