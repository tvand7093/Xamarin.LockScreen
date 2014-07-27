using System;
using MonoTouch.UIKit;
using Xamarin.LockScreen.Interfaces;
using Xamarin.LockScreen.Security;
using MonoTouch.Foundation;

namespace Xamarin.LockScreen
{
	[Register("MainLockScreenController")]
	public class MainLockScreenController : UIViewController, ILockableScreen
	{
		private bool? isLocked;

		public bool IsLocked {
			get {
				if (isLocked == null) {
					isLocked = true;
				}
				return isLocked.Value;
			}
			set { isLocked = value; }
		}
		internal ILockScreenDelegate Locker { get; set; }
		public int AttemptsAllowed { get; set; }

		public MainLockScreenController ()
		{
		}

		public MainLockScreenController (IntPtr handle) : base (handle)
		{
		}

		public void Initialize(int attemptsAllowed, ILockScreenDelegate locker)
		{
			AttemptsAllowed = attemptsAllowed;
			Locker = locker;
		}

		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();

			// Release any cached data, images, etc that aren't in use.
		}

		[Action("SetPin")]
		public void SetPin()
		{
			var lockScreen = new LockScreenSetupController (Locker);
			lockScreen.Show (this);
		}

		[Action("Lock")]
		public void Lock()
		{
			LockScreenController lockScreen = new LockScreenController (Locker);
			lockScreen.SetAllowedAttempts (AttemptsAllowed);
			lockScreen.Show (this);
		}

		#region View lifecycle

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

		}

		public override void ViewDidAppear (bool animated)
		{
			if (Keychain.IsPasswordSet ()) {
				if(IsLocked)
					Lock ();
			} else {
				SetPin ();
			}
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

