print("准备加载光芒怀旧服萨满插件v1.2")
--su add
su_t1=0
su_t1Flag=false  
su_delay1=0.001  
--

pIndexText = 0
pW = 20
ph = 20
pX = 0
pY = 0
pa = CreateFrame("Frame", nil, UIParent)
pa:SetFrameStrata("TOOLTIP")
pa:SetWidth(pW)
pa:SetHeight(ph)
pa:SetPoint("TOPLEFT", pX, pY)
paTexture = pa:CreateTexture(nil, "TOOLTIP")
paTexture:SetPoint("LEFT", 0, 0)
paTexture:SetColorTexture(0.9, 0.9, 0, 1)
paTexture:SetWidth(pW)
paTexture:SetHeight(ph)
paTexture:Show()
pIndexText = 1
pb = CreateFrame("Frame", nil, UIParent)
pb:SetFrameStrata("TOOLTIP")
pb:SetWidth(pW)
pb:SetHeight(ph)
pb:SetPoint("TOPLEFT", pX + pW, pY)
pbTexture = pb:CreateTexture(nil, "TOOLTIP")
pbTexture:SetPoint("LEFT", 0, 0)
pbTexture:SetColorTexture(0.9, 0.9, 0, 1)
pbTexture:SetWidth(pW)
pbTexture:SetHeight(ph)
pbTexture:Show()
--彩色表
tablec = {
     0.9,
     0.9,
     0.5,
     0.5,
     0.1,
     0.9,
     0.0627450980392157,
     0.1254901960784314,
     0.0627450980392157,
     0.1882352941176471,
     0.0627450980392157,
     0.2509803921568627,
     0.0627450980392157,
     0.3137254901960784,
     0.0627450980392157,
     0.3764705882352941,
     0.0627450980392157,
     0.4392156862745098,
     0.0627450980392157,
     0.5019607843137255,
     0.0627450980392157,
     0.5647058823529412,
     0.0627450980392157,
     0.6274509803921569,
     0.0627450980392157,
     0.6901960784313725,
     0.0627450980392157,
     0.7529411764705882,
     0.0627450980392157,
     0.8156862745098039,
     0.0627450980392157,
     0.8784313725490196,
     0.0627450980392157,
     0.9411764705882353,
     0.1254901960784314,
     0.0627450980392157,
     0.1254901960784314,
     0.1254901960784314,
     0.1254901960784314,
     0.1882352941176471,
     0.1254901960784314,
     0.2509803921568627,
     0.1254901960784314,
     0.3137254901960784,
     0.1254901960784314,
     0.3764705882352941,
     0.1254901960784314,
     0.4392156862745098,
     0.1254901960784314,
     0.5019607843137255,
     0.1254901960784314,
     0.5647058823529412,
     0.1254901960784314,
     0.6274509803921569,
     0.1254901960784314,
     0.6901960784313725,
     0.1254901960784314,
     0.7529411764705882,
     0.1254901960784314,
     0.8156862745098039,
     0.1254901960784314,
     0.8784313725490196,
     0.1254901960784314,
     0.9411764705882353,
     0.1882352941176471,
     0.0627450980392157,
     0.1882352941176471,
     0.1254901960784314,
     0.1882352941176471,
     0.1882352941176471,
     0.1882352941176471,
     0.2509803921568627,
     0.1882352941176471,
     0.3137254901960784,
     0.1882352941176471,
     0.3764705882352941,
     0.1882352941176471,
     0.4392156862745098,
     0.1882352941176471,
     0.5019607843137255,
     0.1882352941176471,
     0.5647058823529412,
     0.1882352941176471,
     0.6274509803921569,
     0.1882352941176471,
     0.6901960784313725,
     0.1882352941176471,
     0.7529411764705882,
     0.1882352941176471,
     0.8156862745098039,
     0.1882352941176471,
     0.8784313725490196,
     0.1882352941176471,
     0.9411764705882353,
     0.2509803921568627,
     0.0627450980392157,
     0.2509803921568627,
     0.1254901960784314,
     0.2509803921568627,
     0.1882352941176471,
     0.2509803921568627,
     0.2509803921568627,
     0.2509803921568627,
     0.3137254901960784,
     0.2509803921568627,
     0.3764705882352941,
     0.2509803921568627,
     0.4392156862745098,
     0.2509803921568627,
     0.5019607843137255,
     0.2509803921568627,
     0.5647058823529412,
     0.2509803921568627,
     0.6274509803921569,
     0.2509803921568627,
     0.6901960784313725,
     0.2509803921568627,
     0.7529411764705882,
     0.2509803921568627,
     0.8156862745098039,
     0.2509803921568627,
     0.8784313725490196,
     0.2509803921568627,
     0.9411764705882353,
     0.3137254901960784,
     0.0627450980392157,
     0.3137254901960784,
     0.1254901960784314,
     0.3137254901960784,
     0.1882352941176471,
     0.3137254901960784,
     0.2509803921568627,
     0.3137254901960784,
     0.3137254901960784,
     0.3137254901960784,
     0.3764705882352941,
     0.3137254901960784,
     0.4392156862745098,
     0.3137254901960784,
     0.5019607843137255,
     0.3137254901960784,
     0.5647058823529412,
     0.3137254901960784,
     0.6274509803921569,
     0.3137254901960784,
     0.6901960784313725,
     0.3137254901960784,
     0.7529411764705882,
     0.3137254901960784,
     0.8156862745098039,
     0.3137254901960784,
     0.8784313725490196,
     0.3137254901960784,
     0.9411764705882353,
     0.3764705882352941,
     0.0627450980392157,
     0.3764705882352941,
     0.1254901960784314,
     0.3764705882352941,
     0.1882352941176471,
     0.3764705882352941,
     0.2509803921568627,
     0.3764705882352941,
     0.3137254901960784,
     0.3764705882352941,
     0.3764705882352941,
     0.3764705882352941,
     0.4392156862745098,
     0.3764705882352941,
     0.5019607843137255,
     0.3764705882352941,
     0.5647058823529412,
     0.3764705882352941,
     0.6274509803921569,
     0.3764705882352941,
     0.6901960784313725,
     0.3764705882352941,
     0.7529411764705882,
     0.3764705882352941,
     0.8156862745098039,
     0.3764705882352941,
     0.8784313725490196,
     0.3764705882352941,
     0.9411764705882353,
     0.4392156862745098,
     0.0627450980392157,
     0.4392156862745098,
     0.1254901960784314,
     0.4392156862745098,
     0.1882352941176471,
     0.4392156862745098,
     0.2509803921568627,
     0.4392156862745098,
     0.3137254901960784,
     0.4392156862745098,
     0.3764705882352941,
     0.4392156862745098,
     0.4392156862745098,
     0.4392156862745098,
     0.5019607843137255,
     0.4392156862745098,
     0.5647058823529412,
     0.4392156862745098,
     0.6274509803921569,
     0.4392156862745098,
     0.6901960784313725,
     0.4392156862745098,
     0.7529411764705882,
     0.4392156862745098,
     0.8156862745098039,
     0.4392156862745098,
     0.8784313725490196,
     0.4392156862745098,
     0.9411764705882353,
     0.5019607843137255,
     0.0627450980392157,
     0.5019607843137255,
     0.1254901960784314,
     0.5019607843137255,
     0.1882352941176471,
     0.5019607843137255,
     0.2509803921568627,
     0.5019607843137255,
     0.3137254901960784,
     0.5019607843137255,
     0.3764705882352941,
     0.5019607843137255,
     0.4392156862745098,
     0.5019607843137255,
     0.5019607843137255,
     0.5019607843137255,
     0.5647058823529412,
     0.5019607843137255,
     0.6274509803921569,
     0.5019607843137255,
     0.6901960784313725,
     0.5019607843137255,
     0.7529411764705882,
     0.5019607843137255,
     0.8156862745098039,
     0.5019607843137255,
     0.8784313725490196,
     0.5019607843137255,
     0.9411764705882353,
     0.5647058823529412,
     0.0627450980392157,
     0.5647058823529412,
     0.1254901960784314,
     0.5647058823529412,
     0.1882352941176471,
     0.5647058823529412,
     0.2509803921568627,
     0.5647058823529412,
     0.3137254901960784,
     0.5647058823529412,
     0.3764705882352941,
     0.5647058823529412,
     0.4392156862745098,
     0.5647058823529412,
     0.5019607843137255,
     0.5647058823529412,
     0.5647058823529412,
     0.5647058823529412,
     0.6274509803921569,
     0.5647058823529412,
     0.6901960784313725,
     0.5647058823529412,
     0.7529411764705882,
     0.5647058823529412,
     0.8156862745098039,
     0.5647058823529412,
     0.8784313725490196,
     0.5647058823529412,
     0.9411764705882353,
     0.6274509803921569,
     0.0627450980392157,
     0.6274509803921569,
     0.1254901960784314,
     0.6274509803921569,
     0.1882352941176471,
     0.6274509803921569,
     0.2509803921568627,
     0.6274509803921569,
     0.3137254901960784,
     0.6274509803921569,
     0.3764705882352941,
     0.6274509803921569,
     0.4392156862745098,
     0.6274509803921569,
     0.5019607843137255,
     0.6274509803921569,
     0.5647058823529412,
     0.6274509803921569,
     0.6274509803921569,
     0.6274509803921569,
     0.6901960784313725,
     0.6274509803921569,
     0.7529411764705882,
     0.6274509803921569,
     0.8156862745098039,
     0.6274509803921569,
     0.8784313725490196,
     0.6274509803921569,
     0.9411764705882353,
     0.6901960784313725,
     0.0627450980392157,
     0.6901960784313725,
     0.1254901960784314,
     0.6901960784313725,
     0.1882352941176471,
     0.6901960784313725,
     0.2509803921568627,
     0.6901960784313725,
     0.3137254901960784,
     0.6901960784313725,
     0.3764705882352941,
     0.6901960784313725,
     0.4392156862745098,
     0.6901960784313725,
     0.5019607843137255,
     0.6901960784313725,
     0.5647058823529412,
     0.6901960784313725,
     0.6274509803921569,
     0.6901960784313725,
     0.6901960784313725,
     0.6901960784313725,
     0.7529411764705882,
     0.6901960784313725,
     0.8156862745098039,
     0.6901960784313725,
     0.8784313725490196,
     0.6901960784313725,
     0.9411764705882353,
     0.7529411764705882,
     0.0627450980392157,
     0.7529411764705882,
     0.1254901960784314,
     0.7529411764705882,
     0.1882352941176471,
     0.7529411764705882,
     0.2509803921568627,
     0.7529411764705882,
     0.3137254901960784,
     0.7529411764705882,
     0.3764705882352941,
     0.7529411764705882,
     0.4392156862745098,
     0.7529411764705882,
     0.5019607843137255,
     0.7529411764705882,
     0.5647058823529412,
     0.7529411764705882,
     0.6274509803921569,
     0.7529411764705882,
     0.6901960784313725,
     0.7529411764705882,
     0.7529411764705882,
     0.7529411764705882,
     0.8156862745098039,
     0.7529411764705882,
     0.8784313725490196,
     0.7529411764705882,
     0.9411764705882353,
     0.8156862745098039,
     0.0627450980392157,
     0.8156862745098039,
     0.1254901960784314,
     0.8156862745098039,
     0.1882352941176471,
     0.8156862745098039,
     0.2509803921568627,
     0.8156862745098039,
     0.3137254901960784,
     0.8156862745098039,
     0.3764705882352941,
     0.8156862745098039,
     0.4392156862745098,
     0.8156862745098039,
     0.5019607843137255,
     0.8156862745098039,
     0.5647058823529412,
     0.8156862745098039,
     0.6274509803921569,
     0.8156862745098039,
     0.6901960784313725,
     0.8156862745098039,
     0.7529411764705882,
     0.8156862745098039,
     0.8156862745098039,
     0.8156862745098039,
     0.8784313725490196,
     0.8156862745098039,
     0.9411764705882353,
     0.8784313725490196,
     0.0627450980392157,
     0.8784313725490196,
     0.1254901960784314,
     0.8784313725490196,
     0.1882352941176471,
     0.8784313725490196,
     0.2509803921568627,
     0.8784313725490196,
     0.3137254901960784,
     0.8784313725490196,
     0.3764705882352941,
     0.8784313725490196,
     0.4392156862745098,
     0.8784313725490196,
     0.5019607843137255,
     0.8784313725490196,
     0.5647058823529412,
     0.8784313725490196,
     0.6274509803921569,
     0.8784313725490196,
     0.6901960784313725,
     0.8784313725490196,
     0.7529411764705882,
     0.8784313725490196,
     0.8156862745098039,
     0.8784313725490196,
     0.8784313725490196,
     0.8784313725490196,
     0.9411764705882353,
     0.9411764705882353,
     0.0627450980392157,
     0.9411764705882353,
     0.1254901960784314,
     0.9411764705882353,
     0.1882352941176471,
     0.9411764705882353,
     0.2509803921568627,
     0.9411764705882353,
     0.3137254901960784,
     0.9411764705882353,
     0.3764705882352941,
     0.9411764705882353,
     0.4392156862745098,
     0.9411764705882353,
     0.5019607843137255,
     0.9411764705882353,
     0.5647058823529412,
     0.9411764705882353,
     0.6274509803921569,
     0.9411764705882353,
     0.6901960784313725,
     0.9411764705882353,
     0.7529411764705882,
     0.9411764705882353,
     0.8156862745098039,
     0.9411764705882353,
     0.8784313725490196,
     0.9411764705882353,
     0.9411764705882353
}
mp5now = 0
zhiliaoclock = 0
power_oldpower = 0
power_nowpower = 0
power_powertime = 0
fenggouIndex = 0
faqiangIndex = 0
fenggouzhiliaoclock = 0
playerAffectheshui = false
heshuiNums = 70
heshuitype = 1
nowfumotime = 0
jinghuaType = 0
jinghuaMagic = 99999
jinghuaID = 0
jinghuaButton = 0

