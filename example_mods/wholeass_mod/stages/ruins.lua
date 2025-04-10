function onCreate()
	-- background shit
	
	makeLuaSprite('Sky', 'SkyLayer', -600, -600);
	setProperty('Sky.antialiasing', false); 
	setScrollFactor('Sky', 0.1, 0.1);
	scaleObject('Sky', 1, 1);
	
	makeLuaSprite('Cloud', 'CloudLayer', -700, -400);
	setProperty('Cloud.antialiasing', false); 
	setScrollFactor('Cloud', 0.5, 0.5);
	scaleObject('Cloud', 1, 1);
	
	makeLuaSprite('Background', 'BackgroundLayer', -1200, -900);
	setProperty('Background.antialiasing', false); 
	setScrollFactor('Background', 0.8, 0.8);
	scaleObject('Background', 1, 1);
	
	makeLuaSprite('Stage', 'StageLayer', -1400, -900);
	setProperty('Stage.antialiasing', false); 
	setScrollFactor('Stage', 1, 1);
	scaleObject('Stage', 1, 1);
	
	makeLuaSprite('Sunshine', 'SunshineLayer', 300, 300)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 2, 2);
	scaleObject('Foreground', 1, 1);

	makeLuaSprite('Foreground', 'ForegroundLayer', -2000, -900)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 2, 2);
	scaleObject('Foreground', 1, 1);

	makeLuaSprite('FilterStatic', 'AltYellowFilter', -1300,-600)
	setProperty('FilterStatic.antialiasing', true); 
	setScrollFactor('FilterStatic', 0, 0);
	scaleObject('FilterStatic', 2, 2);
	setProperty('FilterStatic.alpha', 1)
	screenCenter('FilterStatic')

	addLuaSprite('Sky', false)
	addLuaSprite('Cloud', false)
	addLuaSprite('Background', false)
	addLuaSprite('Stage', false)
	addLuaSprite('Sunshine', true)
	addLuaSprite('Foreground', true)
	addLuaSprite('FilterStatic', true)


end