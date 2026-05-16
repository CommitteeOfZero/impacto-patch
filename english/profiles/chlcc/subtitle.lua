root.Subtitle = {
  SubtitleMappings = {
    movie = {
      [10] = {
        {
          Type = SubtitleType.Ass,
          Config = SubtitleConfigType.Karaoke,
          Path = root.BaseConfig.RootPatchesDir .. "/english/gamedata/chlcc/subtitles/OP3_karaonly.ass",
        },
        {
          Type = SubtitleType.Ass,
          Config = SubtitleConfigType.Translation,
          Path = root.BaseConfig.RootPatchesDir .. "/english/gamedata/chlcc/subtitles/OP3_tlonly.ass"
        },
      },
    },
    bgm = {
      [70] = {{
        Type = SubtitleType.Ass,
        Config = SubtitleConfigType.Translation,
        Path = root.BaseConfig.RootPatchesDir .. "/english/gamedata/chlcc/subtitles/contract.ass"
      }},
    }
  },
  SubtitleFontsDir = {root.BaseConfig.RootPatchesDir .. "/english/gamedata/chlcc/fonts"}
};
