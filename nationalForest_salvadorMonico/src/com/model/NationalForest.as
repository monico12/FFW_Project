package com.model
{
	[RemoteClass(alias="NationalForest")]
	[Bindable]
	public class NationalForest
	{
		public var id:int;
		public var state:String;
		public var area:Number;
		public var established:Date;
		public var closest_city:String;
		public var name:String;
		
		public function NationalForest()
		{
		}
	}
}