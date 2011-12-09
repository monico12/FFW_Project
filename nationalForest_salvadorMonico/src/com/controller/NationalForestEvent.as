package com.controller
{
	import flash.events.Event;
	
	public class NationalForestEvent extends Event
	{
		public static const LOADED:String = "loaded";
		public static const DELETED:String = "deledted";
		public static const ADDED:String = "added"
		public var nationalForest:Array;
		public function NationalForestEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			return new NationalForestEvent(type, bubbles, cancelable);
		}
	}
}