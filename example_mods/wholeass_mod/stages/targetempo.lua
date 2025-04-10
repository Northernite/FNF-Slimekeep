function onCreate()
	-- background shit
	
	makeLuaSprite('Sky', 'SkyLayer-Dark', -600, -600);
	setProperty('Sky.antialiasing', false); 
	setScrollFactor('Sky', 0.1, 0.1);
	scaleObject('Sky', 10, 10);
	
	makeLuaSprite('Cloud', 'CloudLayer-Dark', -700, -400);
	setProperty('Cloud.antialiasing', false); 
	setScrollFactor('Cloud', 0.5, 0.5);
	scaleObject('Cloud', 10, 10);
	
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
	setProperty('Background.antialiasing', false); 
	setScrollFactor('Background', 0.8, 0.8);
	scaleObject('Background', 1, 1);
	
	makeLuaSprite('Sunshine', 'SunshineLayer', 300, 300)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 2, 2);
	scaleObject('Foreground', 1, 1);

	makeLuaSprite('Foreground', 'ForegroundLayer', -2000, -900)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 2, 2);
	scaleObject('Foreground', 1, 1);

	createInstance('Filter','flixel.addons.display.FlxBackdrop',{nil,0x01})
	loadGraphic('Filter','TargetempoFilter')
	setProperty('Filter.antialiasing',false)
	setProperty('Filter.velocity.x', 450)
	callMethod('Filter.setPosition',{-1300,-600})
	setProperty('Filter.alpha', 1)
	scaleObject('Filter', 3, 3);

	createInstance('Debris','flixel.addons.display.FlxBackdrop',{nil,0x01})
	loadGraphic('Debris','TargetempoDebris')
	setProperty('Debris.antialiasing',false)
	setProperty('Debris.velocity.x', 700)
	callMethod('Debris.setPosition',{-1300,-600})
	setProperty('Debris.alpha', 1)
	scaleObject('Debris', 10, 10);

	makeLuaSprite('FilterStatic', 'AltBlueFilter', -1300,-600)
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
	addLuaSprite('Foreground', true)
	addInstance('Filter', true)
	addInstance('Debris', true)
	addLuaSprite('FilterStatic', true)


end