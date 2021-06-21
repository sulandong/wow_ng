function UnitC(target)
      local notInterruptible
      local spellName
      print(111)
      if UnitChannelInfo(target) then
            notInterruptible = select(8, UnitChannelInfo(target))
            spellName = UnitChannelInfo(target)
      else
            if UnitCastingInfo(target) then
                  notInterruptible = select(9, UnitCastingInfo(target))
                  spellName = UnitCastingInfo(target)
            else
                  return false
            end
      end
      return true
end
function G_DeBuffTimes_name(UnitId, buffID, onlyMine, useplayer)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getDeBuff_name(UnitId, buffID, onlyMine)
      if (name ~= nil and (unitCaster == "player" or useplayer == false)) then
            return expirationTime - GetTime()
      end
      return 0
end
function G_DeBuffTimes_name_alluser(UnitId, buffID, onlyMine, useplayer)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getDeBuff_name(UnitId, buffID, false)
      if (name ~= nil) then
            return expirationTime - GetTime()
      end
      return 0
end
function G_BuffTimes_name_alluser(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getBuff_name(UnitId, buffID, false)
      if (name ~= nil) then
            return expirationTime - GetTime()
      end
      return 0
end
function G_BuffTimes_name(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getBuff_name(UnitId, buffID, onlyMine)
      if (name ~= nil and unitCaster == "player") then
            return expirationTime - GetTime()
      end
      return 0
end
function W_getDeBuff_name(UnitId, magicname, onlyMine)
      local i = 1
      local buff = W_UnitBuff(t, UnitId, i)
      while buff do
            local name,
                  icon,
                  count,
                  debuffType,
                  duration,
                  expirationTime,
                  unitCaster,
                  isStealable,
                  shouldConsolidate,
                  spellId = W_UnitBuff(false, UnitId, i)
            if (name == magicname) then
                  if ((onlyMine == true and unitCaster == NA_Player) or onlyMine ~= true) then
                        return name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId
                  end
            end
            i = i + 1
            buff = W_UnitBuff(false, UnitId, i)
      end
      return nil
end
function W_getBuff_name(UnitId, magicname, onlyMine)
      local i = 1
      local buff = W_UnitBuff(true, UnitId, i)
      while buff do
            local name,
                  icon,
                  count,
                  debuffType,
                  duration,
                  expirationTime,
                  unitCaster,
                  isStealable,
                  shouldConsolidate,
                  spellId = W_UnitBuff(true, UnitId, i)
            if (name == magicname) then
                  if ((onlyMine == true and unitCaster == NA_Player) or onlyMine ~= true) then
                        return name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId
                  end
            end
            i = i + 1
            buff = W_UnitBuff(true, UnitId, i)
      end
      return nil
end
NA_Target = "target"
NA_Player = "player"
NA_Pet = "pet"
NA_Focus = "focus"
function W_Log(level, msg)
      if (level >= NA_LogLevel and not NA_IsTest) then
            if (level > 3) then
                  UIErrorsFrame:AddMessage(msg)
            else
                  DEFAULT_CHAT_FRAME:AddMessage(msg)
            end
      elseif (level >= NA_LogLevel and NA_IsTest) then
            print(msg)
      end
end
function W_toString(var)
      if type(var) == "table" then
            local out = "{"
            for k in pairs(var) do
                  out = out .. k .. "=" .. W_toString(var[k]) .. ", "
            end
            if strlen(out) > 1 then
                  out = strsub(out, 0, strlen(out) - 2)
            end
            out = out .. "}"
            return out
      elseif type(var) == "string" then
            return '"' .. var .. '"'
      elseif type(var) == "boolean" then
            if var then
                  return "true"
            else
                  return "false"
            end
      else
            return var
      end
end
function W_printAllKeys(var)
      for k in pairs(var) do
            print(k)
      end
end
function NA_ClearAction()
      NA_ShowVars(0)
end
function W_UnitBuff(isBuff, UnitId, i)
      if (isBuff) then
            return UnitBuff(UnitId, i)
      else
            return UnitDebuff(UnitId, i)
      end
end
function W_getBuff(UnitId, buffID, onlyMine)
      local i = 1
      local buff = W_UnitBuff(buffID > 0, UnitId, i)
      while buff do
            local name,
                  icon,
                  count,
                  debuffType,
                  duration,
                  expirationTime,
                  unitCaster,
                  isStealable,
                  shouldConsolidate,
                  spellId = W_UnitBuff(buffID > 0, UnitId, i)
            if (spellId == math.abs(buffID)) then
                  if ((onlyMine == true and unitCaster == NA_Player) or onlyMine ~= true) then
                        return name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId
                  end
            end
            i = i + 1
            buff = W_UnitBuff(buffID > 0, UnitId, i)
      end
      return nil
end
function W_getDeBuff(UnitId, buffID, onlyMine)
      local i = 1
      local buff = W_UnitBuff(buffID < 0, UnitId, i)
      while buff do
            local name,
                  icon,
                  count,
                  debuffType,
                  duration,
                  expirationTime,
                  unitCaster,
                  isStealable,
                  shouldConsolidate,
                  spellId = W_UnitBuff(buffID < 0, UnitId, i)
            if (spellId == math.abs(buffID)) then
                  if ((onlyMine == true and unitCaster == NA_Player) or onlyMine ~= true) then
                        return name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId
                  end
            end
            i = i + 1
            buff = W_UnitBuff(buffID < 0, UnitId, i)
      end
      return nil
end
function W_BuffCount(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getBuff(UnitId, buffID, onlyMine)
      if (name ~= nil) then
            if (count == nil or count < 1) then
                  count = 1
            end
            return count
      end
      return 0
end
function G_DeBuffCount(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getDeBuff(UnitId, buffID, onlyMine)
      if (name ~= nil) then
            if (count == nil or count < 1) then
                  count = 1
            end
            return count
      end
      return 0
end
function W_HasBuff(UnitId, buffID, onlyMine)
      return W_BuffCount(UnitId, buffID, onlyMine) > 0
end
function W_RetainBuff(UnitId, buffID, onlyMine)
      return W_BuffTime(UnitId, buffID, onlyMine) > 3
end
function W_BuffTime(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getBuff(UnitId, buffID, onlyMine)
      if (name ~= nil) then
            return expirationTime - GetTime()
      end
      return 0
end
function W_DeBuffTimes(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getDeBuff(UnitId, buffID, onlyMine)
      if (name ~= nil and unitCaster == "player") then
            return expirationTime - GetTime()
      end
      return 0
end
function G_DeBuffTimes(UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getDeBuff(UnitId, buffID, onlyMine)
      if (name ~= nil and unitCaster == "player") then
            return expirationTime - GetTime()
      end
      return 0
end
function W_BuffTimes(checktimes, UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getBuff(UnitId, buffID, onlyMine)
      if (name ~= nil) then
            local sTime = expirationTime - GetTime()
            return sTime
      end
      return 0
end
function G_BuffCount(checktimes, UnitId, buffID, onlyMine)
      local name, icon, count, debuffType, duration, expirationTime, unitCaster, isStealable, shouldConsolidate, spellId =
            W_getBuff(UnitId, buffID, onlyMine)
      if (name ~= nil) then
            local sTime = expirationTime - GetTime()
            return count
      end
      return 0
end
function W_IsDeadTarget()
      if
            (UnitIsDead(NA_Target) and UnitCanAttack(NA_Player, NA_Target) and
                  (UnitIsEnemy(NA_Player, NA_Target) or UnitIsTapped(NA_Target) or UnitIsPlayer(NA_Target)))
       then
            return true
      else
            return false
      end
end
function W_TargetCanAttack()
      if
            (not UnitIsDead(NA_Target) and UnitCanAttack(NA_Player, NA_Target) and
                  (UnitIsTapped(NA_Target) or UnitIsPlayer(NA_Target)))
       then
            return true
      else
            return false
      end
end
function W_TargetIsBoss()
      if
            ((UnitLevel(NA_Target) - UnitLevel(NA_Player) >= 2 or UnitLevel(NA_Target) == -1) and
                  (UnitClassification(NA_Target) == "worldboss" or UnitClassification(NA_Target) == "rareelite" or
                        UnitClassification(NA_Target) == "elite" or
                        UnitClassification(NA_Target) == "rare"))
       then
            return true
      else
            return false
      end
end
function W_HPlevel_heal(UnitId)
      if (UnitHealthMax(UnitId) == 1) then
            return 1
      end
      hps = UnitHealth(UnitId) / UnitHealthMax(UnitId)
      if (hps < 0) then
            hps = 0
      end
      return hps
end
function W_PowerLevel(UnitId)
      return UnitPower(UnitId) / UnitPowerMax(UnitId)
end
function W_HPlevel(UnitId)
      if (UnitHealthMax(UnitId) == 1) then
            return 1
      end
      return UnitHealth(UnitId) / UnitHealthMax(UnitId)
end
function W_HP(UnitId)
      if (UnitHealthMax(UnitId) == 1) then
            return 100000
      else
            return UnitHealth(UnitId)
      end
end
function W_isTanking()
      if (UnitHealthMax(NA_Target) == 1) then
            return true
      end
      local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(NA_Player, NA_Target)
      return isTanking
end
function NA_Fire(cond, spellID, UnitId, interval)
      if (spellID == "NA_ChagetTarget") then
            return NA_ChagetTarget()
      end
      if (spellID == "NA_fireByOvale") then
            return NA_fireByOvale()
      end
      local spellType = NA_SpellInfoType(spellID)
      if (cond and spellType == 1 and NA_FireSpell(spellID, UnitId)) then
            NA_SpellTimes[spellID] = 0
            return true
      elseif (cond and spellType == 2 and NA_FireItem(spellID, UnitId)) then
            NA_SpellTimes[spellID] = 0
            return true
      elseif (cond and spellType == 3 and NA_FireMacro(spellID, UnitId)) then
            NA_SpellTimes[spellID] = 0
            return true
      end
      return false
end
function NA_ChagetTarget()
      return false
end
function NA_getSpellInfo(spellID)
      return spellID
end
function NA_FireSpell(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo ~= nil and spellInfo.keyNo ~= nil and W_IsUsableSpell(spellID, UnitId) and UnitIsVisible(UnitId)) then
            W_Log(2, "NA_FireSpell:" .. spellID .. "->" .. spellInfo.name .. spellInfo.keyNo)
            W_UpdateLabelText("NA_SpellLabel", spellInfo.name)
            NA_ShowVars(spellInfo.keyNo)
            return true
      else
            W_UpdateLabelText("NA_SpellLabel", "")
            return false
      end
end
function NA_FireItem(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo ~= nil and spellInfo.keyNo ~= nil) then
            W_Log(2, "NA_FireItem:" .. spellID .. "->" .. spellInfo.keyNo)
            W_UpdateLabelText("NA_SpellLabel", spellInfo.name)
            NA_ShowVars(spellInfo.keyNo)
            return true
      else
            W_UpdateLabelText("NA_SpellLabel", "")
            return false
      end
end
function NA_FireMacro(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo ~= nil and spellInfo.keyNo ~= nil) then
            W_Log(2, "NA_FireMacro:" .. spellID .. "->" .. spellInfo.keyNo)
            W_UpdateLabelText("NA_SpellLabel", spellInfo.spellID)
            NA_ShowVars(spellInfo.keyNo)
            return true
      else
            W_UpdateLabelText("NA_SpellLabel", "")
            return false
      end
end
function NA_FireBuffs(buffs, spellID)
      local bufftarget
      if (UnitExists(NA_Target) == false or UnitName(NA_Target) ~= UnitName(NA_Player)) then
            bufftarget = NA_Player
      elseif (UnitExists(NA_Target) and UnitCanAssist(NA_Player, NA_Target) and UnitIsPlayer(NA_Target)) then
            bufftarget = NA_Target
      end
      if (bufftarget ~= nil and NA_Cast4NoBuffs(buffs, spellID, bufftarget)) then
            return true
      end
      return false
end
function NA_targetSpell(buffs, spellID, UnitId, onlyMine)
      if (onlyMine == nil or onlyMine ~= true) then
            onlyMine = false
      end
      if (W_checkBuffs(buffs, UnitId, onlyMine)) then
            return NA_FireSpell(spellID, NA_Target)
      end
      return false
end
function W_IsUsableSpell(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo == nil) then
            return false
      end
      local isUsable, nomana = IsUsableSpell(spellInfo.spellID)
      if (isUsable == true and nomana == false and W_GetCooldown(1, spellID) <= 1) then
            if (SpellHasRange(spellInfo.name) ~= true or IsSpellInRange(spellInfo.name, UnitId) == 1) then
                  return true
            end
      end
      return false
end
function G_GetMoveed(UnitId)
      if GetUnitSpeed(UnitId) / 7 * 100 == 0 then
            return false
      end
      return true
end
function G_GetTargetDistance(g_type)
      return CheckInteractDistance("target", g_type)
end
function G_GetSpellCD(spellID)
      local startTime, cdTime, nums = GetSpellCooldown(spellID)
      local cdTimes = 0
      if (startTime ~= 0) then
            local cd = cdTime - (GetTime() - startTime)
            if (cdTime < 2.0) then
                  cd = 0
            end
            return cd
      end
      return 0
end
function G_GetSpellCDNums(spellID)
      local currentCharges, maxCharges, cooldownStart, cooldownDuration = GetSpellCharges(spellID)
      if (currentCharges ~= nil) then
            return currentCharges
      end
      return 0
end
function G_GetSpellCDTimes(spellID)
      local currentCharges, maxCharges, cooldownStart, cooldownDuration = GetSpellCharges(spellID)
      if (currentCharges ~= nil) then
            local chargetime = cooldownStart + cooldownDuration - GetTime()
            return chargetime
      end
      return 999
end
function G_GetItemCD(spellID)
      local startTime, cdTime, nums = GetSpellCooldown(spellID)
      local cdTimes = 0
      if (startTime ~= 0) then
            local cd = cdTime - (GetTime() - startTime)
            if (cdTime < 2.0) then
                  cd = 0
            end
            return cd
      end
      return 0
end
function W_IsUsableItem(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo == nil) then
            return false
      end
      local isUsable, nomana = IsUsableItem(spellInfo.spellID)
      if (isUsable == true and nomana == false and W_GetCooldown(2, spellID) <= 1) then
            if (ItemHasRange(spellInfo.name) ~= true or IsItemInRange(spellInfo.name, UnitId) == 1) then
                  return true
            end
      end
      return false
end
function W_IsCasting(UnitId)
      local spell, displayName, icon, startTime, endTime, isTradeSkill, castID, interrupt = UnitCastingInfo(UnitId)
      if (spell ~= nil) then
            if (startTime == 0) then
                  return 0
            elseif (endTime ~= nil) then
                  return endTime / 1000 - GetTime()
            end
            return 999
      end
      spell, displayName, icon, startTime, endTime, isTradeSkill, interrupt = UnitChannelInfo(UnitId)
      if (spell ~= nil) then
            if (startTime == 0) then
                  return 0
            elseif (endTime ~= nil) then
                  return endTime / 1000 - GetTime() + 0.8
            end
            return 999
      end
      return 0
end
function W_GetCooldown(type, spellID)
      local spellInfo = NA_getSpellInfo(spellID)
      local start, duration, enable
      if (type == 1) then
            start, duration, enable = GetSpellCooldown(spellInfo.spellID)
      elseif (type == 2) then
            start, duration, enable = GetItemCooldown(spellInfo.spellID)
      end
      local t = start + duration - GetTime()
      if (enable == true and (start <= 0 or t <= 0)) then
            return 0
      elseif (enable ~= 1) then
            return 99999
      else
            return t
      end
end
function W_GetSpellCooldown(spellID)
      local start, duration, enable = GetSpellCooldown(spellID)
      local t = start + duration - GetTime()
      if (enable == true and (start <= 0 or t <= 0)) then
            return 0
      elseif (enable ~= 1) then
            return 99999
      else
            return t
      end
end
function W_IsInCombat()
      if (UnitAffectingCombat(NA_Player)) then
            return true
      else
            return false
      end
end
function W_StarCount(runetype)
      local count = 0
      if (select(3, GetRuneCooldown(1)) == true and GetRuneType(runetype)) then
            count = count + 1
      end
      if (select(3, GetRuneCooldown(2)) == true and GetRuneType(runetype)) then
            count = count + 1
      end
      if (select(3, GetRuneCooldown(3)) == true and GetRuneType(runetype)) then
            count = count + 1
      end
      if (select(3, GetRuneCooldown(4)) == true and GetRuneType(runetype)) then
            count = count + 1
      end
      if (select(3, GetRuneCooldown(5)) == true and GetRuneType(runetype)) then
            count = count + 1
      end
      if (select(3, GetRuneCooldown(6)) == true and GetRuneType(runetype)) then
            count = count + 1
      end
      return count
end
function W_PaladinPower(unit)
      return UnitPower(unit, 9)
end
function w_GetComboPoints(unit)
      return UnitPower(unit, 4)
end
function W_SpellEnabled(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      return (spellInfo ~= nil and spellInfo.keyNo ~= nil and W_IsUsableSpell(spellID, UnitId) and UnitIsVisible(UnitId))
end
function W_Send(text, channel)
      SendChatMessage(text, "channel", nil, channel)
end
function NA_Sale(Item, price, unit)
      local iunit = "??"
      if (unit ~= nil) then
            iunit = unit
      end
      W_Send("????" .. select(1, GetItemInfo(Item)) .. price .. "/" .. iunit .. "~???????,??????", 2)
end
function NA_buy(Item)
      W_Send("??" .. select(1, GetItemInfo(Item)) .. ",?????????,????", 2)
end
function NA_getClassInfoName(spellID)
      if (spellID == nil) then
            return nil
      end
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo ~= nil and spellInfo.name ~= nil) then
            return spellInfo.name
      else
            return nil
      end
end
function NA_ArrayAppend(t1, t2)
      for k in pairs(t2) do
            table.insert(t1, t2[k])
      end
      return t1
end
function NA_testSpell(spellID, UnitId)
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo == nil or spellInfo.keyNo == nil) then
            return
      end
      print("1-spellInfo.keyNo=" .. spellInfo.keyNo)
      print("1.1-NA_SpellInfoType(" .. spellID .. ")=" .. NA_SpellInfoType(spellID))
      local spellInfo = NA_getSpellInfo(spellID)
      if (spellInfo == nil) then
            return
      end
      print("2.0-spellInfo.name=" .. spellInfo.name)
      print(SpellHasRange(spellInfo.name))
      if (UnitIsVisible(UnitId) == false) then
            return
      end
      print("3-UnitIsVisible(" .. UnitId .. ")==true")
      if (NA_SpellInfoType(spellID) == 1) then
            local isUsable, nomana = IsUsableSpell(spellInfo.spellID)
            print(isUsable)
            print(nomana)
            if (isUsable == true and nomana == false and W_GetCooldown(1, spellID) <= 1) then
                  print("3.1-W_GetCooldown(1, " .. spellID .. ")=" .. W_GetCooldown(1, spellID))
                  if (SpellHasRange(spellInfo.name) ~= true or IsSpellInRange(spellInfo.name, UnitId) == 1) then
                        print("4-SpellHasRange(" .. spellInfo.name .. ")==true")
                        print("5-IsSpellInRange(" .. spellInfo.name .. ", " .. UnitId .. ")==true")
                        if (W_IsUsableSpell(spellID, UnitId) == false) then
                              return
                        end
                        print("6-W_IsUsableSpell(" .. spellID .. ", " .. UnitId .. ")==true")
                        return
                  end
            end
      end
end
function NA_printTable(t)
      for k in pairs(t) do
            print(k .. "=" .. t[k])
      end
end
function NA_testBuff(UnitId, buffID, onlyMine)
      if (W_getBuff(UnitId, buffID, onlyMine) ~= nil) then
            print(
                  "W_getBuff(" ..
                        UnitId .. ", " .. buffID .. ", " .. onlyMine .. ")=" .. W_getBuff(UnitId, buffID, onlyMine)
            )
            if (W_BuffTime(UnitId, buffID, onlyMine) ~= nil) then
                  print(
                        "W_BuffTime(" ..
                              UnitId ..
                                    ", " .. buffID .. ", " .. onlyMine .. ")=" .. W_BuffTime(UnitId, buffID, onlyMine)
                  )
            end
            print(
                  "W_HasBuff(" ..
                        UnitId .. ", " .. buffID .. ", " .. onlyMine .. ")=" .. W_HasBuff(UnitId, buffID, onlyMine)
            )
            print(
                  "W_RetainBuff(" ..
                        UnitId .. ", " .. buffID .. ", " .. onlyMine .. ")=" .. W_RetainBuff(UnitId, buffID, onlyMine)
            )
            print(
                  "W_BuffCount(" ..
                        UnitId .. ", " .. buffID .. ", " .. onlyMine .. ")=" .. W_BuffCount(UnitId, buffID, onlyMine)
            )
      end
end
function W_printBuffInfo(UnitId)
      local buffs, i = {}, 1
      local buff = UnitBuff(UnitId, i)
      while buff do
            buffs[#buffs + 1] = buff
            i = i + 1
            buff = UnitBuff(UnitId, i)
      end
      if #buffs < 1 then
            buffs = "You have no buffs"
      else
            buffs[1] = "You're buffed with: " .. buffs[1]
            buffs = table.concat(buffs, ", ")
      end
      print(buffs)
end
function W_printDeBuffInfo(UnitId)
      local buffs, i = {}, 1
      local buff = UnitDebuff(UnitId, i)
      while buff do
            buffs[#buffs + 1] = buff
            i = i + 1
            buff = UnitDebuff(UnitId, i)
      end
      if #buffs < 1 then
            buffs = "You have no debuffs"
      else
            buffs[1] = "You're debuffs with: " .. buffs[1]
            buffs = table.concat(buffs, ", ")
      end
      print(buffs)
end
function W_FormInfo(Num)
      local texture, name, isactive, isCastable = GetShapeshiftFormInfo(Num)
      if texture then
            if isactive then
                  return true
            end
      end
      return false
end
function W_SunPowerDir()
      local direction = GetEclipseDirection()
      if direction == "sun" then
            return true
      end
      return false
end
function W_EclipsePower()
      local power = UnitPower(NA_Player, 8)
      if power < 0 then
            return -1
      elseif power > 0 then
            return 1
      elseif power == 0 then
            return 0
      end
end
function G_GetPower(types)
      local power = UnitPower(NA_Player, types)
      if power < 0 then
            return -1
      elseif power > 0 then
            return power
      elseif power == 0 then
            return 0
      end
end
function NA_GetSpellCharges(spellID)
      local currentCharges, maxCharges, cooldownStart, cooldownDuration = GetSpellCharges(spellID)
      if (currentCharges ~= nil) then
            return currentCharges
      end
      return 0
end
function testss()
      local currentCharges, maxCharges, cooldownStart, cooldownDuration = GetSpellCharges(196884)
      print(cooldownStart)
end
function NA_GetSpellChargesTime(spellID)
      local currentCharges, maxCharges, cooldownStart, cooldownDuration = GetSpellCharges(spellID)
      if (currentCharges ~= nil) then
            local chargetime = cooldownStart + cooldownDuration - GetTime()
            return chargetime
      end
      return 999
end
function NA_checkHP(index)
      if (index == 0) then
            return W_HPlevel(NA_Player) < 0.3 or (NA_IsSolo and not NA_IsMaxDps and W_HPlevel(NA_Player) < 0.5)
      elseif (index == 1) then
            return W_HPlevel(NA_Player) < 0.6 or (NA_IsSolo and not NA_IsMaxDps and W_HPlevel(NA_Player) < 0.7)
      elseif (index == 2) then
            return W_HPlevel(NA_Player) < 0.9 or (NA_IsSolo and not NA_IsMaxDps and W_HPlevel(NA_Player) < 0.9)
      else
            return false
      end
end
function NA_SpellInterrupt(UnitId)
      local spell, _, _, _, _, endTime, _, _, notinterrupt = UnitCastingInfo(NA_Target)
      if (spell and not notinterrupt) then
            local finish = endTime / 1000 - GetTime()
            if (finish ~= 0) then
                  return true
            end
      end
      return false
end
SZ_magic_off = {"135924", "15499"}
function NA_CheckDebuff(UnitId)
      local name, debuffmagicid, bb, debuffType = UnitDebuff(UnitId, 1, 1)
      continueIndex = 0
      for k = 1, #SZ_magic_off do
            if (tostring(SZ_magic_off[k]) == tostring(debuffmagicid)) then
                  continueIndex = 1
                  break
            end
      end
      if name and continueIndex == 0 then
            if debuffType == "Magic" then
                  return 1, debuffmagicid
            elseif debuffType == "Disease" then
                  return 2, debuffmagicid
            elseif debuffType == "Poison" then
                  return 3, debuffmagicid
            elseif debuffType == "Curse" then
                  return 4, debuffmagicid
            end
      end
      return 0, debuffmagicid
end
function NA_CheckBuffStealable(UnitId)
      for i = 1, 40 do
            local name, _, _, _, _, _, _, _, isStealable = UnitBuff(UnitId, i)
            if name then
                  if isStealable then
                        return true
                  end
            end
      end
      return false
end
function NA_CountLowPlayers(UnitId, minHPLevel, dist)
      local prefix = "raid"
      local numPlayers = GetNumGroupMembers()
      local count = 0
      if not IsInRaid() then
            prefix = "party"
            numPlayers = numPlayers - 1
            local perc = UnitHealth("player") / UnitHealthMax("player")
            if perc < minHPLevel then
                  count = count + 1
            end
      else
            for i = 1, numPlayers do
                  local targetName = UnitName(UnitId)
                  local posX, posY = UnitPosition(UnitId)
                  local unit = prefix .. i
                  local targetName2 = UnitName(unit)
                  if (targetName2 ~= targetName) then
                        local posX2, posY2 = UnitPosition(unit)
                        local perc = UnitHealth(unit) / UnitHealthMax(unit)
                        local xx = posX - posX2
                        local yy = posY - posY2
                        local dist2 = xx * xx + yy * yy
                        if (perc < minHPLevel and dist2 < dist) then
                              count = count + 1
                        end
                  end
            end
      end
      return count
end
function NA_Autofollow()
      if (CheckInteractDistance(NA_Target, 2) and UnitCanAssist(NA_Player, NA_Target) and UnitIsPlayer(NA_Target)) then
            FollowUnit(NA_Target)
      end
end
function NA_CheckBuff(UnitId)
      for i = 1, 40 do
            local name, _, _, debuffType = UnitBuff(UnitId, i)
            if name then
                  if debuffType == "Magic" then
                        return 1
                  elseif debuffType == "Enrage" then
                        return 2
                  end
            end
      end
      return 0
end
function NA_AOE()
      NA_ShowVars(201)
      return true
end
function NA_CheckRoles(UnitId)
      local roleToken = UnitGroupRolesAssigned(UnitId)
      if roleToken == "TANK" then
            return 1
      elseif roleToken == "HEALER" then
            return 2
      elseif roleToken == "DAMAGER" then
            return 3
      end
      return 0
end
function NA_CheckRace(UnitId)
      local raceName, raceId = UnitRace(UnitId)
      if raceId == "Draenei" then
            return 1
      end
      return 0
end
function NA_CheckGlyph(GlyphId)
      for i = 1, 3 do
            local n = i * 2
            local enabled, _, _, _, _, glyphID2 = GetGlyphSocketInfo(n)
            if enabled then
                  if GlyphId == glyphID2 then
                        return true
                  end
            end
      end
      return false
end
function NA_isUsableTalentSpell(tier, column)
      local talentID, name, texture, selected, available = GetTalentInfo(tier, column, GetActiveSpecGroup())
      if talentID then
            if (selected) then
                  return true
            end
      end
      return false
end
function NA_TimeToDie(UnitId)
      if (W_PowerLevel(UnitId) < 1) then
            return 1
      end
      return 1000
end
function NA_CastSpell(spellID)
      NA_FireSpell(spellID, NA_Target)
end
function W_GetSpellRemain(spellID, remaintime)
      local start, duration, enable = GetSpellCooldown(spellID)
      local t = start + remaintime - GetTime()
      if (enable == true and (start <= 0 or t <= 0)) then
            return 0
      elseif (enable ~= 1) then
            return 99999
      else
            return t
      end
end
function W_CheckRange(UnitId, UnitId2)
      if (UnitExists(UnitId) and UnitExists(UnitId2)) then
            local posX3, posY3 = UnitPosition(UnitId)
            local posX4, posY4 = UnitPosition(UnitId2)
            local intx = posX3 - posX4
            local inty = posY3 - posY4
            local range = intx * intx + inty * inty
            return range
      end
      return 9999
end
function NA_getOvaleActions()
      local NA_OvaleActions = {[1] = nil, [2] = nil, [3] = nil, [4] = nil}
      if (Ovale ~= nil and Ovale.frame ~= nil and Ovale.frame.actions ~= nil) then
            for i = 1, 4 do
                  if (Ovale.frame.actions[i] ~= nil and Ovale.frame.actions[i].spellId ~= nil) then
                        NA_OvaleActions[i] = Ovale.frame.actions[i].spellId .. ""
                  end
            end
      end
      return NA_OvaleActions
end
function NA_fireByOvale()
      local NA_OvaleActions = NA_getOvaleActions()
      return (false or
            NA_Fire(
                  NA_IsMaxDps and NA_OvaleActions[4] ~= nil,
                  NA_OvaleActions[4],
                  NA_getSpellTarget(NA_OvaleActions[4])
            ) or
            NA_Fire(NA_OvaleActions[1] ~= nil, NA_OvaleActions[1], NA_getSpellTarget(NA_OvaleActions[1])) or
            NA_Fire(NA_OvaleActions[3] ~= nil, NA_OvaleActions[3], NA_getSpellTarget(NA_OvaleActions[3])))
end
function NA_getSpellTarget(spellID)
      for k = 1, #NA_SpellTarget4Player do
            if (tostring(NA_SpellTarget4Player[k]) == spellID) then
                  return NA_Player
            end
      end
      return NA_Target
end
function MistCounts(num1, num2, types, aura)
      local prefix = "raid"
      local numPlayers = GetNumGroupMembers()
      local numAuras1 = 0
      local numAuras2 = 0
      if not IsInRaid() then
            prefix = "party"
            numPlayers = numPlayers - 1
            local perc = UnitHealth("player") / UnitHealthMax("player")
            if types == 1 then
                  local _, _, _, _, _, _, expirationTime, _, _, _, _ = UnitAura("player", aura, nil, "PLAYER|HELPFUL")
                  if expirationTime ~= nil and perc <= num1 then
                        numAuras1 = numAuras1 + 1
                  end
            else
                  if perc <= num1 then
                        numAuras2 = numAuras2 + 1
                  end
            end
      end
      for i = 1, numPlayers do
            local unit = prefix .. i
            local perc = UnitHealth(unit) / UnitHealthMax(unit)
            if types == 1 then
                  local _, _, _, _, _, _, expirationTime, _, _, _, _ = UnitAura(unit, aura, nil, "PLAYER|HELPFUL")
                  if expirationTime ~= nil and perc <= num1 then
                        numAuras1 = numAuras1 + 1
                  end
            else
                  if perc <= num1 then
                        numAuras2 = numAuras2 + 1
                  end
            end
      end
      if types == 1 then
            return numAuras1 >= num2
      else
            return numAuras2 >= num2
      end
end
function G_Fs()
      local s = CheckInteractDistance("target", 3)
      if s then
            return 1
      else
            return 0
      end
end
function amac_bak(Unit, Interrupt)
      local c, i
      if not Unit then
            Unit = "target"
      end
      c, _, _, _, _, _, _, _, i = UnitCastingInfo(Unit)
      if c then
            if not Interrupt then
                  return c
            else
                  if not i then
                        return c
                  end
            end
      else
            c, _, _, _, _, _, _, i = UnitChannelInfo(Unit)
            if c then
                  if not Interrupt then
                        return c
                  else
                        if not i then
                              return c
                        end
                  end
            end
      end
      return false
end
function getshowMagic_bfb(Unit, Interrupt)
      local c, i
      local tTime, sTime, nTime, lTime
      nTime = GetTime() * 1000
      local sz
      local bsz
      if not Unit then
            Unit = "target"
      end
      c, _, _, _, _, _, _, _, i = UnitCastingInfo(Unit)
      if c then
            c, _, _, _, sTime, tTime, bsz, i = UnitCastingInfo(Unit)
            lTime = tTime - sTime
            nTime = nTime - sTime
            sz = 1 - (nTime / lTime)
            if c then
                  if not Interrupt then
                        return sz
                  else
                        if not i then
                              return sz
                        end
                  end
            end
      else
            c, _, _, _, sTime, tTime, bsz, i = UnitChannelInfo(Unit)
            lTime = tTime - sTime
            nTime = nTime - sTime
            sz = 1 - (nTime / lTime)
            if c then
                  if not Interrupt then
                        return sz
                  else
                        if not i then
                              return sz
                        end
                  end
            end
      end
      return 0
end
function G_hit(Unit, interrupt)
      local c, i
      if not Unit then
            Unit = "target"
      end
      c, _, _, _, _, _, _, _, i = UnitCastingInfo(Unit)
      if c then
            if i then
                  return 0
            else
                  return 1
            end
      else
            return 0
      end
end