bindFinish = false  --绑定完成变量
wowshaoKeyBind =
     "403@8042@8050@324@/startattack@8017@8024@3599@1535@421@8232@8512@8160@17364@/cast [target=player]8004@/cast [target=player]331@526@8056@/cast 8056(level 1)@8835@/stopcasting \n/use 魔法水\n/use 魔法淡水\n/use 魔法纯净水\n/use 魔法泉水\n/use 魔法矿泉水\n/use 魔法苏打水\n/use 魔法晶水\n/use 魔法山泉水\n/use 魔法冰川水@5675"
if (wowshaoKeyBind ~= nil and bindFinish == false) then
     lastUpdateTime = 0
     bindingLen = {strsplit("@", wowshaoKeyBind)} --@间隔符的分割 返回个数和内容
     macroindex = 0
     while true do
          macroindex = macroindex + 1
          if (macroindex > #bindingLen) then  --#bindingLen 整数
               break
          end
          if (bindingLen[macroindex] ~= nil) then
               thisMacro = bindingLen[macroindex]
               if (string.find(thisMacro, "/") == nil) then
                    thisMacro = GetSpellInfo(thisMacro)
                    thisMacro = "/cast " .. thisMacro
               else
                    if (thisMacro == "/use 167555") then
                         aText = 13
                         thisMacro = string.gsub(thisMacro, "167555", aText)
                    end
                    if (thisMacro == "/cast [target=player]8004") then
                         aText = GetSpellInfo(8004)
                         thisMacro = string.gsub(thisMacro, "8004", aText)
                    end
                    if (thisMacro == "/cast [target=player]331") then
                         aText = GetSpellInfo(331)
                         thisMacro = string.gsub(thisMacro, "331", aText)
                    end
                    aText = GetSpellInfo(686)
                    thisMacro = string.gsub(thisMacro, "686", aText)
                    aText = GetSpellInfo(8056)
                    thisMacro = string.gsub(thisMacro, "8056", aText)
                    aText = GetSpellInfo(348)
                    thisMacro = string.gsub(thisMacro, "348", aText)
                    aText = GetSpellInfo(172)
                    thisMacro = string.gsub(thisMacro, "172", aText)
                    aText = GetSpellInfo(5019)
                    thisMacro = string.gsub(thisMacro, "5019", aText)
                    levelName = "Rank"
                    if (GetLocale() == "zhCN") then
                         levelName = "等级"
                    elseif (GetLocale() == "zhTW") then
                         levelName = "等級"
                    else
                         levelName = "Rank"
                    end
                    thisMacro = string.gsub(thisMacro, "level", levelName)
               end
               --产生按钮 macroindex 是按键号，但不知如何和键盘绑定的
               btn = CreateFrame("Button", "wowshaoMacro" .. macroindex, UIParent, "SecureActionButtonTemplate")
               btn:SetAttribute("type", "macro")
               btn:SetAttribute("macrotext", thisMacro)
               --打印宏索引和宏命令  可以  button如何打印？？？？？？？？？
               print (macroindex,thisMacro ,aText)   
                    end
     end
     bindFinish = true  --绑定结束，运行1次
end
-- --帮助检查
-- helpCheck = {
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0,
--      0
-- }
--更新帮助名和时间
function updateHelpName(username, clocktime)
     for i = 1, 40, 1 do
          if (helpCheck[(i - 1) * 2 + 1] == 0 or helpCheck[(i - 1) * 2 + 1] == username) then
               helpCheck[(i - 1) * 2 + 1] = username
               helpCheck[(i - 1) * 2 + 2] = clocktime
               break
          end
     end
end
clockHealTime = 5 --生命点5
--按名检测
function checkHelpName(username)
     if (username == nil) then
          return false
     end
     for i = 1, 40, 1 do
          if (helpCheck[(i - 1) * 2 + 1] == username) then
               if ((GetTime() - helpCheck[(i - 1) * 2 + 2]) < clockHealTime) then
                    return true
               end
          end
     end
     return false
end
function recheckHelpName()
     for i = 1, 80, 1 do
          helpCheck[i] = 0
     end
end
function start_attack()
     indexattack = 1
     for AtkSlot = 1, 72 do
          if IsAttackAction(AtkSlot) and not IsCurrentAction(AtkSlot) then
               indexattack = 0
          end
     end
     return indexattack
end
fumo_shihuaTimes = 0
fumo_huosheTimes = 0
fumo_fengnuTimes = 0
zhuoreTimes = 0
fengnututeng = 0
liliangtuteng = 0
zhiliaoclock = 0
shixuetime = 0
shixueclock = 0
playerguid = UnitGUID("player")
runFrame = CreateFrame("Frame")  --产生运行窗口
runTime = 0
--战斗信息更新
runFrame:SetScript(
     "OnUpdate",
     function(self, inTimes)
          runFrame:RegisterEvent("COMBAT_LOG_EVENT")
          runFrame:RegisterEvent("NAME_PLATE_UNIT_ADDED")
          runFrame:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
          runFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
          SetCVar("cameraDistanceMaxZoomFactor", 2.6)
          runFrame:SetScript(
               "OnEvent",
               function(self, event, ...)
                    if event == "NAME_PLATE_UNIT_ADDED" then
                         unitid = ...
                         unitname = UnitName(unitid)
                         if UnitIsPlayer(unitid) then
                              return
                         end
                         addListName(unitid)
                    end
                    if event == "NAME_PLATE_UNIT_REMOVED" then
                         unitid = ...
                         removeListName(unitid)
                    end
                    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
                         local timestamp,
                              combat_event,
                              _,
                              sourceGUID,
                              sourceName,
                              sourceFlags,
                              sourceFlags2,
                              destGUID,
                              destName,
                              destFlags,
                              destFlags2,
                              spellId,
                              spellName,
                              spellSchool,
                              casttxt = CombatLogGetCurrentEventInfo()
                         if sourceGUID == playerguid and (casttxt == "目标不在视野中" or casttxt == "超出范围") then
                              updateHelpName(UnitName("target"), GetTime())
                         end

                           
                        
                         -- if combat_event == "SPELL_CAST_START" and sourceGUID == playerguid then
                          
                         --      if
                         --           (spellName == GetSpellInfo(331) or spellName == GetSpellInfo(8004) or
                         --                spellName == GetSpellInfo(1064))
                         --       then
                         --           zhiliaoclock = GetTime()
                         --           fenggouzhiliaoclock = GetTime()
                         --           oldstartmagic = spellName
                         --           castTarget = UnitName("target")
                         --           castTarget_fenggou = UnitName("target")
                         --      end
                         -- end
                         -----------------------------------------------------------施法事件--------------------------
                        -- print("spellName",spellName == GetSpellInfo(332))
                        -- print("sourceName",sourceName)
                        -- print("destName",destName,"\n")
                        --print("ttt" ,sourceGUID) 
                     --  if(spellID==6948) then 
                              if combat_event == "SPELL_CAST_START"   and sourceGUID == UnitGUID("target")  then
                                   print(sourceName,spellName,"施法开始1\n")
                                   paTexture:SetColorTexture(0.9, 0.1, 0, 1)
                                   su_t1=GetTime() --延时开始
                                   su_t1Flag=true

                                   -- if combat_event ==  spellId==332 then
                                   -- -- spellName = GetSpellInfo(331)
                              
                                   --    print("施法332=",spellName)                                
                                   
                                   -- end
                              end   
                      --  end  
                         -- if combat_event == "SPELL_CAST_FAILED"   then 
                         --           print(spellName,"施法失败")
                         --           paTexture:SetColorTexture(0.9, 0.9, 0, 1)
                         -- end     
                         if combat_event == "SPELL_CAST_SUCCESS"    and sourceGUID == UnitGUID("target") then 
                                        print(spellName,"施法成功1   \n", "\n")
                                   paTexture:SetColorTexture(0.9, 0.9, 0, 1)
                                   su_t1Flag = false
                          end

                         if combat_event == "SPELL_CAST_FAILED" and sourceGUID == playerguid then
                             
                          --print("施法开始4")
                              if     (spellName == GetSpellInfo(331) or spellName == GetSpellInfo(8004) or
                                        spellName == GetSpellInfo(1064))
                               then
                                   zhiliaoclock = 3
                              end
                         end
                         
                         if combat_event == "SPELL_CAST_SUCCESS" and sourceGUID == playerguid then
                             
                          --print("施法开始1")
                              mp5StartTime = GetTime() + 5
                              zhiliaoclock = 3
                         end
                         if
                              combat_event == "SPELL_CAST_SUCCESS" and sourceGUID == playerguid and
                                   (spellName == GetSpellInfo(8835) or spellName == GetSpellInfo(16190) or
                                        spellName == GetSpellInfo(8075))
                                        
                          then
                              dszdelay(2)

                         end
                         if combat_event == "SPELL_CAST_SUCCESS" and sourceGUID == playerguid then
                          --print("施法开始2")
                              if
                                   (spellName == GetSpellInfo(8017) or spellName == GetSpellInfo(8024) or
                                        spellName == GetSpellInfo(8033) or
                                        spellName == GetSpellInfo(8032) or
                                        spellName == GetSpellInfo(8232))
                               then
                              end
                              if (spellName == GetSpellInfo(3599)) then
                                   zhuoreTimes = GetTime()
                              end
                              if (spellName == GetSpellInfo(8512)) then
                                   fengnututeng = GetTime()
                              end
                              if (spellName == GetSpellInfo(8160)) then
                                   liliangtuteng = GetTime()
                              end
                         elseif combat_event == "SPELL_CAST_SUCCESS" and sourceGUID == playerguid then
                         -- print("施法开始5")
                              shixueclock = 0
                              shixuetime = GetTime()
                         end
                    end
               end
          )
          runTime = runTime + inTimes
          if (runTime > 0.15 and inTimes < 0.3) then
               runTime = 0
               return onUpdateTimerFrame(self, inTimes)
          end
     end
)

attmode = "CGDT"  --常规单体
function setmode(mode)
     attmode = mode  --1-4，mode 参数
     mySprite()    --根据参数分析并打旗语
print("test")
end
 castTarget = "player"
 castTarget_fenggou = "player"
 mp5StartTime = GetTime()
 wowmagicBind =
      "/target raid1@/target raid2@/target raid3@/target raid4@/target raid5@/target raid6@/target raid7@/target raid8@1@/target raid9@/target raid10@/target raid11@/target raid12@/target raid13@/target raid14@/target raid15@/target raid16@/target raid17@/target raid18@/target raid19@/target raid20@/target raid21@/target raid22@/target raid23@/target raid24@/target raid25@/target player@/target party1@/target party2@/target party3@/target party4@/target focus@/target raid26@/target raid27@/target raid28@/target raid29@/target raid30@/target raid31@/target raid32@/target raid33@/target 66@/target raid34@/target raid35@/target raid36@/target raid37@/target raid38@/target raid39@/target raid40" ..
      "@/stopcasting@" ..
           "8004@/cast 331(level 2)@/cast 331(level 4)@/cast 331(level 6)@/cast 331(level 8)@/cast 331(level 9)@/cast 331(level 10)@/cast 1064(level 1)@/cast 1064(level 2)@/cast 1064(level 3)" ..
                "@526@2870@2893@/cast 331(level 11)@/cast 16188\n/cast 331@/s raid54@/s raid55@/s raid56@/s raid57@/s raid58"
 wowmagicBind_party =
      "/stopcasting\n/cast 774@339@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@/target player@/target party1@/target party2@/target party3@/target party4@/target focus@/target 331@/cast [target=focustarget]295373@/cast [target=focustarget]8921@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1@1"
 local oldbind = ""
 local btn_bind = {}
 function initParty(wowBind)
      setNums = 24
      macroindex = 0
      bindingLen = {strsplit("@", wowBind)}
      bindingLen_raid = {strsplit("@", wowmagicBind)}
      if (oldbind ~= bindingLen[1]) then
           oldbind = bindingLen[1]
      else
           return 0
      end
      while true do
           macroindex = macroindex + 1
           if (macroindex > #bindingLen) then
                break
           end
           if (bindingLen[macroindex] ~= nil) then
                thisMacro = bindingLen[macroindex]
               if ((macroindex + setNums) >= 73) then
                    thisMacro = bindingLen_raid[macroindex]
               end
               if (string.find(thisMacro, "/") == nil) then
                    thisMacro = GetSpellInfo(thisMacro)
                    thisMacro = "/cast " .. thisMacro
               else
                    aText = GetSpellInfo(331)
                    thisMacro = string.gsub(thisMacro, "331", aText)
                    aText = GetSpellInfo(1064)
                    thisMacro = string.gsub(thisMacro, "1064", aText)
                    aText = GetSpellInfo(16188)
                    thisMacro = string.gsub(thisMacro, "16188", aText)
                    aText = GetSpellInfo(2060)
                    thisMacro = string.gsub(thisMacro, "2060", aText)
                    aText = GetSpellInfo(5185)
                    thisMacro = string.gsub(thisMacro, "5185", aText)
                    levelName = "Rank"
                    if (GetLocale() == "zhCN") then
                         levelName = "等级"
                    elseif (GetLocale() == "zhTW") then
                         levelName = "等級"
                    else
                         levelName = "Rank"
                    end
                    thisMacro = string.gsub(thisMacro, "level", levelName)
               end
               if (btn_bind[macroindex] == nil) then
                    btn_bind[macroindex] =
                         CreateFrame(
                         "Button",
                         "wowshaoMacro" .. macroindex + setNums,
                         UIParent,
                         "SecureActionButtonTemplate"
                    )
               end
               if(macroindex==50) then
                    thisMacro="/cast 地震术"
               end
               
               btn_bind[macroindex]:SetAttribute("type", "macro")
               thisMacro = string.gsub(thisMacro, "##", "@")
               btn_bind[macroindex]:SetAttribute("macrotext", thisMacro)
               print(macroindex+ setNums,"--",thisMacro,"\n")
          end
     end
end
function seta(name)
     -- bindingLen = {strsplit("@", wowmagicBind)}
     -- macroindex = 0
     -- while true do
     --      macroindex = macroindex + 1
     --      if (bindingLen[macroindex] ~= nil) then
     --           if string.find(bindingLen[macroindex], "/target " .. name) ~= nil then
     --                if (macroindex < 8) then
     --                     return macroindex + 24
     --                else
     --                     return macroindex + 25
     --                end
     --           end
     --      else
     --           return 25
     --      end
     -- end
end
if (IsInRaid()) then
     initParty(wowmagicBind)
else
     initParty(wowmagicBind_party)
end
playerIndex_type = 7
playerIndex_name = "萨满"
playerTypes, _, ptype = UnitClass("player")
function padoit(arg1)
     if (ra) then
          if (ptype ~= playerIndex_type) then
               arg1 = 66
          end
          if (arg1 > 0) then
          end
          paTexture:SetColorTexture(tablec[arg1 * 2 + 1], tablec[arg1 * 2 + 2], 0, 1)
          if (arg1 > 0) then
               ra = false
          else
          end
     end
end
function pbdoit(arg1)
     pbTexture:SetColorTexture(tablec[arg1 * 2 + 1], tablec[arg1 * 2 + 2], 1, 1)
end
dszscript = ""
-------------？？？？？？？？？？？？？？？
function resetJinghuaMagic(jinghuaMagicID)
     thisMacro = GetSpellInfo(jinghuaMagicID)
     thisMacro = "/cast " .. thisMacro
     thisMacro = string.gsub(thisMacro, "##", "@")
     jinghuaButton:SetAttribute("macrotext", thisMacro)
end
if event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "PLAYER_TALENT_UPDATE" then
     updateTianfu()
end
local data = {}
local header = "talent"
local count = 1
----更新台符
function updateTianfu()
     count = 1
     for i = 1, 7 do
          for j = 1, 3 do
               local talentID, name, texture, selected, available, spellID, unknown, row, column, known, byRing =
                    GetTalentInfo(i, j, 1)
               if talentID and (known or byRing) then
                    data[count] = {
                         header = header,
                         name = name,
                         icon = texture,
                         count = count,
                         spellid = spellID,
                         description = GetSpellDescription(spellID),
                         ilvl = "|cFFbbbbbbT" .. i .. "|r",
                         changed = true,
                         show = true,
                         index = j
                    }
                    count = count + 1
               end
          end
     end
end
updateTianfu()
------？？？？？？？？？？？？？
function resetJinghua()
     if (UnitAffectingCombat("player") == false) then
          n_jinghuaType = 0
          n_jinghuaMagic = 0
          magicjinghuaID = 298357
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 1
          end
          magicjinghuaID = 295373
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 2
          end
          magicjinghuaID = 298452
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 3
          end
          magicjinghuaID = 295186
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 4
          end
          magicjinghuaID = 297108
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 5
          end
          magicjinghuaID = 295337
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 6
          end
          magicjinghuaID = 295840
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 7
          end
          magicjinghuaID = 302731
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 8
          end
          magicjinghuaID = 295258
          targetName = GetSpellInfo(magicjinghuaID)
          feifuName = GetSpellInfo(targetName)
          if feifuName == targetName then
               n_jinghuaMagic = magicjinghuaID
               n_jinghuaType = 9
          end
          if (n_jinghuaType ~= jinghuaType) then
               jinghuaType = n_jinghuaType
               jinghuaMagic = n_jinghuaMagic
               resetJinghuaMagic(jinghuaMagic)
          end
     end
end
nowTimes = 0
cloclTime = 0
huixuanboIndex = 0
inAttack = 0
delayTime = 0
function dszdelay(time)
     delayTime = GetTime() + time
end
--分析开战的信息并打旗语
function mySprite()
     
    
      if (GetTime() - su_t1>su_delay1 and su_t1Flag ==true ) then  --事件时间小于延时打旗语
      --if true then  --事件时间小于延时打旗语               
          --print ("现在定时",GetTime(),"--",su_t1)
          print(GetTime()-su_t1)
          print("\n")
                    paTexture:SetColorTexture(0.9, 0.9, 0, 1)
                su_t1Flag = false
         
            
       end


     --  ra = true
     --  if (GetTime() - delayTime < 0) then  --事件时间小于延时打旗语
     --       if (ra) then
     --            paTexture:SetColorTexture(0.03137248, 0.25097984, 0.03137248)
     --            paTexture:SetColorTexture(0.1, 0.9, 0, 1)
     --            ra = false
     --       end
     --        return
     --   end



     -- if (fenggouIndex == 1) then           --疯狗
     --      zhiliaoclock = 0
     -- end
     -- script = ""
     -- padoit(0)         --打0点旗语
     -- paTexture:SetColorTexture(0.9, 0.9, 0, 1)   --打a点
     -- pbTexture:SetColorTexture(0.1, 0.1, 0, 1)   --打b点
     -- _, isuse = GetSpellCooldown(190411)         --冷却
     -- shixueuse, shixuecd = GetSpellCooldown(23881)
     -- shixueuse = shixuecd - (GetTime() - shixueuse)
     -- shixueIndex = 0
     -- if (isuse >= shixueuse) then
     --      shixueIndex = 1
     -- end
     -- gcdTime = GetTime() - isuse 
     -- if (gcdTime < 0.5) then
     --      gcdTime = 0
     -- end
     -- tuteng_fengnu = 0
     -- tuteng_zhuore = 0
     -- kuaisuHps = 0.5
     -- zhiliaolianHps = 0.01
     -- zhiliaoNums = 0.01
     -- tuteng_liliang = 0
     -- magicuse_0 = 0
     -- magicuse_1 = 0
     -- magicuse_2 = 0
     -- magicuse_3 = 0
     -- zhiliaoHps = 0.5
     -- dizhenIndex = 0
     -- starNeed = 3
     -- zhengfaNums = 31884
     -- siwangzhiyuan = 0
     -- starNums = GetComboPoints("player", "target")
     -- if (W_BuffTimes(3, NA_Player, 209785) > 0) then
     --      starNeed = 2
     -- end
     -- targetName = GetSpellInfo(100130)
     -- feifuName = GetSpellInfo(targetName)
     -- if feifuName == targetName then
     --      magicuse_0 = 1
     -- end
     -- aoshuzhihui = 0
     -- hanbingjian = 0
     -- targetName = GetSpellInfo(1459)
     -- feifuName = GetSpellInfo(targetName)
     -- if feifuName == targetName then
     --      aoshuzhihui = 1
     -- end
     -- targetName = GetSpellInfo(116)
     -- feifuName = GetSpellInfo(targetName)
     -- if feifuName == targetName then
     --      hanbingjian = 1
     -- end
     -- hanbingjianIndex = 0
     -- attackstop = 1
     -- if (string.find(attmode, "-asp") ~= nil) then
     --      attackstop = 0
     -- end
     -- if (string.find(attmode, "-hbj") ~= nil) then
     --      hanbingjianIndex = 1
     -- end
     -- if (attackstop == 1) then
     --      if (startattack == true and UnitAffectingCombat("player") == false) then
     --           recheckHelpName()
     --           if (keyIndex < 60 and string.find(attmode, "-stop") == nil) then
     --                attmode = "-stop"
     --           else
     --                startattack = false
     --           end
     --           keyIndex = keyIndex + 1
     --      end
     -- end
     -- if (string.find(attmode, "-fzl") ~= nil) then
     --      if (GetTime() - nowTimes >= 10) then
     --           if (ra) then
     --                paTexture:SetColorTexture(0.86666476, 0.88235100, 0.01960780)
     --                ra = false
     --           end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --           if (GetTime() - nowTimes >= 12) then
     --                nowTimes = GetTime()
     --           end
     --      end
     --      if (ra) then
     --           paTexture:SetColorTexture(0.16078396, 0.74901796, 0.01568624)
     --           ra = false
     --      end
     -- end
     -- if (UnitAffectingCombat("player") == true) then
     --      inAttack = inAttack + 1
     --      startattack = UnitAffectingCombat("player")
     --      keyIndex = 0
     -- else
     --      if (inAttack > 0) then
     --           zhuoreTimes = 0
     --      end
     --      inAttack = 0
     -- end
     -- if (string.find(attmode, "-qxzr") ~= nil) then
     --      tuteng_zhuore = 1
     -- end
     -- if (string.find(attmode, "-qxfn") ~= nil) then
     --      tuteng_fengnu = 1
     -- end
     -- if (string.find(attmode, "-qxll") ~= nil) then
     --      tuteng_liliang = 1
     -- end
     -- if string.find(attmode, "-kshp") ~= nil then
     --      kuaisuHps =
     --           tonumber(string.sub(attmode, string.find(attmode, "-kshp") + 6, string.find(attmode, ")kshp") - 1))
     --      kuaisuHps = (kuaisuHps) / 100
     -- end
     -- if string.find(attmode, "-zlhp") ~= nil then
     --      zhiliaoHps =
     --           tonumber(string.sub(attmode, string.find(attmode, "-zlhp") + 6, string.find(attmode, ")zlhp") - 1))
     --      zhiliaoHps = (zhiliaoHps) / 100
     -- end
     -- if string.find(attmode, "-zllhp") ~= nil then
     --      zhiliaolianHps =
     --           tonumber(string.sub(attmode, string.find(attmode, "-zllhp") + 7, string.find(attmode, ")zllhp") - 1))
     --      zhiliaolianHps = (zhiliaolianHps) / 100
     -- end
     -- zhenjiIndex = 0
     -- shuchuType = 0
     -- mozhangIndex = 0
     -- shengmingHps = 0.05
     -- dotHps = 0.3
     -- xiqushengmingHps = 1.0
     -- if (string.find(attmode, "-zq") ~= nil) then
     --      shuchuType = 1
     -- end
     -- if (string.find(attmode, "-bs") ~= nil) then
     --      zhenjiIndex = 1
     -- end
     -- if (string.find(attmode, "-qxzj") ~= nil) then
     --      zhenjiIndex = 99
     -- end
     -- if string.find(attmode, "-fl") ~= nil then
     --      shengmingHps = tonumber(string.sub(attmode, string.find(attmode, "-fl") + 4, string.find(attmode, ")fl") - 1))
     --      shengmingHps = (shengmingHps) / 100
     -- end
     -- if
     --      ((GetItemCount(8079) > 20 or GetItemCount(8078) > 20 or GetItemCount(8077) > 20) and
     --           UnitIsDead("player") == false and
     --           UnitLevel("player") >= 45)
     --  then
     --      if (heshuitype == 1 and heshuiNums ~= 0) then
     --           playerAffectheshui_now = UnitAffectingCombat("player")
     --           if
     --                (playerAffectheshui_now == false and G_GetMoveed("player") == false and playerAffectheshui == true and
     --                     W_PowerLevel("player") <= heshuiNums / 100 and
     --                     G_BuffTimes_name_alluser("player", GetSpellInfo(1133)) == 0)
     --            then
     --                if (ra) then
     --                     paTexture:SetColorTexture(0.54901840, 0.75293952, 0.00784312)
     --                     ra = false
     --                end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --           end
     --           if (UnitAffectingCombat("player") == true) then
     --                playerAffectheshui = UnitAffectingCombat("player")
     --           end
     --           if (G_BuffTimes_name_alluser("player", GetSpellInfo(1133)) > 0) then
     --                playerAffectheshui = false
     --           end
     --      end
     --      power_nowpower = UnitPower("player")
     --      if (power_nowpower > power_oldpower + 1) then
     --           power_powertime = GetTime()
     --      end
     --      power_oldpower = power_nowpower
     --      if
     --           (G_GetMoveed("player") == true and G_BuffTimes_name_alluser("player", GetSpellInfo(1133)) == 0 and
     --                GetTime() - power_powertime > 1.5 and
     --                GetTime() - power_powertime < 2 and
     --                heshuitype == 1 and
     --                string.find(attmode, "-stop") == nil and
     --                W_PowerLevel("player") < 0.95)
     --       then
     --           if (ra) then
     --                paTexture:SetColorTexture(0.99607624, 0.11372524, 0.00392156)
     --                ra = false
     --           end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --      end
     -- end
     -- if string.find(attmode, "-stop") ~= nil then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.25882296, 0.90195880, 0.02745092)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if string.find(attmode, "-mz") ~= nil then
     --      mozhangIndex = 1
     -- end
     -- baofaIndex = 0
     -- dantiIndex = 0
     -- if string.find(attmode, "爆发单体") ~= nil or string.find(attmode, "BFDT") ~= nil then
     --      baofaIndex = 1
     --      dantiIndex = 1
     -- else
     --      if string.find(attmode, "爆发AOE") ~= nil or string.find(attmode, "BFAOE") ~= nil then
     --           baofaIndex = 1
     --      else
     --           if string.find(attmode, "常规AOE") ~= nil or string.find(attmode, "CGAOE") ~= nil then
     --           else
     --                if string.find(attmode, "常规单体") ~= nil or string.find(attmode, "CGDT") ~= nil then
     --                     dantiIndex = 1
     --                end
     --           end
     --      end
     -- end
     -- oldtype = fumoType
     -- _, _, _, fumoType = GetWeaponEnchantInfo()
     -- if fumoType == nil then
     --      fumoType = 0
     -- end
     -- if fumoType == 523 or fumoType == 5 or fumoType == 4 or fumoType == 3 or fumoType == 1665 or fumoType == 1666 then
     --      fumoType = 1
     -- end
     -- if fumoType == 524 or fumoType == 2 or fumoType == 12 or fumoType == 1667 or fumoType == 1668 then
     --      fumoType = 2
     -- end
     -- if fumoType == 6 or fumoType == 29 or fumoType == 503 or fumoType == 1663 or fumoType == 683 or fumoType == 1664 then
     --      fumoType = 3
     -- end
     -- if fumoType == 283 or fumoType == 284 or fumoType == 563 or fumoType == 564 or fumoType == 525 or fumoType == 1669 then
     --      fumoType = 4
     -- end
     -- fumotime = GetTime()
     -- if (fumoType ~= oldtype) then
     --      nowfumotime = GetTime()
     -- end
     -- teamIndex = isTeam()
     -- zhiliaoIndex = 0
     -- if (IsInRaid()) then
     --      initParty(wowmagicBind)
     -- else
     --      initParty(wowmagicBind_party)
     -- end
     -- if string.find(attmode, "-zl") ~= nil then
     --      zhiliaoIndex = 1
     -- end
     -- mp5Set = 0
     -- if string.find(attmode, "-mp") ~= nil then
     --      mp5Set = 1
     -- end
     -- mpHps = 0.5
     -- if string.find(attmode, "-smp") ~= nil then
     --      mpHps = tonumber(string.sub(attmode, string.find(attmode, "-smp") + 5, string.find(attmode, ")smp") - 1))
     --      mpHps = (mpHps) / 100
     -- end
     -- mp5now = GetTime() - mp5StartTime
     -- if (zhiliaoclock > 0 and GetTime() - zhiliaoclock >= 5 and zhiliaoclock > 100) then
     --      zhiliaoclock = 0
     -- end
     -- if (zhiliaoclock > 0 and zhiliaoclock < 100) then
     --      zhiliaoclock = zhiliaoclock - 1
     -- end
     -- if (G_GetMoveed("player") == true) then
     --      zhiliaoclock = 0
     -- end
     -- if (zhiliaoIndex == 1) then
     --      hpPlyaers = 0
     --      magiccheckrange = 331
     --      qusanMagic = 526
     --      playerLevel = UnitLevel("player")
     --      target_default = "player"
     --      targethp = 1
     --      target_hp = 1
     --      qusanSet = 0
     --      qusanIndex = 0
     --      target_id = "player"
     --      zhinengIndex = 0
     --      magicType = 0
     --      if string.find(attmode, "-qxqs") ~= nil then
     --           qusanSet = 1
     --      end
     --      if string.find(attmode, "-zn") ~= nil then
     --           zhinengIndex = 1
     --      end
     --      teamIndex = isTeam()
     --      if (teamIndex == 1) then
     --           for i = 1, 5, 1 do
     --                targethpNums = 0
     --                targetname = "party" .. i - 1
     --                if (i == 1) then
     --                     targetname = "player"
     --                end
     --                if (UnitName(target_default) == UnitName(targetname)) then
     --                     target_default = targetname
     --                end
     --                targethp = W_HPlevel_heal(targetname)
     --                if
     --                     (IsSpellInRange(GetSpellInfo(magiccheckrange), targetname) == 1 and
     --                          (checkHelpName(UnitName(targetname)) == false or string.find(attmode, "-qxjc") ~= nil))
     --                 then
     --                     if (qusanSet == 0 and G_GetSpellCD(qusanMagic) <= 0.2) then
     --                          magicType, magicqusanID = NA_CheckDebuff(targetname)
     --                          if (magicType == 3 or magicType == 2) then
     --                               target_id = targetname
     --                               qusanIndex = 1
     --                               break
     --                          end
     --                     end
     --                     targethpNums = UnitHealth(targetname)
     --                     if (targethp > 0) then
     --                          if
     --                               (targethp <= target_hp and targethpNums > 1 and
     --                                    ((targethp <= zhiliaolianHps) or (targethp < zhiliaoHps) or
     --                                         (targethp < kuaisuHps)))
     --                           then
     --                               target_hp = targethp
     --                               target_id = targetname
     --                          end
     --                     end
     --                end
     --           end
     --      else
     --           if (teamIndex == 2) then
     --                for i = 1, 40, 1 do
     --                     continue = 0
     --                     if (raidcheck[i] == 0 and kaiguancheck == 1) then
     --                          continue = 1
     --                     end
     --                     if (string.find(attmode, "-bmd") ~= nil) then
     --                          continue = 0
     --                     end
     --                     if (continue == 0) then
     --                          targetname = "raid" .. i
     --                          targethp = W_HPlevel_heal(targetname)
     --                          raidDebuffNext = 0
     --                          if (raidDebuffNext == 0) then
     --                               if (UnitName(target_default) == UnitName(targetname)) then
     --                                    target_default = targetname
     --                               end
     --                               if
     --                                    (IsSpellInRange(GetSpellInfo(magiccheckrange), targetname) == 1 and
     --                                         (checkHelpName(UnitName(targetname)) == false or
     --                                              string.find(attmode, "-qxjc") ~= nil))
     --                                then
     --                                    if (qusanSet == 0 and G_GetSpellCD(qusanMagic) <= 0.2) then
     --                                         magicType, magicqusanID = NA_CheckDebuff(targetname)
     --                                         if (magicType == 3 or magicType == 2) then
     --                                              target_id = targetname
     --                                              qusanIndex = 1
     --                                              break
     --                                         end
     --                                    end
     --                                    targethpNums = UnitHealth(targetname)
     --                                    if (targethp > 0) then
     --                                         if
     --                                              (targethp <= target_hp and targethpNums > 1 and
     --                                                   (fenggouIndex == 0 or
     --                                                        ((UnitName(targetname) ~= castTarget or
     --                                                             (UnitName(targetname) == castTarget and
     --                                                                  W_HPlevel(castTarget) < 0.9)) or
     --                                                             castTarget == UnitName("player")) and
     --                                                             fenggouIndex == 1) and
     --                                                   ((targethp <= zhiliaolianHps) or (targethp < zhiliaoHps) or
     --                                                        (targethp < kuaisuHps)))
     --                                          then
     --                                              target_hp = targethp
     --                                              target_id = targetname
     --                                         end
     --                                    end
     --                               end
     --                          end
     --                     end
     --                end
     --           end
     --      end
     --      if (W_HPlevel(target_id) == 1 and qusanIndex == 0) then
     --           target_id = target_default
     --           if (qusanSet == 0 and G_GetSpellCD(qusanMagic) <= 0.2) then
     --                magicType, magicqusanID = NA_CheckDebuff(target_id)
     --                if (magicType == 3 or magicType == 2) then
     --                     qusanIndex = 1
     --                end
     --           end
     --      end
     --      targetIndex = seta(target_id)
     --      if (UnitName("target") == UnitName(target_id) or zhinengIndex == 0) then
     --           nowTank = 0
     --           if (UnitName("target") == UnitName("targettargettarget") and UnitName("target") ~= UnitName("player")) then
     --                nowTank = 1
     --           end
     --           targethps = W_HPlevel("target")
     --           if (castTarget == nil) then
     --                castTarget = "player"
     --           end
     --           castTargethps = W_HPlevel(castTarget)
     --           test = 1
     --           targetHpsNums = (UnitHealthMax("target") * zhiliaoHps) - W_HP("target")
     --           if (targetHpsNums < 0) then
     --                targetHpsNums = 0
     --           end
     --           if (qusanSet == 0 and zhinengIndex == 0) then
     --                qusanIndex = 0
     --           end
     --           if
     --                (GetTime() - fenggouzhiliaoclock >= 0.3 and (GetTime() - GetSpellCooldown(526)) > 0.3 and
     --                     (GetTime() - GetSpellCooldown(526)) < 2 and
     --                     fenggouIndex == 1)
     --            then
     --                fenggou_castTargethps = W_HPlevel(castTarget_fenggou)
     --                if (castTargethps >= 0.95 and string.find(attmode, "-qxgl") == nil) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.58431244, 0.19607800, 0.02352936)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                end
     --           end
     --           if (GetTime() - zhiliaoclock >= 1 and zhiliaoclock > 100) then
     --                if (castTargethps >= 0.95 and string.find(attmode, "-qxgl") == nil) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.05882340, 0.76470420, 0.00392156)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                end
     --           end
     --           if (qusanSet == 0 and qusanIndex == 0 and zhinengIndex == 0) then
     --                magicType, magicqusanID = NA_CheckDebuff("target")
     --                if ((magicType == 3 or magicType == 2) and (UnitCanAttack("target", "player") == false)) then
     --                     qusanIndex = 1
     --                end
     --           end
     --           if (UnitAffectingCombat("player") == true) then
     --                if
     --                     (G_BuffTimes_name(NA_Player, GetSpellInfo(5677)) == 0 and
     --                          G_BuffTimes_name(NA_Player, GetSpellInfo(17360)) == 0 and
     --                          string.find(attmode, "-ttfl") ~= nil)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.56470464, 0.31764636, 0.02352936)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                end
     --                if (string.find(attmode, "-ttfn") ~= nil) then
     --                     if (castMagic(8512) == true and fumoType == 0) then
     --                          if (ra) then
     --                               paTexture:SetColorTexture(0.33333260, 0.48235188, 0.00392156)
     --                               ra = false
     --                          end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     end
     --                end
     --                if (string.find(attmode, "-ttyy") ~= nil) then
     --                     if (castMagic(8835) == true and G_BuffTimes_name(NA_Player, GetSpellInfo(8836)) == 0) then
     --                          if (ra) then
     --                               paTexture:SetColorTexture(0.89019412, 0.87842944, 0.01176468)
     --                               ra = false
     --                          end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     end
     --                end
     --                if (string.find(attmode, "-ttll") ~= nil) then
     --                     if (castMagic(8160) == true and G_BuffTimes_name(NA_Player, GetSpellInfo(8162)) == 0) then
     --                          if (ra) then
     --                               paTexture:SetColorTexture(0.98823312, 0.38039132, 0.01960780)
     --                               ra = false
     --                          end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     end
     --                end
     --           end
     --           if (qusanIndex == 1) then
     --                if (castMagic(526) == true and magicType == 3) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.93333128, 0.67450832, 0.00392156)
     --                          ra = false
     --                     end
     --                end
     --                if (castMagic(2870) == true and magicType == 2) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.69019456, 0.41176380, 0.00392156)
     --                          ra = false
     --                     end
     --                end
     --           end
     --           if (targethps < 0) then
     --                targethps = 1.1
     --           end
     --           daxunjieHps = 0
     --           if string.find(attmode, "-xj") ~= nil then
     --                daxunjieHps =
     --                     tonumber(string.sub(attmode, string.find(attmode, "-xj") + 4, string.find(attmode, ")xj") - 1))
     --                daxunjieHps = (daxunjieHps) / 100
     --                if
     --                     (W_HPlevel_heal("target") <= daxunjieHps and castMagic(25357) == true and
     --                          UnitAffectingCombat("player") == true and
     --                          castMagic(16188) == true and
     --                          spellIsUse(16188) == 1 and
     --                          UnitIsPlayer("target") == true and
     --                          UnitIsFriend("player", "target") == true)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.21568580, 0.73725328, 0.01176468)
     --                          ra = false
     --                     end
     --                end
     --           end
     --           if (mp5now < 1.5 and zhinengIndex == 1 and mp5Set == 1 and targethps >= mpHps) then
     --                if (ra) then
     --                     paTexture:SetColorTexture(0.87058632, 0.73333172, 0.02745092)
     --                     ra = false
     --                end
     --           end
     --           if (UnitExists("target") == false or UnitIsFriend("player", "target") == false) then
     --                if (ra) then
     --                     paTexture:SetColorTexture(0.83921384, 0.05098028, 0.03137248)
     --                     ra = false
     --                end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --           end
     --           if ((test == 0 or castMagic(8004) == true) and zhiliaoclock == 0 and targethps < kuaisuHps) then
     --                if (ra) then
     --                     paTexture:SetColorTexture(0.58039088, 0.34901884, 0.03137248)
     --                     ra = false
     --                end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --           end
     --           zhiliaolianLevel = 0
     --           _, _, _, _, _, _, zhiliaoMagic = GetSpellInfo(GetSpellInfo(1064))
     --           if (zhiliaoMagic == nil) then
     --                zhiliaolianLevel = 0
     --           end
     --           if (zhiliaoMagic == 1064) then
     --                zhiliaolianLevel = 1
     --           end
     --           if (zhiliaoMagic == 10622) then
     --                zhiliaolianLevel = 2
     --           end
     --           if (zhiliaoMagic == 10623) then
     --                zhiliaolianLevel = 3
     --           end
     --           if string.find(attmode, "-lvlz") ~= nil then
     --                zhiliaolianLevel =
     --                     tonumber(
     --                     string.sub(attmode, string.find(attmode, "-lvlz") + 6, string.find(attmode, ")lvlz") - 1)
     --                )
     --           end
     --           if
     --                ((test == 0 or castMagic(1064) == true) and zhiliaoclock == 0 and
     --                     string.find(attmode, "-gdlz") ~= nil and
     --                     targethps < zhiliaolianHps)
     --            then
     --                targetzhiliaolianNums = (UnitHealthMax("target")) - W_HP("target")
     --                if (targetzhiliaolianNums < 0) then
     --                     targetzhiliaolianNums = 0
     --                end
     --                targethp = 550
     --                if
     --                     (targetzhiliaolianNums > targethp and castMagic(10623) == true and playerLevel >= 54 and
     --                          zhiliaolianLevel == 3)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.13333304, 0.95293908, 0.01176468)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 466
     --                if
     --                     (targetzhiliaolianNums > targethp and castMagic(10622) == true and playerLevel >= 46 and
     --                          zhiliaolianLevel == 2)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.19607800, 0.69803768, 0.00784312)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 320
     --                if
     --                     (targetzhiliaolianNums > targethp and castMagic(1064) == true and playerLevel >= 40 and
     --                          zhiliaolianLevel == 1)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.25882296, 0.74901796, 0.01176468)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --           end
     --           if
     --                ((test == 0 or castMagic(1064) == true) and zhiliaoclock == 0 and
     --                     string.find(attmode, "-gdlz") == nil and
     --                     targethps < zhiliaolianHps)
     --            then
     --                targetzhiliaolianNums = (UnitHealthMax("target")) - W_HP("target")
     --                if (targetzhiliaolianNums < 0) then
     --                     targetzhiliaolianNums = 0
     --                end
     --                otherHealing = GetSpellBonusHealing() * 1.0
     --                targethp = 550 + otherHealing
     --                if
     --                     (targetzhiliaolianNums > targethp and castMagic(10623) == true and playerLevel >= 54 and
     --                          zhiliaolianLevel >= 3)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.81960604, 0.81568448, 0.01568624)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                otherHealing = GetSpellBonusHealing() * 0.6
     --                targethp = 466 + otherHealing
     --                if
     --                     (targetzhiliaolianNums > targethp and castMagic(10622) == true and playerLevel >= 46 and
     --                          zhiliaolianLevel >= 2)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.10980368, 0.91764504, 0.01176468)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 320 + otherHealing * 0.3
     --                if
     --                     (targetzhiliaolianNums > targethp and castMagic(1064) == true and playerLevel >= 40 and
     --                          zhiliaolianLevel >= 1)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.29411700, 0.29411700, 0.00392156)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --           end
     --           zhiliaoTypes = 0
     --           zhiliaoLevel = 10
     --           _, _, _, _, _, _, zhiliaoMagic = GetSpellInfo(GetSpellInfo(332))
     --           if (zhiliaoMagic == 332 or zhiliaoMagic == 331 or zhiliaoMagic == 547) then
     --                zhiliaoLevel = 2
     --           end
     --           if (zhiliaoMagic == 913 or zhiliaoMagic == 939) then
     --                zhiliaoLevel = 4
     --           end
     --           if (zhiliaoMagic == 959 or zhiliaoMagic == 8005) then
     --                zhiliaoLevel = 6
     --           end
     --           if (zhiliaoMagic == 10395) then
     --                zhiliaoLevel = 8
     --           end
     --           if (zhiliaoMagic == 10396) then
     --                zhiliaoLevel = 9
     --           end
     --           if (zhiliaoMagic == 25237) then
     --                zhiliaoLevel = 10
     --           end
     --           if string.find(attmode, "-lvzl") ~= nil then
     --                zhiliaoLevel =
     --                     tonumber(
     --                     string.sub(attmode, string.find(attmode, "-lvzl") + 6, string.find(attmode, ")lvzl") - 1)
     --                )
     --           end
     --           if (zhiliaoclock == 0) then
     --                casthps = 0
     --           end
     --           if ((test == 0 or castMagic(331) == true) and zhiliaoclock == 0) then
     --                targethp = 1620
     --                otherHealing = GetSpellBonusHealing()
     --                targethp = 1620 + otherHealing * 1.0
     --                if
     --                     (targetHpsNums > targethp and castMagic(25357) == true and playerLevel >= 60 and
     --                          zhiliaoLevel >= 10)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.61960648, 0.49803812, 0.01568624)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 1367 + otherHealing * 1.0
     --                if
     --                     (targetHpsNums > targethp and castMagic(10396) == true and playerLevel >= 56 and
     --                          zhiliaoLevel >= 9)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.36078352, 0.25097984, 0.01960780)
     --                          ra = false
     --                     end
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 1017 + otherHealing * 0.8
     --                if
     --                     (targetHpsNums > targethp and castMagic(10395) == true and playerLevel >= 48 and
     --                          zhiliaoLevel >= 8)
     --                 then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.74901796, 0.04313716, 0.03529404)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 536 + otherHealing * 0.6
     --                if (targetHpsNums > targethp and castMagic(959) == true and playerLevel >= 32 and zhiliaoLevel >= 6) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.01568624, 0.39999912, 0.02745092)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 268 + otherHealing * 0.5
     --                if (targetHpsNums > targethp and castMagic(913) == true and playerLevel >= 18 and zhiliaoLevel >= 4) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.47058720, 0.70588080, 0.00784312)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --                targethp = 69 + otherHealing * 0.3
     --                if (targetHpsNums > targethp and castMagic(332) == true and playerLevel >= 6 and zhiliaoLevel >= 2) then
     --                     if (ra) then
     --                          paTexture:SetColorTexture(0.10980368, 0.67842988, 0.03529404)
     --                          ra = false
     --                     end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --                     if (casthps == 0) then
     --                          casthps = targethp
     --                     end
     --                end
     --           end
     --      else
     --           padoit(targetIndex)
     --      end
     --      if (ra) then
     --           paTexture:SetColorTexture(0.63921428, 0.42745004, 0.00784312)
     --           ra = false
     --      end
     -- end
     -- if (UnitAffectingCombat("player") == false) then
     --      zhuoreTimes = 0
     --      fengnututeng = 0
     -- end
     -- if (start_attack() == 0) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.56078308, 0.35294040, 0.01568624)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (castMagic(8004) == true and W_HPlevel("player") <= kuaisuHps) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.52548904, 0.29803856, 0.02352936)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (castMagic(331) == true and W_HPlevel("player") <= zhiliaoNums) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.94901752, 0.71372392, 0.00392156)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (string.find(attmode, "-qxfm") == nil) then
     --      if (castMagic(8024) == true and shuchuType == 0 and fumoType ~= 1) then
     --           if (ra) then
     --                paTexture:SetColorTexture(0.19607800, 0.11372524, 0.00784312)
     --                ra = false
     --           end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --      end
     --      if (castMagic(8232, 0) == true and teamIndex > 0 and shuchuType == 1 and (fumoType == 1 or fumoType == 2)) then
     --           if (ra) then
     --                paTexture:SetColorTexture(0.12548992, 0.36078352, 0.00392156)
     --                ra = false
     --           end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --      end
     --      if (teamIndex == 0) then
     --           if (castMagic(8232, 0) == true and shuchuType == 1 and fumoType ~= 4) then
     --                if (ra) then
     --                     paTexture:SetColorTexture(0.10980368, 0.66666520, 0.02745092)
     --                     ra = false
     --                end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --           end
     --           if
     --                (castMagic(8017) == true and IsUsableSpell(8232) == false and shuchuType == 1 and
     --                     (fumoType == 0 or fumoType == 1 or fumoType == 2))
     --            then
     --                if (ra) then
     --                     paTexture:SetColorTexture(0.74509640, 0.30588168, 0.03137248)
     --                     ra = false
     --                end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --           end
     --      end
     -- end
     -- if (castMagic(324, 0) == true and string.find(attmode, "-qxhd") == nil) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.44705784, 0.78431200, 0.03529404)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(1535) == true and string.find(attmode, "-qxxx") == nil and baofaIndex == 1 and dantiIndex == 0 and
     --           CheckInteractDistance("target", 3) == true)
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.34117572, 0.00000000, 0.01960780)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(8050, 1) == true and string.find(attmode, "-qxly") == nil and zhenjiIndex == 0 and
     --           W_HPlevel("target") >= 0.3 and
     --           IsSpellInRange(GetSpellInfo(8050), "target") == 1 and
     --           (UnitAffectingCombat("player") == true or shuchuType ~= 0))
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.06274496, 0.12548992, 0.00000000)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(8835) == true and G_BuffTimes_name(NA_Player, GetSpellInfo(8836)) == 0 and teamIndex == 0 and
     --           string.find(attmode, "-qxyy") == nil and
     --           shuchuType == 1 and
     --           W_HPlevel("target") >= 0.3 and
     --           UnitAffectingCombat("player") == true and
     --           CheckInteractDistance("target", 3) == true)
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.03529404, 0.58823400, 0.00784312)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(8512) == true and teamIndex > 0 and tuteng_fengnu == 0 and shuchuType == 1 and
     --           W_HPlevel("target") >= 0.3 and
     --           fumoType == 0 and
     --           UnitAffectingCombat("player") == true and
     --           CheckInteractDistance("target", 3) == true)
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.33333260, 0.48235188, 0.00392156)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(3599) == true and tuteng_zhuore == 0 and shuchuType == 1 and W_HPlevel("target") >= 0.7 and
     --           GetTime() - zhuoreTimes >= 25 and
     --           UnitAffectingCombat("player") == true and
     --           CheckInteractDistance("target", 3) == true)
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.07058808, 0.46666564, 0.01568624)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(8160) == true and tuteng_liliang == 0 and G_BuffTimes_name(NA_Player, GetSpellInfo(8162)) == 0 and
     --           shuchuType == 1 and
     --           W_HPlevel("target") >= 0.7 and
     --           UnitAffectingCombat("player") == true and
     --           CheckInteractDistance("target", 3) == true)
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.83921384, 0.38823444, 0.00784312)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (castMagic(17364) == true and shuchuType == 1 and dantiIndex == 1) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.60784180, 0.32548948, 0.02745092)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if
     --      (castMagic(8056) == true and string.find(attmode, "-qxbs") == nil and
     --           IsSpellInRange(GetSpellInfo(8056), "target") == 1 and
     --           zhenjiIndex == 1)
     --  then
     --      if (string.find(attmode, "-djbs") == nil) then
     --           if (ra) then
     --                paTexture:SetColorTexture(0.27450920, 0.50588124, 0.01568624)
     --                ra = false
     --           end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --      else
     --           if (ra) then
     --                paTexture:SetColorTexture(0.94901752, 0.38431288, 0.00784312)
     --                ra = false
     --           end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     --      end
     -- end
     -- if
     --      (castMagic(8042) == true and string.find(attmode, "-qxdz") == nil and
     --           IsSpellInRange(GetSpellInfo(8042), "target") == 1 and
     --           zhenjiIndex == 0)
     --  then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.54901840, 0.06274496, 0.01568624)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (castMagic(421) == true and shuchuType == 0 and dantiIndex == 0) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.09411744, 0.19215644, 0.01960780)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (castMagic(403) == true and shuchuType == 0) then
     --      if (ra) then
     --           paTexture:SetColorTexture(0.97646844, 0.79999824, 0.02745092)
     --           ra = false
     --      end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
     -- end
     -- if (ra) then
     --      paTexture:SetColorTexture(0.54901840, 0.62744960, 0.03137248)
     --      ra = false
     -- end --[[00000000-0000-0000-0000-4CCC6A24A4EA]]
