UPDATE Resources
SET Happiness = '2'
WHERE Happiness = '4';

INSERT INTO Resource_YieldChangeFromMonopoly
	(ResourceType, YieldType, Yield)
VALUES
	('RESOURCE_PERFUME', 'YIELD_GOLD', 3),
	('RESOURCE_TOBACCO', 'YIELD_FAITH', 2),
	('RESOURCE_CORAL', 'YIELD_SCIENCE', 2),
	('RESOURCE_LAPIS', 'YIELD_GOLDEN_AGE_POINTS', 2),
	('RESOURCE_JADE', 'YIELD_GOLDEN_AGE_POINTS', 2);

INSERT INTO Resource_CityYieldModFromMonopoly
	(ResourceType, YieldType, Yield)
VALUES
	('RESOURCE_OLIVE', 'YIELD_FOOD', 10),
	('RESOURCE_COFFEE', 'YIELD_PRODUCTION', 10),
	('RESOURCE_TEA', 'YIELD_CULTURE', 10);

-- Temple -- Amber

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_TEMPLE', 'RESOURCE_AMBER' , 'YIELD_CULTURE' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_TEMPLE', 'RESOURCE_AMBER' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_BASILICA', 'RESOURCE_AMBER' , 'YIELD_GOLD' , '1'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_BASILICA', 'RESOURCE_AMBER' , 'YIELD_CULTURE' , '1'
;

-- Amphitheater -- Lapis Lazuli

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_AMPHITHEATER', 'RESOURCE_LAPIS' , 'YIELD_CULTURE' , '2'
;

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_ODEON', 'RESOURCE_LAPIS' , 'YIELD_CULTURE' , '2'
;

-- Coffee/Tea/Tobacco -- Customs House (and Hanse)

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MINT', 'RESOURCE_TOBACCO' , 'YIELD_GOLD' , '3';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MINT', 'RESOURCE_TEA' , 'YIELD_GOLD' , '2';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MINT', 'RESOURCE_TEA' , 'YIELD_PRODUCTION' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MINT', 'RESOURCE_COFFEE' , 'YIELD_PRODUCTION' , '2';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MINT', 'RESOURCE_COFFEE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_HANSE', 'RESOURCE_TOBACCO' , 'YIELD_GOLD' , '3';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_HANSE', 'RESOURCE_TEA' , 'YIELD_GOLD' , '2';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_HANSE', 'RESOURCE_TEA' , 'YIELD_PRODUCTION' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_HANSE', 'RESOURCE_COFFEE' , 'YIELD_PRODUCTION' , '2';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_HANSE', 'RESOURCE_COFFEE' , 'YIELD_GOLD' , '1';

-- Jade -- Stone Works

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_STONE_WORKS', 'RESOURCE_JADE' , 'YIELD_PRODUCTION' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_STONE_WORKS', 'RESOURCE_JADE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MUD_PYRAMID_MOSQUE', 'RESOURCE_JADE' , 'YIELD_PRODUCTION' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_MUD_PYRAMID_MOSQUE', 'RESOURCE_JADE' , 'YIELD_GOLD' , '1';

-- Olives, Perfume -- Colosseum

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_FOOD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_CULTURE' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_GOLD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_OLIVE' , 'YIELD_FOOD' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_CULTURE' , '1';

INSERT INTO Building_ResourceYieldChanges (BuildingType, ResourceType, YieldType, Yield)
SELECT 'BUILDING_FLAVIAN_COLOSSEUM', 'RESOURCE_PERFUME' , 'YIELD_GOLD' , '1';


-- Coral -- Covered by Lighthouse


-- Monopoly Information

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_AMBER';

	UPDATE Resources
	SET MonopolyHappiness = '6'
	WHERE Type = 'RESOURCE_AMBER';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_COFFEE';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_CORAL';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_GLASS';

	UPDATE Resources
	SET MonopolyHappiness = '6'
	WHERE Type = 'RESOURCE_GLASS';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_JADE';

	UPDATE Resources
	SET MonopolyGALength = '25'
	WHERE Type = 'RESOURCE_JADE';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_LAPIS';

	UPDATE Resources
	SET MonopolyGALength = '25'
	WHERE Type = 'RESOURCE_LAPIS';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_OLIVE';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_PERFUME';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_TEA';

	UPDATE Resources
	SET IsMonopoly = '1'
	WHERE Type = 'RESOURCE_TOBACCO';

	-- Text files for changes.

	-- Other Text
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_HAPPINESS'
	WHERE MonopolyHappiness = 6;

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_GA_LENGTH'
	WHERE MonopolyGALength = 25;

	-- Exception for Porcelain: +30% length and no tile bonus
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_GA_LENGTH_ONLY'
	WHERE Type = 'RESOURCE_PORCELAIN';

	-- Yield Text
	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_CULTURE'
	WHERE Type = 'RESOURCE_TEA';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_SCIENCE'
	WHERE Type = 'RESOURCE_CORAL';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_FOOD'
	WHERE Type = 'RESOURCE_OLIVE';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_MOD_PRODUCTION'
	WHERE Type = 'RESOURCE_COFFEE';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_FAITH'
	WHERE Type = 'RESOURCE_TOBACCO';

	UPDATE Resources
	SET Help = 'TXT_KEY_RESOURCE_MONOPOLY_YIELD_GOLD'
	WHERE Type = 'RESOURCE_PERFUME';

-- Reveals


	-- 2 
	UPDATE Resources
	SET TechReveal = 'TECH_PHILOSOPHY'
	WHERE Type = 'RESOURCE_TEA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_PHILOSOPHY'
	WHERE Type = 'RESOURCE_COFFEE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_MATHEMATICS'
	WHERE Type = 'RESOURCE_TOBACCO'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_BRONZE_WORKING'
	WHERE Type = 'RESOURCE_AMBER'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_BRONZE_WORKING'
	WHERE Type = 'RESOURCE_JADE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_OLIVE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_PHILOSOPHY'
	WHERE Type = 'RESOURCE_PERFUME'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_OPTICS'
	WHERE Type = 'RESOURCE_CORAL'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	UPDATE Resources
	SET TechReveal = 'TECH_THEOLOGY'
	WHERE Type = 'RESOURCE_LAPIS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 2);

	-- 3
	UPDATE Resources
	SET TechReveal = 'TECH_PHILOSOPHY'
	WHERE Type = 'RESOURCE_COFFEE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_PHILOSOPHY'
	WHERE Type = 'RESOURCE_TEA'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_MATHEMATICS'
	WHERE Type = 'RESOURCE_TOBACCO'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_BRONZE_WORKING'
	WHERE Type = 'RESOURCE_AMBER'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_BRONZE_WORKING'
	WHERE Type = 'RESOURCE_JADE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_CALENDAR'
	WHERE Type = 'RESOURCE_OLIVE'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_PHILOSOPHY'
	WHERE Type = 'RESOURCE_PERFUME'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_OPTICS'
	WHERE Type = 'RESOURCE_CORAL'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);

	UPDATE Resources
	SET TechReveal = 'TECH_THEOLOGY'
	WHERE Type = 'RESOURCE_LAPIS'AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RESOURCE_REVEAL' AND Value= 3);
