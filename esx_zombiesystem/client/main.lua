ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

local Models = {
	"A_F_M_Beach_01",
	"A_F_M_BevHills_01",
	"A_F_M_BevHills_02",
	"A_F_M_BodyBuild_01",
	"A_F_M_Business_02",
	"A_F_M_Downtown_01",
	"A_F_M_EastSA_01",
	"A_F_M_EastSA_02",
	"A_F_M_FatBla_01",
	"A_F_M_FatCult_01",
	"A_F_M_FatWhite_01",
	"A_F_M_KTown_01",
	"A_F_M_KTown_02",
	"A_F_M_ProlHost_01",
	"A_F_M_Salton_01",
	"A_F_M_SkidRow_01",
	"A_F_M_SouCentMC_01",
	"A_F_M_SouCent_01",
	"A_F_M_SouCent_02",
	"A_F_M_Tourist_01",
	"A_F_M_TrampBeac_01",
	"A_F_M_Tramp_01",
	"A_F_O_GenStreet_01",
	"A_F_O_Indian_01",
	"A_F_O_KTown_01",
	"A_F_O_Salton_01",
	"A_F_O_SouCent_01",
	"A_F_O_SouCent_02",
	"A_F_Y_Beach_01",
	"A_F_Y_BevHills_01",
	"A_F_Y_BevHills_02",
	"A_F_Y_BevHills_03",
	"A_F_Y_BevHills_04",
	"A_F_Y_Business_01",
	"A_F_Y_Business_02",
	"A_F_Y_Business_03",
	"A_F_Y_Business_04",
	"A_F_Y_EastSA_01",
	"A_F_Y_EastSA_02",
	"A_F_Y_EastSA_03",
	"A_F_Y_Epsilon_01",
	"A_F_Y_Fitness_01",
	"A_F_Y_Fitness_02",
	"A_F_Y_GenHot_01",
	"A_F_Y_Golfer_01",
	"A_F_Y_Hiker_01",
	"A_F_Y_Hippie_01",
	"A_F_Y_Hipster_01",
	"A_F_Y_Hipster_02",
	"A_F_Y_Hipster_03",
	"A_F_Y_Hipster_04",
	"A_F_Y_Indian_01",
	"A_F_Y_Juggalo_01",
	"A_F_Y_Runner_01",
	"A_F_Y_RurMeth_01",
	"A_F_Y_SCDressy_01",
	"A_F_Y_Skater_01",
	"A_F_Y_SouCent_01",
	"A_F_Y_SouCent_02",
	"A_F_Y_SouCent_03",
	"A_F_Y_Tennis_01",
	"A_F_Y_Topless_01",
	"A_F_Y_Tourist_01",
	"A_F_Y_Tourist_02",
	"A_F_Y_Vinewood_01",
	"A_F_Y_Vinewood_02",
	"A_F_Y_Vinewood_03",
	"A_F_Y_Vinewood_04",
	"A_F_Y_Yoga_01",
	"A_M_M_AfriAmer_01",
	"A_M_M_Beach_01",
	"A_M_M_Beach_02",
	"A_M_M_BevHills_01",
	"A_M_M_BevHills_02",
	"A_M_M_Business_01",
	"A_M_M_EastSA_01",
	"A_M_M_EastSA_02",
	"A_M_M_Farmer_01",
	"A_M_M_FatLatin_01",
	"A_M_M_GenFat_01",
	"A_M_M_GenFat_02",
	"A_M_M_Golfer_01",
	"A_M_M_HasJew_01",
	"A_M_M_Hillbilly_01",
	"A_M_M_Hillbilly_02",
	"A_M_M_Indian_01",
	"A_M_M_KTown_01",
	"A_M_M_Malibu_01",
	"A_M_M_MexCntry_01",
	"A_M_M_MexLabor_01",
	"A_M_M_OG_Boss_01",
	"A_M_M_Paparazzi_01",
	"A_M_M_Polynesian_01",
	"A_M_M_ProlHost_01",
	"A_M_M_RurMeth_01",
	"A_M_M_Salton_01",
	"A_M_M_Salton_02",
	"A_M_M_Salton_03",
	"A_M_M_Salton_04",
	"A_M_M_Skater_01",
	"A_M_M_Skidrow_01",
	"A_M_M_SoCenLat_01",
	"A_M_M_SouCent_01",
	"A_M_M_SouCent_02",
	"A_M_M_SouCent_03",
	"A_M_M_SouCent_04",
	"A_M_M_StLat_02",
	"A_M_M_Tennis_01",
	"A_M_M_Tourist_01",
	"A_M_M_TrampBeac_01",
	"A_M_M_Tramp_01",
	"A_M_M_TranVest_01",
	"A_M_M_TranVest_02",
	"A_M_O_ACult_01",
	"A_M_O_ACult_02",
	"A_M_O_Beach_01",
	"A_M_O_GenStreet_01",
	"A_M_O_KTown_01",
	"A_M_O_Salton_01",
	"A_M_O_SouCent_01",
	"A_M_O_SouCent_02",
	"A_M_O_SouCent_03",
	"A_M_O_Tramp_01",
	"A_M_Y_ACult_02",
	"A_M_Y_BeachVesp_01",
	"A_M_Y_BeachVesp_02",
	"A_M_Y_Beach_01",
	"A_M_Y_Beach_02",
	"A_M_Y_Beach_03",
	"A_M_Y_BevHills_01",
	"A_M_Y_BevHills_02",
	"A_M_Y_BreakDance_01",
	"A_M_Y_BusiCas_01",
	"A_M_Y_Business_01",
	"A_M_Y_Business_02",
	"A_M_Y_Business_03",
	"A_M_Y_Cyclist_01",
	"A_M_Y_DHill_01",
	"A_M_Y_Downtown_01",
	"A_M_Y_EastSA_01",
	"A_M_Y_EastSA_02",
	"A_M_Y_Epsilon_01",
	"A_M_Y_Epsilon_02",
	"A_M_Y_Gay_01",
	"A_M_Y_Gay_02",
	"A_M_Y_GenStreet_01",
	"A_M_Y_GenStreet_02",
	"A_M_Y_Golfer_01",
	"A_M_Y_HasJew_01",
	"A_M_Y_Hiker_01",
	"A_M_Y_Hippy_01",
	"A_M_Y_Hipster_01",
	"A_M_Y_Hipster_02",
	"A_M_Y_Hipster_03",
	"A_M_Y_Indian_01",
	"A_M_Y_Jetski_01",
	"A_M_Y_Juggalo_01",
	"A_M_Y_KTown_01",
	"A_M_Y_KTown_02",
	"A_M_Y_Latino_01",
	"A_M_Y_MethHead_01",
	"A_M_Y_MexThug_01",
	"A_M_Y_MotoX_01",
	"A_M_Y_MotoX_02",
	"A_M_Y_MusclBeac_01",
	"A_M_Y_MusclBeac_02",
	"A_M_Y_Polynesian_01",
	"A_M_Y_RoadCyc_01",
	"A_M_Y_Runner_01",
	"A_M_Y_Runner_02",
	"A_M_Y_Salton_01",
	"A_M_Y_Skater_01",
	"A_M_Y_Skater_02",
	"A_M_Y_SouCent_01",
	"A_M_Y_SouCent_02",
	"A_M_Y_SouCent_03",
	"A_M_Y_SouCent_04",
	"A_M_Y_StBla_01",
	"A_M_Y_StBla_02",
	"A_M_Y_StLat_01",
	"A_M_Y_StWhi_01",
	"A_M_Y_StWhi_02",
	"A_M_Y_Sunbathe_01",
	"A_M_Y_Surfer_01",
	"A_M_Y_VinDouche_01",
	"A_M_Y_Vinewood_01",
	"A_M_Y_Vinewood_02",
	"A_M_Y_Vinewood_03",
	"A_M_Y_Vinewood_04",
	"A_M_Y_Yoga_01",
	"G_F_Y_ballas_01",
	"G_F_Y_Families_01",
	"G_F_Y_Lost_01",
	"G_F_Y_Vagos_01",
	"G_M_M_ArmBoss_01",
	"G_M_M_ArmGoon_01",
	"G_M_M_ArmLieut_01",
	"G_M_M_ChemWork_01",
	"G_M_M_ChiBoss_01",
	"G_M_M_ChiCold_01",
	"G_M_M_ChiGoon_01",
	"G_M_M_ChiGoon_02",
	"G_M_M_KorBoss_01",
	"G_M_M_MexBoss_01",
	"G_M_M_MexBoss_02",
	"G_M_Y_ArmGoon_02",
	"G_M_Y_Azteca_01",
	"G_M_Y_BallaEast_01",
	"G_M_Y_BallaOrig_01",
	"G_M_Y_BallaSout_01",
	"G_M_Y_FamCA_01",
	"G_M_Y_FamDNF_01",
	"G_M_Y_FamFor_01",
	"G_M_Y_Korean_01",
	"G_M_Y_Korean_02",
	"G_M_Y_KorLieut_01",
	"G_M_Y_Lost_01",
	"G_M_Y_Lost_02",
	"G_M_Y_Lost_03",
	"G_M_Y_MexGang_01",
	"G_M_Y_MexGoon_01",
	"G_M_Y_MexGoon_02",
	"G_M_Y_MexGoon_03",
	"G_M_Y_PoloGoon_01",
	"G_M_Y_PoloGoon_02",
	"G_M_Y_SalvaBoss_01",
	"G_M_Y_SalvaGoon_01",
	"G_M_Y_SalvaGoon_02",
	"G_M_Y_SalvaGoon_03",
	"G_M_Y_StrPunk_01",
	"G_M_Y_StrPunk_02",
	"IG_Abigail",
	"IG_Ashley",
	"IG_Bankman",
	"IG_Barry",
	"IG_BestMen",
	"IG_Beverly",
	"IG_Bride",
	"IG_Car3guy1",
	"IG_Car3guy2",
	"IG_Chef",
	"IG_ChengSr",
	"IG_ChrisFormage",
	"IG_Clay",
	"IG_ClayPain",
	"IG_Cletus",
	"IG_Dale",
	"IG_Dreyfuss",
	"IG_FBISuit_01",
	"IG_Groom",
	"IG_Hao",
	"IG_Hunter",
	"IG_Janet",
	"IG_JewelAss",
	"IG_JimmyBoston",
	"IG_JoeMinuteMan",
	"IG_Josef",
	"IG_Josh",
	"IG_KerryMcIntosh",
	"IG_LifeInvad_01",
	"IG_LifeInvad_02",
	"IG_Magenta",
	"IG_Manuel",
	"IG_Marnie",
	"IG_MaryAnn",
	"IG_Maude",
	"IG_Michelle",
	"IG_MrsPhillips",
	"IG_MRS_Thornhill",
	"IG_Natalia",
	"IG_Nigel",
	"IG_Old_Man1A",
	"IG_Old_Man2",
	"IG_ONeil",
	"IG_Ortega",
	"IG_Paper",
	"IG_Priest",
	"IG_ProlSec_02",
	"IG_Ramp_Gang",
	"IG_Ramp_Hic",
	"IG_Ramp_Hipster",
	"IG_Ramp_Mex",
	"IG_RoccoPelosi",
	"IG_RussianDrunk",
	"IG_Screen_Writer",
	"IG_Talina",
	"IG_Tanisha"
}

