local achievements = {
    { Name = "Perfectionist for Love", Description = "Completed CHAOS;CHILD Love Chu☆Chu!!", Hidden = false, Rarity = AchievementRarity.Platinum },
    { Name = "Prologue", Description = "Finished the prologue.", Hidden = true, Rarity = AchievementRarity.Bronze },
    { Name = "Your Type Is: Kind Older-Sister Types", Description = "Discovered Kurusu Nono’s Route.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "Your Type Is: Bratty Underclassmen", Description = "Discovered Arimura Hinae’s Route.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "Your Type Is: Quiet Underclassmen", Description = "Discovered Kazuki Hana’s Route.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "Your Type Is: Little Sister-Like Underclassmen", Description = "Discovered Yui & Yuto’s Route.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "Your Type Is: Younger Childhood Friends", Description = "Discovered Onoe Serika’s Route.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "As I Am", Description = "Reached Kurusu Nono’s ending.", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "I’m Never Gonna Let You Go", Description = "Reached Arimura Hinae’s ending.", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "I Wanted Us to Match, Maybe", Description = "Reached Kazuki Hana’s ending.", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "The Mille-Feuille Duo", Description = "Reached Yui & Yuto’s ending.", Hidden = true, Rarity = AchievementRarity.Silver },
    { Name = "About Love or Romance", Description = "Reached Onoe Serika’s ending.", Hidden = true, Rarity = AchievementRarity.Gold },
    { Name = "Onoe Serika’s Dream", Description = "Reached the epilogue.", Hidden = true, Rarity = AchievementRarity.Gold },
    { Name = "My First Delusion Trigger", Description = "Put your fears aside and dove into a Delusion Trigger.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "A Positive Person (Round 4)", Description = "Witnessed every positive delusion.", Hidden = false, Rarity = AchievementRarity.Silver },
    { Name = "A Negative Person (Round 4)", Description = "Witnessed every negative delusion.", Hidden = false, Rarity = AchievementRarity.Silver },
    { Name = "Gigalomaniac", Description = "Dove into every Delusion Trigger.", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "I Really Am a Right-Sider", Description = "Made zero mistakes when putting together the facts.", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "I’m Not Delusional", Description = "Reached an ending without having a single delusion.", Hidden = false, Rarity = AchievementRarity.Silver },
    { Name = "Full Homo", Description = "Homies till death do us part.", Hidden = false, Rarity = AchievementRarity.Bronze },
    { Name = "Who Needs a Girlfriend", Description = "Let your homie hit on the daily.", Hidden = true, Rarity = AchievementRarity.Gold },
    { Name = "CGs Completed", Description = "Witnessed every event CG.", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "Tips Completed", Description = "Read every tip.", Hidden = false, Rarity = AchievementRarity.Gold },
    { Name = "Songs Completed", Description = "Listened to every song.", Hidden = false, Rarity = AchievementRarity.Gold },
};

local iconDir = root.BasePaths.RootPatchesDir .. "/english/gamedata/cclcc/achievements";
for i, achievement in ipairs(achievements) do
    achievement.IconPath = string.format(iconDir .. "/TROP%03d.PNG", i - 1);
end

table.insert(achievements, table.remove(achievements, 1));

root.AchievementData = {
    Type = AchievementDataType.Common,
    AchievementSystem = root.BasePaths.RootSavesDir .. "/cclcc/eng/ACHIEVEMENT.DAT",
    Achievements = achievements,
    LockedIconPath = iconDir .. "/TROPHIDDEN.PNG",
};
