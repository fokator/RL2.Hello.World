package app.model {
	import flash.events.IEventDispatcher;
	
	/**
	 * @author krusty
	 */
	public class AppModel implements IAppModel {

		[Inject]
		public var sharedDispatcher:IEventDispatcher;

		private var _message:String;
		
		public function AppModel()
		{
			_message = null;
		}

		public function get helloMessage():String
		{
			return _message;
		}

		public function setMessage(message:String):void
		{
			_message = message;
			
			sharedDispatcher.dispatchEvent(new AppModelEvent(AppModelEvent.MESSAGE_CHANGED));
		}
		
	}
}
