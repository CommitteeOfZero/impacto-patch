root.Subtitle = {
  SubtitleMappings = {
    movie = {
      ["movie_op.mp4"] = {
        { 
          Type = SubtitleType.Ass, 
          Config = SubtitleConfigType.Karaoke,
          Path = root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/subtitles/movie_op_lq_v3_karaonly.ass",
        },
        { 
          Type = SubtitleType.Ass,
          Config = SubtitleConfigType.Translation,
          Path = root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/subtitles/movie_op_lq_v3_tlonly.ass"
        },
      },
    },
    bgm = {
      ["bgmFD02.at9"] = {{ 
        Type = SubtitleType.Ass,
        Config = SubtitleConfigType.Karaoke,
        Path = root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/subtitles/movie_op_lq_v3_karaonly.ass"
      }},
    }

  },
  SubtitleFontsDir = {root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/fonts"}
};