root.Subtitle = {
  SubtitleMappings = {
    movie = {
      ["movie_op.mp4"] = {
        { 
          Type = SubtitleType.Ass, 
          Config = SubtitleConfigType.Karaoke,
          Path = root.BaseConfig.RootPatchesDir .. "/games/cclcc/subtitles/movie_op_lq_v3_karaonly.ass",
        },
        { 
          Type = SubtitleType.Ass,
          Config = SubtitleConfigType.Translation,
          Path = root.BaseConfig.RootPatchesDir .. "/games/cclcc/subtitles/movie_op_lq_v3_tlonly.ass"
        },
      },
    },
    bgm = {
      ["bgmFD02.at9"] = {{ 
        Type = SubtitleType.Ass,
        Config = SubtitleConfigType.Karaoke,
        Path = root.BaseConfig.RootPatchesDir .. "/games/cclcc/subtitles/movie_op_lq_v3_karaonly.ass"
      }},
    }

  },
  SubtitleFontsDir = {root.BaseConfig.RootPatchesDir .. "/games/cclcc/fonts"}
};