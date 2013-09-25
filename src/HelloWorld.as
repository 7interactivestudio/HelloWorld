package {

	import flash.display.Sprite;
	import flash.text.TextField;

	[SWF(width="800", height="600", backgroundColor="#DEDEDE", frameRate="40")]
	public class HelloWorld extends Sprite {
		public function HelloWorld() {
			var textField: TextField = new TextField();
			textField.text = "Hi there!";
			addChild(textField);
		}
	}
}
