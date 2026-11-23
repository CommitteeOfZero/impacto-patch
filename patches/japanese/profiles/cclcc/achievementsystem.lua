local achievements = {
    { Name = "らぶ・完璧主義者", Description = "CHAOS;CHILD らぶchu☆chu!!をやりつくす", Hidden = false, Rarity = AchievementRarity.Platinum },
    { Name = "【プロローグ】", Description = "プロローグをプレイした", Hidden = true, Rarity = AchievementRarity.Bronze },
    { Name = "優しいお姉さんタイプ", Description = "来栖乃々編を発見した", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "生意気な後輩タイプ", Description = "有村雛絵編を発見した", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "無口な後輩タイプ", Description = "香月華編を発見した", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "妹みたいな後輩タイプ", Description = "結衣・結人編を発見した", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "年下の幼馴染タイプ", Description = "尾上世莉架編を発見した", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "【私らしく】", Description = "来栖乃々編をクリアした", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "【このまま一緒に】", Description = "有村雛絵編をクリアした", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "【……お揃い、かも】", Description = "香月華編をクリアした", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "【二人のミルフィーユ】", Description = "結衣・結人編をクリアした", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "【愛とか恋とかそういったもの】", Description = "尾上世莉架編をクリアした", Hidden = true, Rarity = AchievementRarity.Gold },
    { Name = "【尾上世莉架の夢】", Description = "エピローグをクリアした", Hidden = true, Rarity = AchievementRarity.Gold },
    { Name = "初めての妄想トリガー", Description = "恐れずに妄想トリガーを引いてみた", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "ポジティブ人間よたび", Description = "全てのポジティブ妄想を見た", Hidden = false, Rarity = AchievementRarity.Silver },
    { Name = "ネガティブ人間よたび", Description = "全てのネガティブ妄想を見た", Hidden = false, Rarity = AchievementRarity.Silver },
    { Name = "超誇大妄想家", Description = "全ての妄想トリガーを引いた", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "やっぱり僕は情強だ", Description = "1度も間違えずに資料を貼った", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "妄想はしないんだ", Description = "妄想を一度もせずにエンディングを迎えた", Hidden = false, Rarity = AchievementRarity.Silver },
    { Name = "アッー!", Description = "親友と添い遂げた", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "彼女なんていらない", Description = "親友と何度でも…", Hidden = true, Rarity = AchievementRarity.Gold },
    { Name = "CGコンプリート", Description = "全てのイベントCGを見た", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "Tipsコンプリート", Description = "全てのTipsを読んだ", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "Soundコンプリート", Description = "全てのSoundを聴いた", Hidden = false, Rarity = AchievementRarity.Gold },
};

local iconDir = root.BasePaths.RootPatchesDir .. "/japanese/gamedata/cclcc/achievements";
for i, achievement in ipairs(achievements) do
    achievement.IconPath = string.format(iconDir .. "/TROP%03d.PNG", i - 1);
end

table.insert(achievements, table.remove(achievements, 1));

root.AchievementData = {
    Type = AchievementDataType.Common,
    AchievementSystem = root.BasePaths.RootSavesDir .. "/cclcc/jpn/ACHIEVEMENT.DAT",
    Achievements = achievements,
    LockedIconPath = iconDir .. "/TROPLOCK.PNG",
};