players = {}
Player = {}
Player.IsDead = false
Player.Shoot = false
Player.Run = false
Player.Drive = false

RegisterNetEvent("esx_zombiesystem:playerupdate")
AddEventHandler("esx_zombiesystem:playerupdate", function(mPlayers)
	players = mPlayers
end)

entitys = {}

TriggerServerEvent("RegisterNewZombie")
TriggerServerEvent("esx_zombiesystem:newplayer", PlayerId())

local PlayerGroup, ZombieGroup = "PLAYER", "ZOMBIE"
DecorRegister("RegisterZombie", 2)

AddRelationshipGroup(ZombieGroup)
SetRelationshipBetweenGroups(0, GetHashKey(ZombieGroup), GetHashKey(PlayerGroup))
SetRelationshipBetweenGroups(5, GetHashKey(PlayerGroup), GetHashKey(ZombieGroup))

RegisterNetEvent("ZombieSync")
AddEventHandler("ZombieSync", function()

	local PedHandler = -1
	local Success = false
	local Handler, PedHandler = FindFirstPed()

	repeat
		Wait(10)

		if IsPedHuman(PedHandler) and not IsPedAPlayer(PedHandler) and not IsPedDeadOrDying(PedHandler, true) then
			if not DecorExistOn(PedHandler, "RegisterZombie") then
				ClearPedTasks(PedHandler)
				ClearPedSecondaryTask(PedHandler)
				ClearPedTasksImmediately(PedHandler)
				TaskWanderStandard(PedHandler, 10.0, 10)
				SetPedRelationshipGroupHash(PedHandler, ZombieGroup)
				ApplyPedDamagePack(PedHandler, "BigHitByVehicle", 0.0, 1.0)
				SetEntityHealth(PedHandler, Config.ZombieHealth)

				RequestAnimSet("move_m@drunk@verydrunk")
				while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
					Wait(0)
				end
				SetPedMovementClipset(PedHandler, "move_m@drunk@verydrunk", 1.0)

				SetPedConfigFlag(PedHandler, 100, false)
				DecorSetBool(PedHandler, "RegisterZombie", true)
			end
			ZombiePedAttributes(PedHandler)

			local PlayerCoords = GetEntityCoords(PlayerPedId())
			local PedCoords = GetEntityCoords(PedHandler)
			local Distance = Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, PedCoords.x, PedCoords.y, PedCoords.z)
			local DistanceTarget

			if Player.Shooting() then
				DistanceTarget = Config.DistanceTarget + 100.0
			elseif Player.Running() then
				DistanceTarget = Config.DistanceTarget + 20.0
			elseif Player.Driving() then
				local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
				if GetVehicleClass(Vehicle) == 15 or GetVehicleClass(Vehicle) == 16 then
					DistanceTarget = Config.DistanceTarget + 100.0
				else
					DistanceTarget = Config.DistanceTarget + 60.0
				end
			else
				DistanceTarget = Config.DistanceTarget
			end

			if Distance <= DistanceTarget then
				if (Config.ZombieCanRun) then TaskGoStraightToCoord(PedHandler, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 2.0, -1, 0.0, 0.0)
				else TaskGoStraightToCoord(PedHandler, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 1.0, -1, 0.0, 0.0) end
			end
				
			if Distance <= Config.DistanceTarget then
				if not GetPedConfigFlag(PedHandler, 100, false) and GetEntityHealth(PlayerPedId()) ~= 0 then
					SetPedConfigFlag(PedHandler, 100, true)
				end
			end

			if (Distance <= 1.3) then
				if not IsPedRagdoll(PedHandler) and not IsPedGettingUp(PedHandler) then
					if (GetEntityHealth(PlayerPedId()) == 0) then
						ClearPedTasks(PedHandler)
						TaskWanderStandard(PedHandler, 10.0, 10)
					else
						RequestAnimSet("melee@unarmed@streamed_core_fps")
						while not HasAnimSetLoaded("melee@unarmed@streamed_core_fps") do
							Wait(10)
						end

						TaskPlayAnim(PedHandler, "melee@unarmed@streamed_core_fps", "ground_attack_0_psycho", 8.0, 1.0, -1, 48, 0.001, false, false, false)
							
						ApplyDamageToPed(PlayerPedId(), Config.ZombieDamage, false)
					end
				end
			end

			if not NetworkGetEntityIsNetworked(PedHandler) then
				DeleteEntity(PedHandler)
			end

			if (Config.Debug) then
				DrawMarker(1, PedCoords.x, PedCoords.y, PedCoords.z + 1.0, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 255, 255, 255, false, true, 2, nil, nil, false)
			end
		end

		Success, PedHandler = FindNextPed(Handler)
	until not (Success)

	EndFindPed(Handler)
