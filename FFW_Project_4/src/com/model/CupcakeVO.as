package com.model
{
	[RemoteClass(alias="CupCakes")]
	[Bindable]
	public class CupcakeVO
	{
		public var firstName:String;
		public var lastName:String;
		public var address:String;
		public var city:String;
		public var state:String;
		public var cupCake:String;
		public var type:String;
		public var description:String;
		public var price:Number;
		public var date:Date;
		public var creditCard:Number;
		public var creditExpiration:Date;
		public var phoneNumber:Number;
		public var emailAddress:String;
		public var quantity:Number;
		
		public function CupcakeVO()
		{
		}
	}
}