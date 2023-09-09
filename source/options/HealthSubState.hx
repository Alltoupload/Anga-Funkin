package options;

class HealthSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Health Settings';
		rpcTitle = 'Health Settings Menu'; // for Discord Rich Presence

		var option:Option = new Option('Health Drain', 'Do you want your health to drain when the opponent hits a note?', 'hpDrain', 'bool');
		option.scrollSpeed = 5;
		addOption(option);

		var option:Option = new Option('HP drain amount', 'Changes how much the opponent drains your HP', 'hpDrainAmount', 'percent');
		option.scrollSpeed = 5;
		option.minValue = 0.01;
		option.decimals = 4;
		option.maxValue = 1;
		option.changeValue = 0.0001;
		addOption(option);

		var option:Option = new Option('Health Drain Stop', 'Do you want your health to stop after a centain value?', 'hpDrainStop', 'bool');
		option.scrollSpeed = 5;
		addOption(option);

		var option:Option = new Option('HP drain stop value', 'Changes at what HP it stops', 'hpDrainStopValue', 'percent');
		option.scrollSpeed = 5;
		option.minValue = 0.01;
		option.maxValue = 1;
		option.changeValue = 0.0001;
		option.decimals = 4;
		addOption(option);
		
		var option:Option = new Option('Only Show The Icons', 'If checked, hides the health bar', 'onlyIcons', 'bool');
		option.scrollSpeed = 5;
		addOption(option);

		super();
	}
}