end
function isTeam()
     if (UnitInParty("player") == true) then
          if UnitInRaid("player") then
               if (UnitInRaid("player") >= 1) then
                    return 2
               end
          else
               return 1
          end
     end
     return 0
end
function castMagic(spellID, castplayer)
     if (spellIsUse(spellID) == 1 and IsUsableSpell(spellID) == true and G_GetSpellCD(spellID) < 0.2) then
          if (castplayer ~= nil) then
               cIndex = false
               if (castplayer == 0) then
                    if (G_BuffTimes_name(NA_Player, GetSpellInfo(spellID)) == 0) then
                         cIndex = true
                    end
               else
                    if (castplayer == 1) then
                         if (G_DeBuffTimes_name(NA_Target, GetSpellInfo(spellID)) == 0) then
                              cIndex = true
                         end
                    else
                         if (castplayer == 2) then
                              if (G_DeBuffTimes_name(NA_Player, GetSpellInfo(spellID)) == 0) then
                                   cIndex = true
                              end
                         else
                              if (castplayer == 3) then
                                   if (G_BuffTimes_name(NA_Target, GetSpellInfo(spellID)) == 0) then
                                        cIndex = true
                                   end
                              end
                         end
                    end
               end
               return cIndex
          end
          return true
     end
     return false
