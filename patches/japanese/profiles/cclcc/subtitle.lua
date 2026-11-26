root.Subtitle = {
  SubtitleMappings = {
    movie = {
      ["movie_op.mp4"] = {
        {
          Type = SubtitleType.Ass, 
          Config = SubtitleConfigType.Karaoke,
          Path = root.BasePaths.RootPatchesDir .. "/japanese/gamedata/cclcc/subtitles/movie_op_lq_v3_karaonly.ass",
        },
      },
      ["movie_ed03.mp4"] = {
        {
          Type = SubtitleType.Ass, 
          Config = SubtitleConfigType.Karaoke,
          Path = root.BasePaths.RootPatchesDir .. "/japanese/gamedata/cclcc/subtitles/movie_ed03_karaonly.ass",
        },
      },
      ["movie_op_swi.webm"] = {
        {
          Type = SubtitleType.Ass, 
          Config = SubtitleConfigType.Karaoke,
          Path = root.BasePaths.RootPatchesDir .. "/japanese/gamedata/cclcc/subtitles/movie_op_swi_karaonly.ass",
        },
      },
    },
  },
  SubtitleFontsDir = {root.BasePaths.RootPatchesDir .. "/japanese/gamedata/cclcc/fonts"}
};