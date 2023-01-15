--[[
	Where To Now?
	Version 1.1
]]

WhereToNow_Version = "1.1";

-- Message zones
function WhereToNow_Msg(msg, channel, debug)
	if (msg == nil) then
		return;
	end
	if debug == nil then
		debug = 10;
	end
	if (channel == "Error") then
		DEFAULT_CHAT_FRAME:AddMessage(RED_FONT_COLOR_CODE..WHERETONOW_TITLE.." "..WHERETONOW_ERROR..": |r"..msg);
	elseif (channel == "Debug") then
		DEFAULT_CHAT_FRAME:AddMessage(LIGHTYELLOW_FONT_COLOR_CODE..WHERETONOW_TITLE.." "..WHERETONOW_DEBUG..": |r"..msg);
	else
		DEFAULT_CHAT_FRAME:AddMessage(GREEN_FONT_COLOR_CODE..WHERETONOW_TITLE..": |r"..msg);
	end
end

-- Loading Function
function WhereToNow_Load()

	-- Slash Commands
	SlashCmdList["WhereToNow"] = WhereToNow_CommandLine;
	SLASH_WhereToNow1 = "/wheretonow";
	SLASH_WhereToNow2 = "/where2now";
	SLASH_WhereToNow3 = "/w2n";
	SLASH_WhereToNow4 = "/wtn";

	WhereToNow_Msg(WHERETONOW_VERSION.." "..WhereToNow_Version.." "..WHERETONOW_NOWLOADED);
end

function WhereToNow_CommandLine(cmd)
	WhereToNow_Msg("No commands are currently available.");
end

function WhereToNow_Main()
	local PlayerLevel = UnitLevel("player");
	local ZoneList = WhereToNow_MapList();
	local zones, instances, output = "", "", "";
	local zonefound, instancefound = 0, 0;
	local instancelist = {};
	
	sort(WhereToNowDatabase);
	for ZName, v in pairs(WhereToNowDatabase) do
		if ((WhereToNowDatabase[ZName]["min"] <= PlayerLevel) and (WhereToNowDatabase[ZName]["max"] >= PlayerLevel)) then
			zonefound = zonefound + 1;
			if ((zonefound>1) and (zones~="")) then
				zones = zones..", ";
			end
			zones = zones..ZName;
		end
		if zonefound >= 1 then
			for Instance,v in pairs(WhereToNowDatabaseDungeon) do
				if ((WhereToNowDatabaseDungeon[Instance]["min"] <= PlayerLevel) and (WhereToNowDatabaseDungeon[Instance]["max"] >= PlayerLevel)) then
					if (not instancelist[Instance]) then
						instancefound = instancefound + 1;
						if ((instancefound>1) and (instances~="")) then
							instances = instances..", ";
						end
						instances = instances..Instance;
						instancelist[Instance] = 1;
					end					
				end
			end
		end
	end

	if zonefound > 0 then
		WhereToNow_Msg(NORMAL_FONT_COLOR_CODE..WHERETONOW_REC_ZONES..PlayerLevel..": |r"..zones..".");
	end
	if instancefound > 0 then
		WhereToNow_Msg(NORMAL_FONT_COLOR_CODE..WHERETONOW_REC_INSTANCES..": |r"..instances..".");
	end
	if zonefound <= 0 and instancefound <=0 then
		WhereToNow_Msg(WHERETONOW_REC_NONE);
	end
end

function WhereToNow_Tooltip()
	local PlayerLevel=UnitLevel("player");
	local ZoneList = WhereToNow_MapList();
	local zones, instances, output = "", "", "";
	local zonefound, instancefound = 0, 0;
	local instancelist = {};

	sort(WhereToNowDatabase);
	for ZName, v in pairs(WhereToNowDatabase) do
		if ((WhereToNowDatabase[ZName]["min"] <= PlayerLevel) and (WhereToNowDatabase[ZName]["max"] >= PlayerLevel)) then
			zonefound = zonefound + 1;
			if ((zonefound>1) and (zones~="")) then
				zones = zones.."\n";
			end
			local minmax = WhereToNowDatabase[ZName]["min"];
			if (WhereToNowDatabase[ZName]["min"] ~= WhereToNowDatabase[ZName]["max"]) then
				minmax = minmax.."-"..WhereToNowDatabase[ZName]["max"];
			end
			zones = zones..ZName.." ("..minmax..")";
		end
		if zonefound >= 1 then
			sort(WhereToNowDatabaseDungeon);
			for Instance,v in pairs(WhereToNowDatabaseDungeon) do
				if ((WhereToNowDatabaseDungeon[Instance]["min"] <= PlayerLevel) and (WhereToNowDatabaseDungeon[Instance]["max"] >= PlayerLevel)) then
					if (not instancelist[Instance]) then
						instancefound = instancefound + 1;
						if ((instancefound>1) and (instances~="")) then
							instances = instances.."\n";
						end
						local minmax = WhereToNowDatabaseDungeon[Instance]["min"];
						if (WhereToNowDatabaseDungeon[Instance]["min"] ~= WhereToNowDatabaseDungeon[Instance]["max"]) then
							minmax = minmax.."-"..WhereToNowDatabaseDungeon[Instance]["max"];
						end
						instances = instances..Instance.." ("..minmax..")";
						instancelist[Instance] = 1;
					end
				end
			end
		end
	end

	if (instances == "") then
		instances = WHERETONOW_NONE;
	end
	if (zones == "") then
		zones = WHERETONOW_NONE;
	end

	if zonefound > 0 then
		output = output.."\n"..NORMAL_FONT_COLOR_CODE..WHERETONOW_REC_ZONES..PlayerLevel..":\n|r"..zones;
	end
	if instancefound > 0 then
		output = output.."\n\n"..NORMAL_FONT_COLOR_CODE..WHERETONOW_REC_INSTANCES..":\n|r"..instances;
	end

	if zonefound <= 0 and instancefound <= 0 then
		output = WHERETONOW_REC_NONE;
	end

	return output;
end

function WhereToNow_MapList()
	local zonelist = {}
	local continentNames = { GetMapContinents() };
	for ckey, cval in pairs(continentNames) do
		local ZoneNames = { GetMapZones(ckey) };
		for zkey, zval in pairs(ZoneNames) do
			zonelist[zval] = 1;
		end
	end

	return zonelist;
end