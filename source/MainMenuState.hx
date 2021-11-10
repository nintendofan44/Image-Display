package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.addons.ui.FlxInputText;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MainMenuState extends FlxState
{
	var loadButton:FlxButton;

	public static var daText:String;

	var type:FlxInputText;

	override public function create()
	{
		super.create();

		loadButton = new FlxButton(0, 550, "Load", loadImg);
		loadButton.setGraphicSize(100, 50);
		loadButton.screenCenter(X);
		add(loadButton);

		type = new FlxInputText(0, 300, 550, '', 36, FlxColor.WHITE, FlxColor.BLACK);
		type.fieldBorderColor = FlxColor.WHITE;
		type.fieldBorderThickness = 3;
		type.maxLength = 20;
		type.screenCenter(X);
		type.y += 75;
		add(type);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function loadImg()
	{
		FlxG.switchState(new PlayState());
		daText = type.text;
		FlxG.sound.playMusic(AssetPaths.sound(daText), 1, false);
	}
}