end
function spellIsUse(spellID)
     index = 0
     targetName = GetSpellInfo(spellID)
     feifuName = GetSpellInfo(targetName)
     if feifuName == targetName then
          index = 1
     end
     return index
end
--更新窗口式调用
function onUpdateTimerFrame(self, inTimes)
     mySprite()
   --  padoit(198)
     RunScript(script)
end
function getshowMagic_bfbs(Unit, Interrupt)
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
          c, _, _, sTime, tTime, bsz, i = UnitCastingInfo(Unit)
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
          c, _, _, sTime, tTime, bsz, i = UnitChannelInfo(Unit)
          if c then
               lTime = tTime - sTime
               nTime = nTime - sTime
               sz = 1 - (nTime / lTime)
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
-- pIndexText = 0
-- pW = 20
-- ph = 20
-- pX = 0
-- pY = 0
-- pa = CreateFrame("Frame", nil, UIParent)
-- pa:SetFrameStrata("TOOLTIP")
-- pa:SetWidth(pW)
-- pa:SetHeight(ph)
-- pa:SetPoint("TOPLEFT", pX, pY)
-- paTexture = pa:CreateTexture(nil, "TOOLTIP")
-- paTexture:SetPoint("LEFT", 0, 0)
-- paTexture:SetColorTexture(0.9, 0.9, 0, 1)
-- paTexture:SetWidth(pW)
-- paTexture:SetHeight(ph)
-- paTexture:Show()
-- pIndexText = 1
-- pb = CreateFrame("Frame", nil, UIParent)
-- pb:SetFrameStrata("TOOLTIP")
-- pb:SetWidth(pW)
-- pb:SetHeight(ph)
-- pb:SetPoint("TOPLEFT", pX + pW, pY)
-- pbTexture = pb:CreateTexture(nil, "TOOLTIP")
-- pbTexture:SetPoint("LEFT", 0, 0)
-- pbTexture:SetColorTexture(0.9, 0.9, 0, 1)
-- pbTexture:SetWidth(pW)
-- pbTexture:SetHeight(ph)
-- pbTexture:Show()
------------------------------------------------------------------------下面5个宏按钮部分
-- function DSZHELP(index, check)
--      macroType = false
--      if (index == nil) then
--           index = 0
--      end
--      if (check == nil) then
--           check = 0
--      end
--      if (index == 1) then
--           macroType = true
--      end
--      button_1 = "BFAOE"
--      button_2 = "BFDT"
--      button_3 = "CGDT"
--      button_4 = "CGAOE"
--      button_5 = "STOP"
--      button_txt_1 = '/run setmode("-BFAOE")'
--      button_txt_2 = '/run setmode("-CGDT")'
--      button_txt_3 = '/startattack\n/run setmode("-CGDT -zq -qxzr -qxll")'
--      button_txt_4 = '/startattack\n/run setmode("-CGAOE -zq")'
--      button_txt_5 = '/run setmode("-stop")'
--      button_icon_1 = "136049"
--      button_icon_2 = "136048"
--      button_icon_3 = "136086"
--      button_icon_4 = "136086"
--      button_icon_5 = "134478"
--      button_tips_1 = "delete"
--      button_tips_2 = "cancel"
--      button_tips_3 = "ok"
--      button_tips_txt =
--           "Your number of macros is full. Please select ESC-macro command settings. At least 10 macros, call this command again."
--      button_finish_txt = "Created successfully Wish you a pleasant game."
--      if (GetLocale() == "zhCN") then
--           button_1 = "元素群体"
--           button_2 = "元素单体"
--           button_3 = "增强单体"
--           button_4 = "增强单体"
--           button_5 = "停止"
--           button_tips_1 = "快速删除"
--           button_tips_2 = "取消"
--           button_tips_txt = "您的宏数量已满，请选择ESC-宏命令设置。至少10个宏，再调用此命令。"
--           button_tips_3 = "确定"
--           button_finish_txt =
--                "宏已创建成功。祝您游戏愉快。\n第一页按键功能：\n1：智能查找目标使用治疗链（默认根据血量使用对应等级）\n2：智能查找目标使用治疗波（根据血量使用对应等级）\n3：智能查找目标使用满级次级治疗波\n4：刷当前选择目标使用。\n5：停止自动\n**********************\n第二页按键功能（shift+2切换）：\n1:元素群体攻击\n2:元素单体攻击\n3:增强输出\n4:治疗目标\n**********************"
--      end
--      macroIn = 0
--      macroNums = 0
--      if (check == 0) then
--           for i = 1, MAX_ACCOUNT_MACROS + MAX_CHARACTER_MACROS do
--                local name, _, body = GetMacroInfo(i)
--                if name then
--                     macroNums = macroNums + 1
--                end
--           end
--           if (macroNums >= MAX_ACCOUNT_MACROS) then
--                StaticPopupDialogs["WOWSHAOTIPS"] = {
--                     button1 = button_tips_1,
--                     button2 = button_tips_2,
--                     OnAccept = function()
--                          for i = 1, 10 do
--                               DeleteMacro(i)
--                          end
--                          DSZHELP(index, 1)
--                     end
--                }
--                StaticPopupDialogs["WOWSHAOTIPS"].text = button_tips_txt
--                StaticPopup_Show("WOWSHAOTIPS")
--                macroIn = 1
--           end
--      end
--      if (macroIn == 0) then
--           DeleteMacro(button_1)
--           DeleteMacro(button_2)
--           DeleteMacro(button_3)
--           DeleteMacro(button_4)
--           DeleteMacro(button_5)
--           CreateMacro(button_1, button_icon_1, button_txt_1, macroType)
--           CreateMacro(button_2, button_icon_2, button_txt_2, macroType)
--           CreateMacro(button_3, button_icon_3, button_txt_3, macroType)
--           CreateMacro(button_4, button_icon_4, button_txt_4, macroType)
--           CreateMacro(button_5, button_icon_5, button_txt_5, macroType)
--           PickupMacro(button_1)
--           PlaceAction("13")
--           PickupMacro(button_2)
--           PlaceAction("14")
--           PickupMacro(button_3)
--           PlaceAction("15")
--           PickupMacro(button_5)
--           PlaceAction("17")
--           StaticPopupDialogs["WOWSHAOTIPS_FINISH"] = {button1 = button_tips_3, OnAccept = function()
--                end}
--           StaticPopupDialogs["WOWSHAOTIPS_FINISH"].text = button_finish_txt
--           StaticPopup_Show("WOWSHAOTIPS_FINISH")
--      end
--      button_txt = "智能团刷"
--      DeleteMacro(button_txt)
--      CreateMacro(
--           button_txt,
--           "136042",
--           '/run setmode("-CGDT -zl -xj(20)xj -zn -lvlz(3)lvlz -kshp(1)kshp -qxgl -zlhp(1)zlhp -zllhp(100)zllhp -qxqs")',
--           true
--      )
--      PickupMacro(button_txt)
--      PlaceAction("1")
--      button_txt = "智能治疗波（驱散）"
--      DeleteMacro(button_txt)
--      CreateMacro(
--           button_txt,
--           "136084",
--           '/run setmode("-CGDT -zl -xj(20)xj -zn -kshp(30)kshp -zlhp(100)zlhp -zllhp(1)zllhp")',
--           true
--      )
--      PickupMacro(button_txt)
--      PlaceAction("2")
--      button_txt = "智能次级"
--      DeleteMacro(button_txt)
--      CreateMacro(
--           button_txt,
--           "136043",
--           '/run setmode("-CGDT -zl -zn -kshp(95)kshp -zlhp(1)zlhp -zllhp(1)zllhp -lvzl(8)lvzl -qxqs")',
--           true
--      )
--      PickupMacro(button_txt)
--      PlaceAction("3")
--      button_txt = "治疗当前"
--      DeleteMacro(button_txt)
--      CreateMacro(
--           button_txt,
--           "136077",
--           '/run setmode("-CGDT -zl -kshp(30)kshp -zlhp(100)zlhp -zllhp(1)zllhp -qxqs")',
--           true
--      )
--      PickupMacro(button_txt)
--      PlaceAction("4")
--      PickupMacro(button_txt)
--      PlaceAction("16")
--      button_txt = "治疗当前省蓝"
--      DeleteMacro(button_txt)
--      CreateMacro(
--           button_txt,
--           "136032",
--           '/run setmode("-CGDT -zl -mp -kshp(30)kshp -zlhp(100)zlhp -zllhp(1)zllhp -lvzl(8)lvzl")',
--           true
--      )
--      PickupMacro(button_5)
--      PlaceAction("5")
--      button_txt = "面板设置"
--      DeleteMacro(button_txt)
--      CreateMacro(button_txt, "132311", "/run opendsz()", true)
--      PickupMacro(button_txt)
--      PlaceAction(6)
-- end
-----------------------------------------------------------------------

