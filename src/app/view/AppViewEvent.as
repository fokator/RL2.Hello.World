package app.view {
	import flash.events.Event;

	/**
	 * @author krusty
	 */
	public class AppViewEvent extends Event {

		public static const INITIALIZED:String = "AppViewEvent.INITIALIZED";

		public function AppViewEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}
	}
}
