package app.view {
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * @author krusty
	 */
	public class AppView extends Sprite {

		private var _textField:TextField;
		
		public function AppView()
		{
			if (stage == null) {
				addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			} else {
				onAddedToStage();
			}
		}
		
		private function onAddedToStage(event:Event = null):void
		{
			_textField = new TextField();
			_textField.border = true;
			
			addChild(_textField);
			
			dispatchEvent(new AppViewEvent(AppViewEvent.INITIALIZED));
		}
		
		public function showMessage(message:String):void
		{
			_textField.text = message;
		}
	}
}
