package
{
	import com.shephertz.app42.paas.sdk.as3.App42API;
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	import fl.controls.Button;
	
	public class Main extends MovieClip
	{
		/* Zombies Declaration 	*/
		//var login_btn:Button;
		//var username_field:TextField = new TextField();
		//var password_field:TextField = new TextField();
		/* ******************** */		
		
		/* Session Information */
		private var apiKey:String = "ff25e441c66f74c944d8e531027ecd42a6fc53f0108b33a8e186a67266ef1885";
		private var secretKey:String = "62d0af86a5c9c020c794725c39e5f9977d932f3f2d974efb5c2019d971510dfc";
		var username:String;
		var password:String;
		var session:Auth;
		/* ******************* */
		
		public function Main()
		{
			super();
			login_btn.addEventListener(MouseEvent.MOUSE_UP, loginAction);
			session = new Auth(apiKey, secretKey);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyboardAction);
		}	
		
		public function keyboardAction(e:KeyboardEvent):void
		{
			if(e.keyCode == 13)
			{
				login();
			}
		}
		
		public function loginAction(e:MouseEvent):void
		{
			login();
		}
		
		public function login()
		{
			username = username_field.text;
			password = password_field.text;
			
			session.Login(username, password);	
		}
		
		public function testClick(e:MouseEvent)
		{
			trace("Clicked");
		}
	}
}