-- playerIndex_type = 7
-- playerIndex_name = "萨满"
-- playerTypes, _, ptype = UnitClass("player")

-- if (GetLocale() == "zhCN") then
--      WOWTIPS = "感谢您使用光芒一键宏\n您当前插件的职业为：" .. playerIndex_name .. "\n您当前的职业为：" .. playerTypes .. "\n光芒祝您游戏愉快。"
--      WOWTIPS_ERROR =
--           "感谢您使用光芒一键宏\n您当前插件的职业为：" ..
--           playerIndex_name .. "\n您当前的职业为：" .. playerTypes .. "\n目前职业不符，请重新选择插件启动\n游戏中聊天窗口输入/RL"
-- elseif (GetLocale() == "zhTW") then
--      WOWTIPS = "感謝您使用光芒壹鍵宏\n您當前插件的職業為：防騎\n您當前的職業為：" .. playerTypes .. "\n光芒祝您遊戲愉快。"
--      WOWTIPS_ERROR =
--           "感謝您使用光芒壹鍵宏\n您當前插件的職業為：" ..
--           playerIndex_name .. "\n您當前的職業為：" .. playerTypes .. "\n目前職業不符，請重新選擇插件啟動\n遊戲中聊天窗口輸入/RL"
-- else
--      playerIndex_name = "kuangbao"
--      WOWTIPS =
--           "Thank you for using the spoon button macro\n Your current plug-in career is: " ..
--           playerIndex_name .. "\n Your current career is:" .. playerTypes .. "\nWish you a pleasant game."
--      WOWTIPS_ERROR =
--           "Thank you for using the spoon button macro\n Your current plug-in career is: " ..
--           playerIndex_name ..
--                "\n Your current career is:" ..
--                     playerTypes ..
--                          "\nCurrent career does not match\n please re-select the plug-in to startn game lost such as/RL"
-- end
-- if (ptype == playerIndex_type) then
--      StaticPopupDialogs["WOWSHAOTIPS"] = {button1 = OKAY, OnAccept = function()
--           end, timeout = 10}
--      StaticPopupDialogs["WOWSHAOTIPS"].text = WOWTIPS
--      StaticPopup_Show("WOWSHAOTIPS")
-- else
--      StaticPopupDialogs["WOWSHAOTIPS"] = {button1 = OKAY, OnAccept = function()
--           end, showAlert = 2, timeout = 20}
--      StaticPopupDialogs["WOWSHAOTIPS"].text = WOWTIPS_ERROR
--      StaticPopup_Show("WOWSHAOTIPS")
-- end

