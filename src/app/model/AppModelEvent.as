package app.model {
	import flash.events.Event;

	/**
	 * @author krusty
	 */
	public class AppModelEvent extends Event {

		public static const MESSAGE_CHANGED:String = "AppModelEvent.MESSAGE_CHANGED";

		public function AppModelEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super(type, bubbles, cancelable);
		}
	}
}
