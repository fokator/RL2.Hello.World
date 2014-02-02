package {
	import app.Configure;
	import app.view.AppView;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;

	import flash.display.Sprite;
	
	public class RL2HelloWorld extends Sprite {

		private var _context:IContext;

		public function RL2HelloWorld()
		{
			_context = new Context().
			install(MVCSBundle).
			configure(new ContextView(this), Configure);
			
			addChild(new AppView());
		}
	}
}