end)

if Config.NotHealthRecharge then
	SetPlayerHealthRechargeMultiplier(PlayerId(), 0.0)
end

if Config.MuteAmbience then
	StartAudioScene('CHARACTER_CHANGE_IN_SKY_SCENE')
end

SetBlackout(Config.Blackout)

if Config.ZombieDropLoot then
	Citizen.CreateThread(function()

		local PedHandler = -1
		local Success = false
		local Handler, PedHandler = FindFirstPed()

		repeat

			if IsPedHuman(PedHandler) and not IsPedAPlayer(PedHandler) and IsPedDeadOrDying(PedHandler, true) then
				local PlayerCoords = GetEntityCoords(PlayerPedId())
				local PedCoords = GetEntityCoords(PedHandler)
				local Distance = Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, PedCoords.x, PedCoords.y, PedCoords.z)

				if not IsPedInAnyVehicle(PlayerPedId(), false) then
					if(Vdist(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, PedCoords.x, PedCoords.y, PedCoords.z) < 1.5) then
						ESX.Game.Utils.DrawText3D({x = PedCoords.x, y = PedCoords.y, z = PedCoords.z + 0.2}, '~c~PRESS ~b~[E]~c~ TO SEARCH', 0.8, 4)
						if IsControlJustReleased(1, 51) and not Player.Dead() then
							ClearPedTasksImmediately(PlayerPedId())
							RequestAnimDict("amb@medic@standing@kneel@base")
							while not HasAnimDictLoaded("amb@medic@standing@kneel@base") do
								Wait(0)
							end
							TaskPlayAnim(PlayerPedId(), "amb@medic@standing@kneel@base", "base", 5.0, 10.0, -1, 1, 0, false, false, false)

							Citizen.Wait(2000)
							randomChance = math.random(1, 100)
							randomWeapon = Config.WeaponLoot[math.random(1, #Config.WeaponLoot)]
							randomItem = Config.ItemLoot[math.random(1, #Config.ItemLoot)]

							if randomChance > 0 and randomChance < Config.ProbabilityWeaponLoot then
								local randomAmmo = math.random(1, 30)
								GiveWeaponToPed(PlayerPedId(), randomWeapon, randomAmmo, true, false)
								ESX.ShowNotification('You found ' .. randomWeapon)
							elseif randomChance >= Config.ProbabilityWeaponLoot and randomChance < Config.ProbabilityMoneyLoot then
								TriggerServerEvent('esx_zombiesystem:moneyloot')
							elseif randomChance >= Config.ProbabilityMoneyLoot and randomChance < Config.ProbabilityItemLoot then
								TriggerServerEvent('esx_zombiesystem:itemloot', randomItem)
							elseif randomChance >= Config.ProbabilityItemLoot and randomChance < 100 then
								ESX.ShowNotification('You not found nothing')
							end
							ClearPedSecondaryTask(PlayerPedId())
						end
					end
				end
			end

			Success, PedHandler = FindNextPed(Handler)
		until not (Success)

		EndFindPed(Handler)
	end)
end

if Config.SafeZoneRadioBlip then
	for k, v in pairs(Config.SafeZoneCoords) do
		blip = AddBlipForRadius(v.x, v.y, v.z, v.radio)
		SetBlipHighDetail(blip, true)
		SetBlipColour(blip, 2)
		SetBlipAlpha (blip, 128)
	end
end

if Config.SafeZone then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
			for k, v in pairs(Config.SafeZoneCoords) do
				for i, entity in pairs(entitys) do
					pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, true))
					if(Vdist(pedX, pedY, pedZ, v.x, v.y, v.z) < v.radio)then
						--Citizen.Trace("Zombie Eliminated from refuge\n")
						SetEntityHealth(entity, 0)
						SetEntityAsNoLongerNeeded(entity)
						DeleteEntity(entity)
						table.remove(entitys, i)
					end
				end
			end
		end
	end)
