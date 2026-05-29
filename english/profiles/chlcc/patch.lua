root.Patch = {
  Language = "English",
  HasScriptedExitLogic = true,
  CloseBacklogWhenReachedEnd = true,
  DateFormat = DateFormatType.YMD,
  -- HasDelusionMouseSupport = true,
}

include(root.BaseConfig.RootPatchesDir .. "/english/profiles/chlcc/game.lua") 