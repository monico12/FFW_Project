package com.model
{
	[RemoteClass(alias="NationalForest")]
	[Bindable]
	public class CupcakeVO
	{
		firstName:String
		lastName:String
		address:String
		city:String
		state:String
		cupCake:String
		type:String
		description:String
		price:Number
		date:Date
		creditCard:Number
		creditExpiration:Date
		phoneNumber:Number
		emailAddress:String
		quantity:Number
		public function CupcakeVO()
		{
		}
	}
}