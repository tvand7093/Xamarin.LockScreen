using System;
using MonoTouch.Foundation;
using Xamarin.LockScreen.Interfaces;

namespace Xamarin.LockScreen
{
	[Register("LockScreenSetupController")]
	public class LockScreenSetupController : BaseLockScreenController
	{
		private ILockScreenSetupDelegate setupDelegate { get; set; }
		private string EnteredPin { get; set; }

		#region Constructors

		public LockScreenSetupController (IntPtr handle) : base(handle) { }

		public LockScreenSetupController (bool complexPin, ILockScreenSetupDelegate setupDelegate) 
			: base(complexPin)
		{
			this.setupDelegate = setupDelegate;
			this.EnteredPin = null;
		}
		public LockScreenSetupController (ILockScreenSetupDelegate setupDelegate)
		{
			this.setupDelegate = setupDelegate;
		}

		#endregion


		#region Pin Proccessing

		protected override void ProcessPin ()
		{
			if (!String.IsNullOrEmpty(EnteredPin))
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
		
			if (CurrentPin.Equals (EnteredPin)) {
				setupDelegate.PinSet (CurrentPin, this);
			} else {
				lockScreenView.UpdateDetailLabelWithString ("Pincode did not match.".Translate (), true, null);
				lockScreenView.AnimateFailureNotification ();
				lockScreenView.ResetAnimated (true);
				EnteredPin = null;
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

