local height = 60 -- height of the banner in pixels
local BannerColor = '253b46'
local TextColor = 'ebe7ad'
local DefaultText = 'Goop - Remix by Anilmky -JUNO-' -- Change this
local songText = {
  --[[
    --EXAMPLE
  ['Tutorial'] = 'This is a preview on how to do this',
  ['dad battle'] = 'this will work'
  ]]
}
function onCreatePost()
  DefaultText = songText[songName:lower()] ~= nil and songText[songName:lower()] or DefaultText
  -- banner lol --
  makeLuaSprite('banner', nil, 0, -height)
  makeGraphic('banner', screenWidth, height, BannerColor)
  setProperty('banner.alpha', 0.6)
  setObjectCamera('banner', 'camHUD')
  addLuaSprite('banner', true)
  -- Texty Sexy --
  makeLuaText('bannerText', DefaultText, screenWidth, 0, -height)
  setTextSize('bannerText', math.floor(height*0.8))
  addLuaText('bannerText', true)
end
function onSongStart()
 addBanner(0, 0.2, 'expoIn')
end

function addBanner(y, speed, ease)
 setProperty('banner.y', -height)
 setProperty('bannerText.y', -height)
 doTweenY('bannerAdd', 'banner', y, speed, ease)
 doTweenY('bannerTAdd', 'bannerText', y, speed, ease)
 function onTweenCompleted(tag)
  if tag == 'bannerAdd' then runTimer('bannerRemove', 5) end
 end
 function onTimerCompleted(tag)
  if tag == 'bannerRemove' then
    doTweenY('bannerRemove', 'banner', -height, speed, ease)
    doTweenY('bannerTRemove', 'bannerText', -height, speed, ease)
  end
 end
end
-- Made by Skry#4271