using System;
using System.Drawing;

using MonoTouch.Foundation;
using MonoTouch.UIKit;
using Xamarin.LockScreen.Interfaces;
using Xamarin.LockScreen;
using Xamarin.LockScreen.Security;

namespace Example
{
	//In order to provide locking features to a controller, simply inihert from MainLockScreenController
	//and call the base.Initialize function.
	public partial class ExampleViewController : MainLockScreenController
	{
		public ExampleViewController (IntPtr handle) : base (handle)
		{
		}
		public ExampleViewController ()
		{

		}
		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();
			
			// Release any cached data, images, etc that aren't in use.
		}


		#region View lifecycle

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void ViewWillAppear (bool animated)
		{
			//this is the only call needed to start using the locking ability.
			//make sure the call comes before the base.ViewWillAppear method.
			base.Initialize (3, new LockHandler (this));

			base.ViewWillAppear (animated);

		}

		public override void ViewDidAppear (bool animated)
		{
			base.ViewDidAppear (animated);
		}

		public override void ViewWillDisappear (bool animated)
		{
			base.ViewWillDisappear (animated);
		}

		public override void ViewDidDisappear (bool animated)
		{
			base.ViewDidDisappear (animated);
		}

		#endregion
	}
}

