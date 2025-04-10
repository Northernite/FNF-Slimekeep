function onCreate()
	-- background shit
	
	makeLuaSprite('Sky', 'SmellsonBG/Sky', -1200, -900);
	setProperty('Sky.antialiasing', false); 
	setScrollFactor('Sky', 0.1, 0.1);
	scaleObject('Sky', 1, 1);
	
	makeLuaSprite('Cloud', 'SmellsonBG/Clouds', -1000, -1000);
	setProperty('Cloud.antialiasing', false); 
	setScrollFactor('Cloud', 0.5, 0.5);
	scaleObject('Cloud', 1, 1);
	
	makeLuaSprite('Background', 'SmellsonBG/Hill', -1200, -600);
	setProperty('Background.antialiasing', false); 
	setScrollFactor('Background', 0.8, 0.8);
	scaleObject('Background', 1, 1);
	
	makeLuaSprite('Trees', 'SmellsonBG/Trees', -1200, -1000);
	setProperty('Trees.antialiasing', false); 
	setScrollFactor('Trees', 0.8, 0.8);
	scaleObject('Trees', 1, 1);
	
	makeLuaSprite('Stage', 'SmellsonBG/Stage', -1400, -1000);
	setProperty('Stage.antialiasing', false); 
	setScrollFactor('Stage', 1, 1);
	scaleObject('Stage', 1, 1);
	
	makeLuaSprite('Foreground', 'SmellsonBG/CarBlurred', -800, -1000)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 2, 2);
	scaleObject('Foreground', 0.5, 0.5);

	makeLuaSprite('Sunshine', 'SmellsonBG/Sunshine', -800, -900)
	setProperty('Foreground.antialiasing', true); 
	setScrollFactor('Foreground', 2, 2);
	scaleObject('Foreground', 1.5, 1.5);
	
	addLuaSprite('Sky', false)
	addLuaSprite('Cloud', false)
	addLuaSprite('Background', false)
	addLuaSprite('Trees', false)
	addLuaSprite('Stage', false)
	addLuaSprite('Foreground', true)
	addLuaSprite('Sunshine', true)

	close(true);
end