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
  if has("lantern")
  then
    return 1
  else
    return 0
  end
end

function canAccessMines()
  if has("irons")
  then
    return 1
  else
    return 0
  end
end

function canAccessLakebed()
  if has("irons") 
  and has("zoratunic") 
  and has("$has_explosives")
  then
    return 1
  else
    return 0
  end
end

function canAccessDesert()
  if has("entry")
  then
    return 1
  else
    return 0
  end
end

function canAccessSnowpeak()
  if has ("ms")
  and has ("earring")
  and has ("scent4")
  then
    return 1
  else
    return 0
  end
end

function canAccessToT()
  if has("entry3")
  and has ("ms")
  and has ("bow")
  then
    return 1
  else
    return 0
  end
end

function canAccessCiTS()
  if has("cs")
  and has ("dominion")
  and has ("letters", 7)
  then
    return 1
  else
    return 0
  end
end

function canAccessPoT()
  if has("shard4")
  then
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

function has_explosives()
  local bombs1 = Tracker:ProviderCountForCode("bombs1")
  local bombs2 = Tracker:ProviderCountForCode("bombs2")
  local bombs3 = Tracker:ProviderCountForCode("bombs3")
  if has("bombs1") then
    return 1
  elseif has("bombs2") then
    return 1
  elseif has("bombs3") then
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
