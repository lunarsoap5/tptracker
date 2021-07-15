function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function canAccessForest()
  if has("$can_access_north_faron") and (has("FaronEscape") or has("$can_burn_webs"))
  then
    return 1
  else
    return 0
  end
end

function canAccessMines()
  if (has("$can_do_damage") or has("slingshot") or has("lantern")) and has("$can_access_death_mountain")
  then
    return 1
  else
    return 0
  end
end

function canAccessLakebed()
  if has("wbombs") 
  and has("zoratunic") 
  and has("irons")
  and has("$can_access_lake_hylia")
  then
    return 1
  else
    return 0
  end
end

function canAccessArbiters()
  if has("$can_access_desert")
  and (has("sword1") or has("sword3"))
  then
    return 1
  else
    return 0
  end
end

function canAccessSnowpeakRuins()
  if has ("$can_access_snowpeak_summit")
  then
    return 1
  else
    return 0
  end
end

function canAccessToT()
  if has("$can_access_grove_2")
  and (
  has("sword3")
  or has("bow")
  )
  then
    return 1
  else
    return 0
  end
end

function canAccessCiTS()
  if has("$can_access_lake_hylia")
  and (has("EarlyCiTS")
  and has("letters", 7))
  and has("cs")
  then
    return 1
  else
    return 0
  end
end

function canAccessPoT()
  if has("boss7")
  and has("$can_access_mirror_chamber")
  then
    return 1
  else
    return 0
  end
end

function canAccessHyrule()
  if (has("boss8")
  or has("EarlyHyruleCastle"))
  and has("$can_access_castle_town")
  then
    return 1
  else
    return 0
  end
end




function has_explosives()
  if has("bombs") or has("wbombs") then
    return 1
  else
    return 0
  end
end

function can_smash()
  if has("$has_explosives") or has("chainball") then
    return 1 
  else
    return 0
  end
end

function shoot_pew()
  if has("bow") and has("$has_explosives") then
    return 1
  else
    return 0
  end
end

function can_do_damage()
  if has("bow") or has("spinner") or has("chainball") or has("sword1") or has("sword2") or has("sword3") or has("sword4") or has("irons") or has("$has_explosives") or has("shadcrystal") then
    return 1
  else
    return 0
  end
end

function has_ranged_item()
  if has("bow") or has("chainball") or has("cs") or has("dcs") or has("slingshot") or has("boomerang") then
    return 1
  else
    return 0
  end
end

function can_burn_webs()
  if has("lantern") or has("$can_smash") then
    return 1
  else
    return 0
  end
end

function faron_twilight_cleared()
  if has("vessel1") or has("TwilightSkip") then
    return 1
  else
    return 0
  end
end

function eldin_twilight_cleared()
  if has("vessel2") or has("TwilightSkip") then
    return 1
  else
    return 0
  end
end

function lanayru_twilight_cleared()
  if has("vessel3") or has("TwilightSkip") then
    return 1
  else
    return 0
  end
end

function set_mdh_flag()
  if has("SkipMDH") or has("boss3") then
    return 1
  else
    return 0
  end
end


function hasDamagingItem()
  if  has("Progressive_Sword_1")  or has("Ball_and_Chain") or
      has("Progressive_Bow_1") or has("$hasBombs") or
      has("Iron_Boots") or has("Spinner") or
      has("Shadow_Crystal") then
    return 1
  else
    return 0
  end
end

function canDefeatAeralfos()
  if has("Progressive_Clawshot") or has("$hasDamagingItem") then
    return 1
  else
    return 0
  end
end

function canDefeatArmos()
  if has("$hasDamagingItem") or has("Progressive_Clawshot_1") then
    return 1
  else
    return 0
  end
end

function canDefeatBabaSerpent()
  if has("Progressive_Sword_1") or has("Ball_and_Chain") or
    has("Progressive_Bow_1") or has("Iron_Boots") or
    has("Spinner") or has("Shadow_Crystal") then
    return 1
  else
    return 0
  end
end

function canDefeatBabyGohma()
  if has("Progressive_Sword_1") or has("Ball_and_Chain") or
    has("Progressive_Bow_1") or has("Iron_Boots") or
    has("Spinner") or has("Slingshot") or
    has("Progressive_Clawshot_1") then
    return 1
  else
    return 0
  end
end

function canDefeatBari()
  if has("$canUseWaterBombs") or has("Progressive_Clawshot_1") then
    return 1
  else
    return 0
  end
end

function canDefeatBeamos()
  if has("Ball_and_Chain) or
    has("Progressive_Bow") or
    hasBombs() then
    return 1
  else
    return 0
  end
end

function canDefeatBigBaba()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatChu()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatBokoblin()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Slingshot) then
    return 1
  else
    return 0
  end
