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
  and has("can_access_mirror_chamber")
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


--Area Access Logic--

function can_access_ordonia_province()
  return 1
end

function can_access_north_faron()
  if has("$faron_twilight_cleared") and (has("lantern") or has("shadcrystal")) then
    return 1
  else
    return 0
  end
end

function can_access_kak_gorge()
  if has("$eldin_twilight_cleared") and (has("$can_access_faron_field") or has("$can_access_kak_village")) then
    return 1
  else
    return 0
  end
end

function can_access_kak_village()
  if has("$eldin_twilight_cleared") and has("$can_access_kak_gorge") then
    return 1
  else
    return 0
  end
end

function can_access_death_mountain()
  if has("$eldin_twilight_cleared") and has("can_access_kak_village") and (has("irons") or has("MinesPatch")) then
    return 1
  else
    return 0
  end
end

function can_access_lake_hylia()
  if has("$lanayru_twilight_cleared") and has("$can_access_lanayru_field") and (has("$can_smash") or has("OpenGates")) then
    return 1
  else
    return 0
  end
end

function can_access_desert()
  if has("can_access_lake_hylia") and (has("memo") or has("EarlyDesert")) and has("shadcrystal") then
    return 1
  else
    return 0
  end
end

function can_access_zora_domain()
  if has("$lanayru_twilight_cleared") and (has("shadcrystal") or (has("$can_smash") and has("$can_access_lanayru_field"))) then
    return 1
  else
    return 0
  end
end

function can_access_snowpeak_summit()
  if has("$can_access_zora_domain") and has("reekfishscent") and has("shadcrystal") then
    return 1
  else 
    return 0
  end
end

function can_access_grove()
  if (has("$can_access_north_faron") and has("set_mdh_flag") and has("shadcrystal")) or (has("EarlyToT") and has("shadcrystal")) then
    return 1
  else
    return 0
  end
end

function can_access_grove_2()
  if (has("$can_access_north_faron") and has("boss5") and has("bow")) or (has("shadcrystal") and has("EarlyToT")) then
    return 1
  else
    return 0
  end
end

function can_access_mirror_chamber()
  if has("boss4") then
    return 1
  else
    return 0
  end
end

function can_access_castle_town()
  if has("$can_access_lanayru_field") then
    return 1
  else
    return 0
  end
end

function can_access_faron_field()
  if has("$faron_twilight_cleared") and (has("FaronEscape") or has("boss1") or (has("shadcrystal") and has("$eldin_twilight_cleared"))) then
    return 1
  else
    return 0
  end
end

function can_access_eldin_field()
  if has("$eldin_twilight_cleared") and (has("$can_access_faron_field") or has("shadcrystal")) then
    return 1
  else
    return 0
  end
end

function can_access_lanayru_field()
  if has("$lanayru_twilight_cleared") and ((has("$has_explosives") and has("$can_access_eldin_field")) or has("OpenGates") or has("shadcrystal")) then
    return 1
  else
    return 0
  end
end

function can_access_hidden_village()
  if has("statue") and (has("$can_access_lanayru_field") or (has("$can_access_eldin_field") and has("$can_smash"))) then
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