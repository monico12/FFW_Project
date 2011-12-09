package com.controller
{
	import com.model.CupcakeVO;
	
	import flash.events.Event;
	
	public class OrderEvent extends Event
	{
		public static const ORDERED:String = "ordered";
		public var cupcakeOrderVO:CupcakeVO;
		public function OrderEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new OrderEvent(type, bubbles, cancelable);
		}
	}
}