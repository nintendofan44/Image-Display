package;

import MainMenuState.daText;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxTimer;

class PlayState extends FlxState
{
	var text:FlxText;
	var text2:FlxText;
	var leaveButton:FlxButton;

	override public function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite(0, 0).loadGraphic(AssetPaths.image(daText));
		bg.scrollFactor.x = 0;
		bg.scrollFactor.y = 0;
		bg.setGraphicSize(Std.int(bg.width * 1));
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;
		add(bg);

		text = new FlxText(0, 1, 0, "This is what you typed:", 64);
		text.screenCenter(X);
		//add(text);

		text2 = new FlxText(0, 0, 0, daText, 64);
		text2.screenCenter();
		add(text2);

		leaveButton = new FlxButton(0, 550, "Leave", leave);
		leaveButton.setGraphicSize(100, 50);
		leaveButton.screenCenter(X);
		add(leaveButton);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	function leave()
	{
		FlxG.switchState(new MainMenuState());
		remove(leaveButton);
	}
}