end

RegisterNetEvent('esx_zombiesystem:clear')
AddEventHandler('esx_zombiesystem:clear', function()
	for i, entity in pairs(entitys) do
		local model = GetEntityModel(entity)
		SetEntityAsNoLongerNeeded(entity)
		SetModelAsNoLongerNeeded(model)
		table.remove(entitys, i)
		--Citizen.Trace("Zombie Eliminated\n")
	end
end)

if Config.Debug then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
			for i, entity in pairs(entitys) do
				local playerX, playerY, playerZ = table.unpack(GetEntityCoords(PlayerPedId(), true))
				local pedX, pedY, pedZ = table.unpack(GetEntityCoords(entity, false))	
				DrawLine(playerX, playerY, playerZ, pedX, pedY, pedZ, 250,0,0,250)
			end
		end
	end)
end

if Config.NoPeds then
	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1)
	    	SetVehicleDensityMultiplierThisFrame(0.0)
			SetPedDensityMultiplierThisFrame(0.0)
			SetRandomVehicleDensityMultiplierThisFrame(0.0)
			SetParkedVehicleDensityMultiplierThisFrame(0.0)
			SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
			local playerPed = GetPlayerPed(-1)
			local pos = GetEntityCoords(playerPed) 
			RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
			SetGarbageTrucks(0)
			SetRandomBoats(0)
		end
	end)
