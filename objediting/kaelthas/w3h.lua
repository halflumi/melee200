local b

b = BuffDefinition:new(BID.FLOATING_CHAOS, "BHfs")
b:setIconNormal(1, FLOATING_CHAOS.ICON)
b:setTooltipNormal(1, "Floating Chaos")
b:setTooltipNormalExtended(1,
    "This unit was hit by Floating Chaos."
)

b = BuffDefinition:new(BID.RAIN_OF_HELLFIRE_DOT, "BNrd")
b:setIconNormal(1, RAIN_OF_HELLFIRE.ICON)
b:setTooltipNormal(1, "Rain of Hellfire")
b:setTooltipNormalExtended(1,
    "This unit was hit by Rain of Hellfire; it will take damage over time."
)

b = BuffDefinition:new(BID.RAIN_OF_HELLFIRE_EFFECT, "XHbz")
b:setEffect(1, RAIN_OF_HELLFIRE.MDX)
b:setEffectSound(1, "")
b:setEffectSoundLooping(1, "")

b = BuffDefinition:new(BID.RAIN_OF_HELLFIRE_SOUND_EFFECT, "XHbz")
b:setEffect(1, "")
b:setEffectSound(1, "RainOfFireWave")
b:setEffectSoundLooping(1, "")
