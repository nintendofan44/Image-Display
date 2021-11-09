package;

import flixel.FlxG;
import openfl.utils.Assets;

using StringTools;

class CoolFunctions
{
	public static function precacheSound(sound:String, ?library:String = null):Void
	{
		if (!Assets.cache.hasSound(AssetPaths.sound(sound, library)))
		{
			FlxG.sound.cache(AssetPaths.sound(sound, library));
		}
	}

	public static function browserLoad(site:String)
	{
		#if linux
		Sys.command('/usr/bin/xdg-open', [site]);
		#else
		FlxG.openURL(site);
		#end
	}
}
