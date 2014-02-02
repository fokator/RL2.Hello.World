package app.controller {
	import flash.events.Event;

	/**
	 * @author krusty
	 */
	public class ShowMessageEvent extends Event {
		
		public static const SHOW_MESAGE:String = "ShowMessageEvent.SHOW_MESAGE";
		
		private var _message:String;
		
		public function ShowMessageEvent(type:String, message:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
			
			_message = message;
		}

		public function get message():String
		{
			return _message;
		}
	}
}
