using System;
using Xamarin.LockScreen.Security;
using MonoTouch.UIKit;

namespace Example
{
	public class LockDelegate : LockHandler
	{
		public LockDelegate (UIViewController parent) : base(parent)
		{
		}

		//Here you can override any functionality you want...

	}
}

