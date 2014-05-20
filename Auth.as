package   
{
	import com.shephertz.app42.paas.sdk.as3.App42API;
	import com.shephertz.app42.paas.sdk.as3.user.UserService;	
	import com.shephertz.app42.paas.sdk.as3.App42CallBack;
	import com.shephertz.app42.paas.sdk.as3.social.PublicProfile;
	import com.shephertz.app42.paas.sdk.as3.user.User;
	import com.shephertz.app42.paas.sdk.as3.App42Exception;	
	
	
	public class Auth 
	{
		var userService:UserService;
		
		public function Auth(apiKey:String, secretKey:String) 
		{
			//Initialization of API APP42
			App42API.initialize(apiKey, secretKey);
			//Get instance of the UserService API
			userService = App42API.buildUserService();
		}
		
		public function Login(username:String, password:String):void
		{
			userService.authenticate(username, password, new CallBack());
		}
		
		public function SignUp(username:String, password:String, email:String):void 
		{
			userService.createUser(username, password, email, new CallBack());
		}
		
		

	}	
}
