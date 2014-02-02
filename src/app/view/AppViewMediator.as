package app.view {
	import app.controller.ShowMessageEvent;
	import app.model.AppModelEvent;
	import app.model.IAppModel;

	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * @author krusty
	 */
	public class AppViewMediator extends Mediator {
		
		[Inject]
		public var model:IAppModel;
		
		[Inject]
		public var view:AppView;
		
		public function AppViewMediator()
		{
			
		}
		
		override public function initialize():void
		{
			// context listeners
			addContextListener(AppModelEvent.MESSAGE_CHANGED, onMessageChanged);
			
			// view listeners
			view.addEventListener(AppViewEvent.INITIALIZED, onViewInitialized);
		}
		
		override public function destroy():void
		{
			// context listeners
			super.destroy();
			
			// view listeners
			view.removeEventListener(AppViewEvent.INITIALIZED, onViewInitialized);
		}
		
		private function onViewInitialized(event:AppViewEvent):void
		{
			// dispatch to shared dispatcher
			dispatch(new ShowMessageEvent(ShowMessageEvent.SHOW_MESAGE, "Hello World"));
		}
		
		private function onMessageChanged(event:AppModelEvent):void
		{
			view.showMessage(model.helloMessage);
		}
	}
}
