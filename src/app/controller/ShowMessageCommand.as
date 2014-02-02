package app.controller {
	import app.model.IAppModel;

	import robotlegs.bender.bundles.mvcs.Command;

	/**
	 * @author krusty
	 */
	public class ShowMessageCommand extends Command {
		
		[Inject]
		public var event:ShowMessageEvent;
		
		[Inject]
		public var model:IAppModel;
		
		override public function execute():void
		{
			model.setMessage(event.message);
		}
		
		public function ShowMessageCommand()
	}
}
