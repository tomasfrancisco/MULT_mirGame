package   
{
	import com.shephertz.app42.paas.sdk.as3.App42CallBack;
	import com.shephertz.app42.paas.sdk.as3.App42Exception;
	
	public class CallBack implements App42CallBack
	{
		public function onSuccess(response:Object):void
		{		
			trace("Success!");		
		}
		
		public function onException(exception:App42Exception):void
		{
			trace("Exception Message: " + exception);
		}
	}
	
}
