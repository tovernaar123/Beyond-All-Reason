
-- phase control
function ScavBossPhaseControl(bosshealthpercentage)
	if bosshealthpercentage >= 90 then
		BossFightCurrentPhase = 1
	elseif bosshealthpercentage >= 80 then
		BossFightCurrentPhase = 2
	elseif bosshealthpercentage >= 70 then
		BossFightCurrentPhase = 3
	elseif bosshealthpercentage >= 60 then
		BossFightCurrentPhase = 4
	elseif bosshealthpercentage >= 50 then
		BossFightCurrentPhase = 5
	elseif bosshealthpercentage >= 40 then
		BossFightCurrentPhase = 6
	elseif bosshealthpercentage >= 30 then
		BossFightCurrentPhase = 7
	elseif bosshealthpercentage >= 20 then
		BossFightCurrentPhase = 8
	elseif bosshealthpercentage >= 10 then
		BossFightCurrentPhase = 9
	else
		BossFightCurrentPhase = 10
	end
end






-- special abilities

function BossSpecAbiDGun(n)
	if FinalBossUnitID then
		CurrentlyUsedPassiveAbility = "none"
		local NearestBossEnemy = Spring.GetUnitNearestEnemy(FinalBossUnitID, 20000, false)
		--NearestBossEnemyUnitDefID = Spring.GetUnitDefID(NearestBossEnemy)
		--if UnitDefs[NearestBossEnemyUnitDefID].canFly ~= true then
			local x,y,z = Spring.GetUnitPosition(NearestBossEnemy)
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z}, {0})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN, NearestBossEnemy, {0})
		--end
	end
end

function BossSpecAbiDGunFrenzy(n)
	if FinalBossUnitID then
		CurrentlyUsedPassiveAbility = "none"
		local r = math_random(1,4)
		local x,y,z = Spring.GetUnitPosition(FinalBossUnitID)
		if r == 1 then -- clockwise
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z-200}, {})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+100,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z-100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z+100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+100,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-100,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z+100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z-100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-100,y,z-200}, {"shift"})
		elseif r == 2 then -- anticlockwise
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z+200}, {})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+100,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z+100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z-100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+100,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-100,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z-100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z+100}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-100,y,z+200}, {"shift"})
		elseif r == 3 then -- clockwise but less
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z-200}, {})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z-200}, {"shift"})
		elseif r == 4 then -- anticlockwise but less
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z+200}, {})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z+200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x+200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z-200}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z}, {"shift"})
			Spring.GiveOrderToUnit(FinalBossUnitID, CMD.DGUN,{x-200,y,z+200}, {"shift"})
		end
	end
end










BossSpecialAbilitiesList = {
	BossSpecAbiDGun,
	BossSpecAbiDGun,
	BossSpecAbiDGun,
	BossSpecAbiDGun,
	BossSpecAbiDGunFrenzy,
	BossSpecAbiDGunFrenzy,
	BossSpecAbiDGunFrenzy,
	BossSpecAbiDGunFrenzy,
	BossSpecAbiDGunFrenzy,
	BossSpecAbiDGunFrenzy,
}
