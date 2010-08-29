/** 
 * AudioChannelManager.as
 * (c) 2010 Satori Canton
 * All Rights Reserved
 * LinkedIn/Facebook: Satori Canton
 * Twitter: @scanton
 * */
package com.actionscript.audio
{
	import com.actionscript.audio.interfaces.IAudioChannelManager;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	
	public class AudioChannelManager implements IAudioChannelManager
	{
		internal var _sounds:Vector.<Sound>;
		internal var _channels:Vector.<SoundChannel>;
		
		public function AudioChannelManager()
		{
			_sounds = new Vector.<Sound>(64, true);
			_channels = new Vector.<SoundChannel>(64, true);
		}
		
		public function play(channel:int, startTime:Number=0, loops:int=0, sndTransform:SoundTransform=null):SoundChannel
		{
			_channels[channel] = _sounds[channel].play(startTime, loops, sndTransform);
			return _channels[channel];
		}
		
		public function stop(channel:int):void
		{
			return _channels[channel].stop();
		}
		
		public function transform(channel:int, transform:SoundTransform):void
		{
			_channels[channel].soundTransform = transform;
		}
		
		public function position(channel:int, index:Number):void
		{
			if(_channels[channel] != null) _channels[channel].stop();
			_channels[channel] = _sounds[channel].play(index);
		}
		
		public function setSound(channel:int, sound:Sound):void
		{
			if(_channels[channel] != null) _channels[channel].stop();
			_sounds[channel] = sound;
			_channels[channel] = sound.play();
			_channels[channel].stop();
		}
		
		public function getSound(channel:int):Sound
		{
			return _sounds[channel];
		}
		
		public function stopAllSounds():void
		{
			var l:uint = _channels.length;
			while(l--)
			{
				_channels[l].stop();
			}
		}
		
		public function playAllSounds():void
		{
			var l:uint = _sounds.length;
			while(l--)
			{
				if(_channels[l] != null) _channels[l].stop();
				_channels[l] = _sounds[l].play();;
			}
		}
		
		public function transformAllSounds(transform:SoundTransform):void
		{
			var l:uint = _channels.length;
			while(l--)
			{
				_channels[l].soundTransform = transform;
			}
		}
		
		public function get numSounds():uint
		{
			return _sounds.length;
		}
	}
}