-- npcNameIndex = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
-- function addListName(npcName)
--      for i = 1, 30, 1 do
--           if (npcNameIndex[i] == 0) then
--                npcNameIndex[i] = npcName
--                break
--           end
--      end
--      return isMatch
-- end
-- function removeListName(npcName)
--      for i = 1, 30, 1 do
--           local _, ret = string.find(npcNameIndex[i], npcName)
--           if ret ~= nil then
--                npcNameIndex[i] = 0
--                break
--           end
--      end
-- end
-- function npcNums()
--      nums = 0
--      attnums = 0
--      for i = 1, 30, 1 do
--           if (npcNameIndex[i] ~= 0) then
--                nums = nums + 1
--                atttype = UnitThreatSituation("player", npcNameIndex[i])
--                attCombat = UnitAffectingCombat(npcNameIndex[i])
--                isDistance = CheckInteractDistance(npcNameIndex[i], 3)
--                if (isDistance) then
--                     if (atttype ~= nil or attCombat) then
--                          attnums = attnums + 1
--                     end
--                end
--           end
--      end
--      return nums, attnums
-- end
-- function npcBallNums()
--      nums = 0
--      attnums = 0
--      hps = 0
--      hpsNum = 0
--      for i = 1, 30, 1 do
--           if (npcNameIndex[i] ~= 0) then
--                nums = nums + 1
--                atttype = UnitThreatSituation("player", npcNameIndex[i])
--                attCombat = UnitAffectingCombat(npcNameIndex[i])
--                isDistance = CheckInteractDistance(npcNameIndex[i], 2)
--                if (isDistance) then
--                     if (UnitName(npcNameIndex[i]) == "爆炸物") then
--                          attnums = attnums + 1
--                     end
--                end
--           end
--      end
--      if (attnums ~= 0) then
--           hps = hps / attnums
--      end
--      return nums, attnums, hps, hpsNum
-- end
-- kaiguancheck = 1
-- local function checkdsz_OnClick(self)
--      local index = self.key
--      if (self.key == 203) then
--           heshuiSizeLabel:SetText(50)
--           return
--      end
--      local set = self:GetChecked()
--      if (self.key == 200) then
--           if (self:GetChecked()) then
--                qusantype = 0
--           else
--                qusantype = 1
--           end
--      end
--      if (self.key == 201) then
--           if (self:GetChecked()) then
--                heshuitype = 1
--           else
--                heshuitype = 0
--           end
--      end
--      if (self.key == 202) then
--           if (self:GetChecked()) then
--                zhinengqusanIndex = 1
--           else
--                zhinengqusanIndex = 0
--           end
--      end
--      if (self.key == 204) then
--           if (self:GetChecked()) then
--                fenggouIndex = 1
--           else
--                fenggouIndex = 0
--           end
--      end
--      if (self.key == 205) then
--           if (self:GetChecked()) then
--                faqiangIndex = 1
--           else
--                faqiangIndex = 0
--           end
--      end
--      if (self.key == 100) then
--           if (self:GetChecked()) then
--                kaiguancheck = 1
--           else
--                kaiguancheck = 0
--           end
--           for i = 1, #titleTxt do
--                if kaiguancheck == 1 then
--                     checkboxes[i]:Enable()
--                else
--                     checkboxes[i]:Disable()
--                end
--           end
--      end
--      if (self.key <= 40) then
--           if (set) then
--                raidcheck[self.key] = 1
--           else
--                raidcheck[self.key] = 0
--           end
--      end
-- end

