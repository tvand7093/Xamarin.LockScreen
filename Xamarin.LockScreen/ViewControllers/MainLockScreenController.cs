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
		private UIColor backgroundColor;
		private NSUserDefaults settings = NSUserDefaults.StandardUserDefaults;

		public bool IsLocked {
			get {
				return settings.BoolForKey ("IsLocked");
			}
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
		public void Initialize(int attemptsAllowed, ILockScreenDelegate locker,
			UIColor backgroundColor)
		{
			Initialize (attemptsAllowed, locker);
			this.backgroundColor = backgroundColor;
		}
		public override void DidReceiveMemoryWarning ()
		{
			// Releases the view if it doesn't have a superview.
			base.DidReceiveMemoryWarning ();

			// Release any cached data, images, etc that aren't in use.
		}

		[Action("SetPin")]
		public virtual void SetPin()
		{
			var lockScreen = new LockScreenSetupController (Locker);
			if(backgroundColor != null)
				lockScreen.View.BackgroundColor = backgroundColor;

			UnlockApplication ();
			lockScreen.Show (this);
		}

		[Action("Lock")]
		public virtual void Lock()
		{
			LockScreenController lockScreen = new LockScreenController (Locker);
			lockScreen.SetAllowedAttempts (AttemptsAllowed);

			if(backgroundColor != null)
				lockScreen.View.BackgroundColor = backgroundColor;

			LockApplication ();
			lockScreen.Show (this);
		}

		public static void UnlockApplication()
		{
			NSUserDefaults settings = NSUserDefaults.StandardUserDefaults;
			settings.SetBool (false, "IsLocked");
			settings.Synchronize ();
		}

		public static void LockApplication()
		{
			NSUserDefaults settings = NSUserDefaults.StandardUserDefaults;
			settings.SetBool (true, "IsLocked");
			settings.Synchronize ();
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

