package com.service
{
	import com.controller.OrderEvent;
	import com.model.CupcakeVO;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.NetConnection;
	import flash.net.Responder;
	
	public class Service extends EventDispatcher
	{
		private var _nc:NetConnection;
		private var _res:Responder;
		
		public function Service(target:IEventDispatcher=null)
		{
			super(target);
			_nc = new NetConnection();
			_nc.connect("http://wddbs.com/~ahodgkiss/ffw/zend/library/index.php");
		}
		
		public function readCupcakes():void
		{
			_res = new Responder(onCupcakesLoaded, onFail);
			_nc.call("CakeService.readCakes", _res);
		}
		
		private function onFail():void
		{
			
		}
		
		private function onCupcakesLoaded(data:Array):void
		{
			var cupcakeEvent:OrderEvent = new OrderEvent(OrderEvent.LOADED);
			cupcakeEvent.cupcakeArray = data;
			this.dispatchEvent(cupcakeEvent);
		}
		
		private function createOrder(cupcakeOrder:CupcakeVO):void
		{
			_res = new Responder(onCupcakesOrder, onFail);
			_nc.call("CakesService.createOrder", _res, cupcakeOrder);
		}
		
		private function onCupcakesOrder(data:CupcakeVO):void
		{
			var cupcakeEvent:OrderEvent = new OrderEvent(OrderEvent.ORDERED);
			cupcakeEvent.cupcakeOrderVO = data;
			this.dispatchEvent(cupcakeEvent);
		}
	}
}