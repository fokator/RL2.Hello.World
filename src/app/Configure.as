package app {
	import app.controller.ShowMessageCommand;
	import app.controller.ShowMessageEvent;
	import app.model.AppModel;
	import app.model.IAppModel;
	import app.view.AppView;
	import app.view.AppViewMediator;

	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IContext;
	
	/**
	 * @author krusty
	 */
	public class Configure implements IConfig {

		[Inject]
		public var context:IContext;
		
		[Inject]
		public var contextView:ContextView;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		[Inject]
		public var mediatorMap:IMediatorMap;

		public function configure():void
		{
			// models, services
			context.injector.map(IAppModel).toSingleton(AppModel);
			
			// commands
			commandMap.map(ShowMessageEvent.SHOW_MESAGE, ShowMessageEvent).toCommand(ShowMessageCommand);
			
			// mediators
			mediatorMap.map(AppView).toMediator(AppViewMediator);
		}
	}
}
