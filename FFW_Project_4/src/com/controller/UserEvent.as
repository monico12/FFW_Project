package com.controller
{
	import com.model.CupcakeVO;
	
	import flash.events.Event;
	
	public class UserEvent extends Event
	{
		public static const LOGIN:String = "login";
		public static const LOGOUT:String = "logout";
		public var cupcakeVO:CupcakeVO;
		public function UserEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new UserEvent(type, bubbles, cancelable);
		}
	}
}