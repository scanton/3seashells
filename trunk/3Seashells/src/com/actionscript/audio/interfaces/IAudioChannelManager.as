package com.actionscript.audio.interfaces
{
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;

	public interface IAudioChannelManager
	{
		function play(channel:int, startTime:Number = 0, loops:int = 0, sndTransform:SoundTransform = null):SoundChannel
		function stop(channel:int):void;
		function transform(channel:int, transform:SoundTransform):void;
		function position(channel:int, index:Number):void;
		function setSound(channel:int, sound:Sound):void;
		function getSound(channel:int):Sound;
		function stopAllSounds():void;
		function playAllSounds():void;
		function transformAllSounds(transform:SoundTransform):void;
		function get numSounds():uint;
	}
}