end

function canDefeatBombfish()
  if has("Iron_Boots) and
    (has("Progressive_Sword_1") or
    has("Ordon_Shield) or
    has("Wooden_Shield)  or
    has("Hylian_Shield)  or
    has("Progressive_Clawshot")) then
    return 1
  else
    return 0
  end
end

function canDefeatBombling()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatBomskit()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatBubble()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatBublin()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatChilfos()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatChuWorm()
  if (has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal)) and
    (hasBombs")or
    has("Progressive_Clawshot")) then
    return 1
  else
    return 0
  end
end
    

function canDefeatDarknut()

    return hasSword( then
    return 1
  else
    return 0
  end
end

function canDefeatDekuBaba()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shield_Attack) or
    has("Slingshot) or
    has("Progressive_Clawshot") then
    return 1
  else
    return 0
  end
end

function canDefeatDekuLike()
      if hasBombs")or
    has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatDodongo()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatDinalfos()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatFireBubble()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatFireKeese()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Slingshot) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatFireToadpoli()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatFreezard()

    return has("Ball_and_Chain then
    return 1
  else
    return 0
  end
end

function canDefeatGoron()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shield_Attack) or
    has("Slingshot) or
    has("Lantern) or
    has("Progressive_Clawshot") then
    return 1
  else
    return 0
  end
end

function canDefeatGhoulRat()

    return has("Shadow_Crystal then
    return 1
  else
    return 0
  end
end

function canDefeatGuay()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatHelmasaur()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatHelmasaurus()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatIceBubble()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatIceKeese()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Slingshot) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatPoe()

    return has("Shadow_Crystal then
    return 1
  else
    return 0
  end
end

function canDefeatKargarok()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatKeese()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Slingshot) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatLeever()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatLizalfos()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatMiniFreezard()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatMoldorm()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatPoisonMite()
  if has("Progressive_Sword_1") or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Lantern) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatPuppet()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatRat()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Slingshot) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatRedeadKnight()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatShadowBeast()
  if has("Progressive_Sword_1")  or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatShadowBublin()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatShadowDekuBaba()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shield_Attack) or
    has("Slingshot) or
    has("Progressive_Clawshot") then
    return 1
  else
    return 0
  end
end

function canDefeatShadowInsect()

    return has("Shadow_Crystal then
    return 1
  else
    return 0
  end
end

function canDefeatShadowKargarok()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatShadowKeese()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Slingshot) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatShadowVermin()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatShellBlade()
  if (has("Progressive_Sword_1")  or
    canUseWaterBombs()) and
    has("Iron_Boots) then
    return 1
  else
    return 0
  end
end

function canDefeatSkullfish()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatSkulltula()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatStalfos()
  if canSmash() then
    return 1
  else
    return 0
  end
end

function canDefeatStalhound()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatStalchild()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatTetike()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatTileWorm()
  if (has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Shadow_Crystal)) and
    has("Boomerang) then
    return 1
  else
    return 0
  end
end

function canDefeatToado()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatWaterToadpoli()
  if has("Progressive_Sword_1")  or 
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatTorchSlug()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatWalltula()
  if has("Ball_and_Chain) or
    has("Progressive_Bow") or
    hasBombs") or
    has("Boomerang) or
    has("Progressive_Clawshot") then
    return 1
  else
    return 0
  end
end

function canDefeatWhiteWolfos()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatYoungGohma()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatZantHead()
  if has("Shadow_Crystal) or
    hasSword() then
    return 1
  else
    return 0
  end
end

function canDefeatOok()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatDangoro()
  if (has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Shadow_Crystal)) and
    has("Iron_Boots) then
    return 1
  else
    return 0
  end
end

function canDefeatCarrierKargarok()

    return has("Shadow_Crystal then
    return 1
  else
    return 0
  end
end

function canDefeatTwilitBloat()

    return has("Shadow_Crystal then
    return 1
  else
    return 0
  end
end

function canDefeatDekuToad()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatSkullKid()
  if getItemCount(Item.Progressive_Bow) >= 1 then
    return 1
  else
    return 0
  end
end

function canDefeatKingBublinBridge()
  if getItemCount(Item.Progressive_Bow) >= 1 then
    return 1
  else
    return 0
  end
end

function canDefeatKingBublinDesert()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatKingBublinCastle()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatDeathSword()
  if (has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Iron_Boots) or
    has("Spinner)) and
    (has("Boomerang) or
    has("Progressive_Bow") or
    has("Progressive_Clawshot")) and
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatDarkhammer()
  if has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Progressive_Bow") or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatPhantomZant()
  if has("Shadow_Crystal) or
    hasSword() then
    return 1
  else
    return 0
  end
end

function canDefeatDiababa()
  if (has("Boomerang) or
    (hasBombs") and
    has("Progressive_Bow"))) and
    has("Progressive_Sword_1")  or
    has("Ball_and_Chain) or
    has("Iron_Boots) or
    has("Spinner) or
    has("Shadow_Crystal) then
    return 1
  else
    return 0
  end
end

function canDefeatFyrus()
  if has("Progressive_Bow") and
    has("Iron_Boots) and
    hasSword() then
    return 1
  else
    return 0
  end
end

function canDefeatMorpheel()
  if has("Zora_Armor) and
    has("Iron_Boots) and
    hasSword() then
    return 1
  else
    return 0
  end
end

function canDefeatStallord()
  if has("Spinner) and
    hasSword() then
    return 1
  else
    return 0
  end
end

function canDefeatBlizzeta()

    return has("Ball_and_Chain then
    return 1
  else
    return 0
  end
end

function canDefeatArmogohma()
  if has("Progressive_Bow") and
    has("Progressive_Dominion_Rod") then
    return 1
  else
    return 0
  end
end

function canDefeatArgorok()
  if has("Progressive_Clawshot) >= 2) and
    has("Iron_Boots) and
    has("Progressive_Sword) >= 3) then
    return 1
  else
    return 0
  end
end

function canDefeatZant()
  if has("Progressive_Sword) >= 3) and
    (has("Boomerang) and
    has("Progressive_Clawshot") and
    has("Iron_Boots) and
    has("Zora_Armor) and
    has("Ball_and_Chain)) then
    return 1
  else
    return 0
  end
end

function canDefeatGanondorf()
  if has("Shadow_Crystal) and
    has("Progressive_Sword) >= 3)  then
    return 1
  else
    return 0
  end
end


function canSmash()

        if has("Ball_and_Chain) or
        hasBombs() then
    return 1
  else
    return 0
  end
end


function canBurnWebs()
  if has("Ball_and_Chain) or
    has("Lantern) or
    hasBombs() then
    return 1
  else
    return 0
  end
end


function hasRangedItem()
  if has("Ball_and_Chain) or
    has("Slingshot) or
    has("Progressive_Bow") or
    has("Progressive_Clawshot") or
    has("Boomerang) then
    return 1
  else
    return 0
  end
end


function hasSheild()
  if has("Ordon_Shield)  or
    has("Wooden_Shield)  or
    has("Hylian_Shield)  then
    return 1
  else
    return 0
  end
end

function canLaunchBombs()
  if (has("Boomerang) or
    has("Progressive_Bow")) and
    hasBombs() then
    return 1
  else
    return 0
  end
end


function canCutHangingWeb()
  if has("Progressive_Clawshot") or
    has("Progressive_Bow") or
    has("Boomerang) or
    has("Ball_and_Chain) then
    return 1
  else
    return 0
  end
end

function canKnockDownHCPainting()
  if has("Progressive_Bow") or
    hasBombs() then
    return 1
  else
    return 0
  end
end
 
function canBreakMonkeyCage()
  if has("Progressive_Sword_1")  or
    has("Iron_Boots) or
    has("Spinner) or
    has("Ball_and_Chain) or
    has("Shadow_Crystal) or
    has("Progressive_Bow") or
    has("Progressive_Clawshot") then
    return 1
  else
    return 0
  end
end

function canPressMinesSwitch()
  if has("Ball_and_Chain) or
    has("Iron_Boots) then
    return 1
  else
    return 0
  end
end

function canFreeAllMonkeys()

            if canBreakMonkeyCage")  and
            canBurnWebs") and
            has("Boomerang) and canDefeatBokoblin") and canDefeatBigBaba() then
    return 1
  else
    return 0
  end
end

function canKnockDownHangingBaba()
  if has("Progressive_Bow") or
    has("Progressive_Clawshot") or
    has("Boomerang) then
    return 1
  else
    return 0
  end
end


function canBreakWoodenDoor()
  if has("Shadow_Crystal) or
    has("Progressive_Sword_1")  or
    (has("Ball_and_Chain) or
    hasBombs()) then
    return 1
  else
    return 0
  end
end


function hasBombs()
  if has("Bomb_Bag_And_Bombs) or
    has("Empty_Bomb_Bag) then
    return 1
  else
    return 0
  end
end


function canUseWaterBombs()
  if hasBombs") and canLeaveForest() then
    return 1
  else
    return 0
  end
end


function canLeaveForest()
  if (canCompleteForestTemple") or (Singleton.getInstance().RandoSetting.faronWoodsLogic == "Open"))  then
    return 1
  else
    return 0
  end
end
    return 1
  else
    return 0
  end
end
