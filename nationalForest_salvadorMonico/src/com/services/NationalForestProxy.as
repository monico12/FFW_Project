package com.services
{
	import com.controller.NationalForestEvent;
	import com.model.NationalForest;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.NetConnection;
	import flash.net.Responder;
	
	[Event(name="loaded", type="com.controller.NationalForestEvent")]
	[Event(name="deleted", type="com.controller.NationalForestEvent")]
	[Event(name="added", type="com.controller.NationalForestEvent")]
	public class NationalForestProxy extends EventDispatcher
	{
		private var _nc:NetConnection;
		private var _res:Responder;
		
		public function NationalForestProxy(target:IEventDispatcher=null)
		{
			super(target);
			_nc = new NetConnection();
			_nc.connect("http://www.wddbs.com/~ahodgkiss/ffw/zend/library/index.php");
		}
		
		public function getForest():void
		{
			_res = new Responder(onForestLoaded, onFail);
			_nc.call("ForestService.readForests", _res);
		}
		
		public function deleteForest(id:int):void
		{
			_res = new Responder(onForestDelete, onFail);
			_nc.call("ForestService.deleteForest", _res, id);
		}
		
		public function addForest(forestVO:NationalForest):void{
			_res = new Responder(onForestAdd, onFail);
			_nc.call("ForestService.createForest", _res, forestVO);
		}
		
		private function onForestAdd():void
		{
			
		}
		
		private function onForestDelete(temp:Object):void
		{
				
		}
		
		private function onFail(error:Object):void
		{
			
		}
		
		private function onForestLoaded(data:Array):void
		{
			var forestEvent:NationalForestEvent = new NationalForestEvent(NationalForestEvent.LOADED);
			forestEvent.nationalForest = data;
			this.dispatchEvent(forestEvent);
		}
	}
}