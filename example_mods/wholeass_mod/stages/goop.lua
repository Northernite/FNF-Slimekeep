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
	
	makeAnimatedLuaSprite('Slimes', 'BGSlimes', -740, -220);
	addAnimationByPrefix('Slimes', 'BGSlimes', 'BGSlimes', 6, true)
	setProperty('Slimes.antialiasing', false); 
	setScrollFactor('Slimes', 1, 1);
	scaleObject('Slimes', 1, 1);
	
	makeLuaSprite('Sunshine', 'SunshineLayer', 300, 300)
	setProperty('Sunshine.antialiasing', true); 
	setScrollFactor('Sunshine', 2, 2);
	scaleObject('Sunshine', 1, 1);

	makeLuaSprite('Foreground', 'ForegroundLayer', -1500, -900)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 1.3, 1.3);
	scaleObject('Foreground', 1, 1);
	
	makeLuaSprite('FilterStatic', 'AltGreenFilter', -1300,-600)
	setProperty('FilterStatic.antialiasing', true); 
	setScrollFactor('FilterStatic', 0, 0);
	scaleObject('FilterStatic', 2, 2);
	setProperty('FilterStatic.alpha', 1)
	screenCenter('FilterStatic')

	addLuaSprite('Sky', false)
	addLuaSprite('Cloud', false)
	addLuaSprite('Background', false)
	addLuaSprite('Stage', false)
	addLuaSprite('Slimes', false)
	addLuaSprite('Sunshine', true)
	addLuaSprite('Foreground', true)
	addLuaSprite('FilterStatic', true)

end