end

Citizen.CreateThread(function()
    if NetworkIsPlayerActive(PlayerId()) then
        if IsPedFatallyInjured(PlayerPedId()) and not Player.IsDead then
            Player.IsDead = true
        elseif not IsPedFatallyInjured(PlayerPedId()) then
            Player.IsDead = false
        end
    end
end)

Citizen.CreateThread(function()
    if IsPedShooting(PlayerPedId()) then
        Player.Shoot = true
        Wait(5000)
        Player.Shoot = false
    end
end)

Citizen.CreateThread(function()
	Wait(1000)
    if IsPedSprinting(PlayerPedId()) or IsPedRunning(PlayerPedId()) then
        if Player.Run == false then
            Player.Run = true
        end
    else
        if Player.Run == true then
            Player.Run = false
        end
    end
    
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if GetEntitySpeed(Vehicle) > 0.0 then
            if Player.Drive == false then
                Player.Drive = true
            end
        else
            if Player.Drive == true then
                Player.Drive = false
            end
        end
    else
        if Player.Drive == true then
            Player.Drive = false
        end
    end
end)

Player.Dead = function()
    return Player.IsDead
end

Player.Shooting = function()
    return Player.Shoot
end

Player.Running = function()
    return Player.Run
end

Player.Driving = function()
    return Player.Drive
end


function ZombiePedAttributes(Ped)
    if not Config.ZombieCanRagdollByShots then SetPedRagdollBlockingFlags(Ped, 1) end
    SetPedCanRagdollFromPlayerImpact(Ped, false)
    SetPedSuffersCriticalHits(Ped, Config.ZombieInstantDeathByHeadshot)
    SetPedEnableWeaponBlocking(Ped, true)
    DisablePedPainAudio(Ped, true)
    StopPedSpeaking(Ped, true)
    SetPedDiesWhenInjured(Ped, false)
    StopPedRingtone(Ped)
    SetPedMute(Ped)
    SetPedIsDrunk(Ped, true)
    SetPedConfigFlag(Ped, 166, false)
    SetPedConfigFlag(Ped, 170, false)
    SetBlockingOfNonTemporaryEvents(Ped, true)
    SetPedCanEvasiveDive(Ped, false)
    RemoveAllPedWeapons(Ped, true)
end