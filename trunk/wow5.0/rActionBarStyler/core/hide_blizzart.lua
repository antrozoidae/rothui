
  -----------------------------
  -- INIT
  -----------------------------

  --get the addon namespace
  local addon, ns = ...
  local gcfg = ns.cfg

  -----------------------------
  -- HIDE FRAMES
  -----------------------------

  --hide blizzard
  local blizzHider = CreateFrame("Frame","rABS_BizzardHider")
  blizzHider:Hide()
  --hide main menu bar
  MainMenuBar:SetParent(blizzHider)
  --hide override actionbar frames
  OverrideActionBarExpBar:SetParent(blizzHider)
  OverrideActionBarHealthBar:SetParent(blizzHider)
  OverrideActionBarPowerBar:SetParent(blizzHider)
  OverrideActionBarPitchFrame:SetParent(blizzHider) --maybe we can use that frame later for pitchig and such
  --hide the possessbar frame
  --PossessBarFrame:SetParent(blizzHider) --the possessbar is part of the stancebar because they replace each other

  -----------------------------
  -- HIDE TEXTURES
  -----------------------------

  --remove some the default background textures
  StanceBarLeft:SetTexture(nil)
  StanceBarMiddle:SetTexture(nil)
  StanceBarRight:SetTexture(nil)
  SlidingActionBarTexture0:SetTexture(nil)
  SlidingActionBarTexture1:SetTexture(nil)
  PossessBackground1:SetTexture(nil)
  PossessBackground2:SetTexture(nil)

  --remove OverrideBar textures
  local textureList =  {
    "_BG",
    "EndCapL",
    "EndCapR",
    "_Boader",
    "Divider1",
    "Divider2",
    "Divider3",
    "ExitBG",
    "MicroBGL",
    "MicroBGR",
    "_MicroBGMid",
    "ButtonBGL",
    "ButtonBGR",
    "_ButtonBGMid",
  }

  for _,tex in pairs(textureList) do
    OverrideActionBar[tex]:SetAlpha(0)
  end
