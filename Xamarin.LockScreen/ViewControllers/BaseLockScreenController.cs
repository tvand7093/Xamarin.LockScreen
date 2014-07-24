using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace Xamarin.LockScreen
{
	[Register("BaseLockScreenController")]
	public class BaseLockScreenController : UIViewController
	{
		public BaseLockScreenController (IntPtr handle) : base (handle)
		{
		}
	}
}

