package {

	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;

	[SWF(width="800", height="600", backgroundColor="#DEDEDE", frameRate="40")]
	public class HelloWorld extends Sprite {

		private var sh: Shape;

		public function HelloWorld() {
			var textField: TextField = new TextField();
			textField.text = "Hi there!";
			addChild(textField);
			init() ;
		}

		private function init(): void {
			sh = new Shape();
			sh.graphics.beginFill(0xFF0000);
			sh.graphics.drawRect(-50,-50,100,100);
			sh.graphics.endFill() ;
			sh.x = 400 ;
			sh.y = 300 ;
			addChild(sh);
			addEventListener(Event.ENTER_FRAME, loop );
		}

		private function loop(event: Event): void {
			sh.rotationX += 20 ;
		}
	}
}