-- local function heshuiSizeChanged(self, value)
--      heshuiNums = value
--      heshuiSizeLabel:SetText(value .. "%蓝")
-- end
-- local panelInit, charConfigCheckbox
-- checkboxes = {}
-- local qusanboxes
-- local qusantype = 0
-- local zhinengqusanIndex = 0
-- raidcheck = {
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1,
--      1
-- }
-- titleTxt = {
--      "raid1",
--      "raid2",
--      "raid3",
--      "raid4",
--      "raid5",
--      "raid6",
--      "raid7",
--      "raid8",
--      "raid9",
--      "raid10",
--      "raid11",
--      "raid12",
--      "raid13",
--      "raid14",
--      "raid15",
--      "raid16",
--      "raid17",
--      "raid18",
--      "raid19",
--      "raid20",
--      "raid21",
--      "raid22",
--      "raid23",
--      "raid24",
--      "raid25",
--      "raid25",
--      "raid26",
--      "raid27",
--      "raid28",
--      "raid29",
--      "raid31",
--      "raid32",
--      "raid33",
--      "raid34",
--      "raid35",
--      "raid36",
--      "raid37",
--      "raid38",
--      "raid39",
--      "raid40"
-- }
--titleTxt_party = {"party1", "party2", "party3", "party4", "party5", "party6", "party7", "party8"}
--local DSZ_OnRefresh
-- DSZ_OnRefresh = function(self)
--      if not panelInit then
--           local footer = self:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
--           footer:SetPoint("BOTTOMRIGHT", -16, 16)
--           footer:SetText("1.16" or "Dev")
--           local label = self:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
--           label:SetPoint("TOPLEFT", 16, -16)
--           label:SetJustifyH("LEFT")
--           label:SetJustifyV("TOP")
--           label:SetText("萨满白名单设置")
--           TOPHIGHT = 20
--           for i = 1, #titleTxt do
--                checkboxes[i] = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
--                checkboxes[i]:SetScript("OnClick", checkdsz_OnClick)
--                checkboxes[i].Text:SetFontObject("GameFontHighlightSmall")
--                checkboxes[i].Text:SetPoint("LEFT", checkboxes[i], "RIGHT", 0, 1)
--                checkboxes[i].Text:SetText(titleTxt[i])
--                checkboxes[i].key = i
--                checkboxes[i]:SetPoint(
--                     "TOPLEFT",
--                     36 + (math.floor((i - 1) / 5)) * 150 - (150 * 4) * math.floor((i - 1) / 20),
--                     -76 - (((i - 1) % 5) - 1) * TOPHIGHT - (120) * math.floor((i - 1) / 20)
--                )
--                checkboxes[i]:SetChecked(raidcheck[i])
--           end
--           raidclock = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
--           raidclock:SetScript("OnClick", checkdsz_OnClick)
--           raidclock.Text:SetFontObject("GameFontHighlightSmall")
--           raidclock.Text:SetPoint("LEFT", raidclock, "RIGHT", 0, 1)
--           raidclock.Text:SetText("总开关")
--           raidclock.key = 100
--           raidclock:SetChecked(kaiguancheck)
--           raidclock:SetPoint("TOPLEFT", 486, -16)
--           label = self:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
--           label:SetPoint("TOPLEFT", 16, -300)
--           label:SetJustifyH("LEFT")
--           label:SetJustifyV("TOP")
--           label:SetText("驱散设置（不勾选由8队到1队）")
--           panelInit = true
--           qusanboxes = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
--           qusanboxes:SetScript("OnClick", checkdsz_OnClick)
--           qusanboxes.Text:SetFontObject("GameFontHighlightSmall")
--           qusanboxes.Text:SetPoint("LEFT", qusanboxes, "RIGHT", 0, 1)
--           qusanboxes.Text:SetText("顺序1队-8队")
--           qusanboxes.key = 200
--           qusanboxes:SetPoint("TOPLEFT", 16, -320)
--           qusanboxes:SetChecked(1)
--           qusanboxes = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
--           qusanboxes:SetScript("OnClick", checkdsz_OnClick)
--           qusanboxes.Text:SetFontObject("GameFontHighlightSmall")
--           qusanboxes.Text:SetPoint("LEFT", qusanboxes, "RIGHT", 0, 1)
--           qusanboxes.Text:SetText("智能驱散（检测最优驱散机制，如果想无脑驱散请去掉该选项）")
--           qusanboxes.key = 202
--           qusanboxes:SetPoint("TOPLEFT", 136, -320)
--           qusanboxes:SetChecked(1)
--           label = self:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
--           label:SetPoint("TOPLEFT", 16, -350)
--           label:SetJustifyH("LEFT")
--           label:SetJustifyV("TOP")
--           label:SetText("其他设置")
--           panelInit = true
--           qusanboxes = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
--           qusanboxes:SetScript("OnClick", checkdsz_OnClick)
--           qusanboxes.Text:SetFontObject("GameFontHighlightSmall")
--           qusanboxes.Text:SetPoint("LEFT", qusanboxes, "RIGHT", 0, 1)
--           qusanboxes.Text:SetText("脱战自动喝水")
--           qusanboxes.key = 201
--           qusanboxes:SetPoint("TOPLEFT", 16, -370)
--           qusanboxes:SetChecked(1)
--           heshuiSize = CreateFrame("Slider", nil, self, "OptionsSliderTemplate")
--           heshuiSize:SetPoint("TOPLEFT", 200, -370)
--           heshuiSize:SetMinMaxValues(0, 100)
--           heshuiSize:SetValueStep(1)
--           heshuiSize:SetStepsPerPage(1)
--           heshuiSize.key = 203
--           heshuiSize:SetWidth(200)
--           heshuiSize:SetObeyStepOnDrag(true)
--           heshuiSize:SetScript("OnValueChanged", heshuiSizeChanged)
--           heshuiSize:SetValue(heshuiNums)
--           heshuiSizeLabel = self:CreateFontString(nil, "OVERLAY", "GameTooltipText")
--           heshuiSizeLabel:SetPoint("TOPLEFT", 410, -372)
--           heshuiSizeLabel:SetText(heshuiNums .. "%蓝")
--           qusanboxes = CreateFrame("CheckButton", nil, self, "InterfaceOptionsCheckButtonTemplate")
--           qusanboxes:SetScript("OnClick", checkdsz_OnClick)
--           qusanboxes.Text:SetFontObject("GameFontHighlightSmall")
--           qusanboxes.Text:SetPoint("LEFT", qusanboxes, "RIGHT", 0, 1)
--           qusanboxes.Text:SetText("疯狗模式（更快的选人和加血）")
--           qusanboxes.key = 204
--           qusanboxes:SetPoint("TOPLEFT", 16, -400)
--      end
--      if panelInit then
--           for i = 1, #titleTxt do
--                name = titleTxt[i]
--                ui_tname = UnitName(name)
--                if (ui_tname == nil) then
--                     ui_tname = titleTxt[i]
--                end
--                checkboxes[i].Text:SetText(ui_tname)
--           end
--      end
-- end

-- local panel
-- function CreateShaoziSet()
--      panel = CreateFrame("FRAME")
--      panel.name = "光芒宏全局设置"
--      panel.okay = DSZ_OnSave
--      panel.cancel = DSZ_OnCancel
--      panel.default = DSZ_OnDefaults
--      panel.refresh = DSZ_OnRefresh
--      InterfaceOptions_AddCategory(panel)
--      return panel
-- end
function opendsz()
     InterfaceOptionsFrame_OpenToCategory(panel)
     InterfaceOptionsFrame_OpenToCategory(panel)
end
--CreateShaoziSet()
print("加载结束	")
