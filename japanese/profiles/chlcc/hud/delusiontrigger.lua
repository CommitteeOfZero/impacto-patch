root.DelusionTrigger.LeftDelusionHeartSprite = "LeftDelusionHeartSprite";
root.DelusionTrigger.LeftDelusionHeartPos = { X = 7, Y = 279 };
root.DelusionTrigger.RightDelusionHeartSprite = "RightDelusionHeartSprite";
root.DelusionTrigger.RightDelusionHeartPos = { X = 1115, Y = 279 };
root.DelusionTrigger.DelusionHeartPulseDuration = 1.0;
root.DelusionTrigger.DelusionHeartPulseScale = 0.06;

if (root.Patch.HasDelusionMouseSupport) then
  root.Sprites["LeftDelusionHeartSprite"] = {
    Sheet = "DelusionHeart",
    Bounds = { X = 7, Y = 279, Width = 158, Height = 147 }
  }

  root.Sprites["RightDelusionHeartSprite"] = {
    Sheet = "DelusionHeart",
    Bounds = { X = 1115, Y = 279, Width = 158, Height = 147 }
  }
end