using System;
using MonoTouch.Foundation;
using Xamarin.LockScreen.Interfaces;
using MonoTouch.UIKit;

namespace Xamarin.LockScreen
{
	[Register("LockScreenSetupController")]
	internal class LockScreenSetupController : BaseLockScreenController
	{
		private ILockScreenDelegate setupDelegate { get; set; }
		private string EnteredPin { get; set; }

		#region Constructors

		public LockScreenSetupController (IntPtr handle) : base(handle) { }

		public LockScreenSetupController (ILockScreenDelegate setupDelegate) 
			: base(false, setupDelegate)
		{
			this.setupDelegate = setupDelegate;
			this.EnteredPin = string.Empty;
			this.lockScreenView.DetailLabel.Text = "Please enter new pin.";
		}

		#endregion


		#region Pin Proccessing

		protected override void ProcessPin ()
		{
			if (String.IsNullOrEmpty(EnteredPin))
			{
				StartPinConfirmation ();
			}
			else
			{
				ValidateConfirmedPin ();
			}
		}

		private void StartPinConfirmation()
		{
			EnteredPin = CurrentPin;
			CurrentPin = string.Empty;
			lockScreenView.UpdateDetailLabelWithString("Re-enter your new pincode".Translate(),
				true, null);
			lockScreenView.ResetAnimated(true);
		}
		private void ValidateConfirmedPin()
		{
			if (EnteredPin.Equals (CurrentPin)) {
				setupDelegate.PinSet (CurrentPin, this);
			} else {
				lockScreenView.UpdateDetailLabelWithString ("Pincode mis-match. Try again.".Translate (), true, null);
				lockScreenView.AnimateFailureNotification ();
				lockScreenView.ResetAnimated (true);
				CurrentPin = string.Empty;
			}
		}

		#endregion

		#region View Controller Stuff

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
		}
		#endregion

	}
}

