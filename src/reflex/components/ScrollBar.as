package reflex.components
{
	import legato.components.ScrollBarGraphic;
	
	import reflex.behaviors.SlideBehavior;
	import reflex.data.ISpan;
	import reflex.events.PropertyEvent;
	
	public class ScrollBar extends Component
	{
		
		private var _position:ISpan;
		
		[Bindable(event="positionChange")]
		public function get position():ISpan { return _position; }
		public function set position(value:ISpan):void {
			if(_position == value) {
				return;
			}
			PropertyEvent.dispatchChange(this, "position", _position, _position = value);
		}
		
		public function ScrollBar()
		{
			skin = new ScrollBarGraphic();
			behaviors.slide = new SlideBehavior(this);
		}
		
		/*protected function init():void
		{
			//var scrollBarSkin:ScrollBarSkin = new ScrollBarSkin();
			skin = new ScrollBarGraphic();
			var slideBehavior:SlideBehavior = new SlideBehavior(this);
			behaviors.slide = slideBehavior;
			var stepBehavior:StepBehavior = new StepBehavior(this);
			behaviors.step = stepBehavior;
//			position = scrollBarSkin.position = slideBehavior.position = stepBehavior.position;
		}
		*/
	}
}