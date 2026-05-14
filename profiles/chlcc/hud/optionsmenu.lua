local uiSprites = {
    "MenuTitleTextConfig",
    "ButtonPromptConfig",
    "SelectedSprite",
    "SelectedLabelSprite",
    "SliderBarBaseSprite",
    "SliderBarFillSprite"
}
for i,spriteName in ipairs(uiSprites) do
    root.Sprites[spriteName].Bounds.X = root.Sprites[spriteName].Bounds.X + 343
end

local valueSprites = {
    "SettingInstantSprite",
    "SettingFastSprite",
    "SettingNormalSprite",
    "SettingSlowSprite",
    "SettingShortSprite",
    "SettingLongSprite",
    "SettingDoSprite",
    "SettingDontSprite",
    "SettingYesSprite",
    "SettingNoSprite",
    "SettingReadSprite",
    "SettingAllSprite",
    "SettingOnTriggerSprite",
    "SettingOnSceneSprite",
    "SettingOnTriggerAndSceneSprite",
    "SettingTypeASprite",
    "SettingTypeBSprite"
}
for i,spriteName in ipairs(valueSprites) do
    root.Sprites[spriteName].Bounds.X = 1282
end

root.Sprites["BasicSettingsSprite"].Bounds.Width = 659
root.Sprites["TextSettingsSprite"].Bounds.Width = 542
root.Sprites["SoundSettingsSprite"].Bounds.Width = 627

