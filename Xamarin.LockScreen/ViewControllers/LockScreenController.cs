using System;
using Xamarin.LockScreen.Views;
using Xamarin.LockScreen.Interfaces;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace Xamarin.LockScreen
{
	[Register("LockScreenController")]
	internal class LockScreenController : BaseLockScreenController
	{
		private LockScreenView lockScreen { get { return (LockScreenView)View; } }
		private int RemainingAttempts { get; set; }
		private int TotalAttempts { get; set; }
		private string LockedOutString { get; set; }
		private string PluralAttemptsLeftString { get; set;}
		private string SingleAttempLeftString { get; set; }
		private ILockScreenDelegate lockDelegate { get; set; }
		private bool IsPinValid 
		{
			get 
			{
				if (lockDelegate != null) {
					return lockDelegate.ValidatePin (this, CurrentPin);
				}
				return false;
			}
		}

		public LockScreenController (IntPtr handle) : base(handle) { }
		public LockScreenController(ILockScreenDelegate lockDelegate)
			: base(false, lockDelegate)
		{
			this.lockDelegate = lockDelegate;
			RemainingAttempts = -1;
			LockedOutString = "You have been locked out.".Translate ();
			PluralAttemptsLeftString = "attempts left".Translate ();
			SingleAttempLeftString = "attmpt left".Translate ();
		}

		public void UnlockScreen()
		{
			lockDelegate.UnlockWasSuccessfulForPadLockScreenViewController (this);
		}
		internal void ProcessFailure()
		{
			RemainingAttempts--;
			TotalAttempts++;
			lockScreen.ResetAnimated (true);
			lockScreen.AnimateFailureNotification ();
			if (RemainingAttempts > 1) {
				lockScreen.UpdateDetailLabelWithString (string.Format ("{0} {1}",
					RemainingAttempts, PluralAttemptsLeftString), true, null);
			} else if (RemainingAttempts == 1) {
				lockScreen.UpdateDetailLabelWithString (string.Format ("{0} {1}",
					RemainingAttempts, SingleAttempLeftString), true, null);
			} else if (RemainingAttempts == 0) {
				LockScreen ();
			}
			lockDelegate.UnlockWasUnsuccessful (CurrentPin, TotalAttempts, this);
			CurrentPin = string.Empty;
		}
		public void LockScreen()
		{
			lockScreen.UpdateDetailLabelWithString (LockedOutString, true, null);
			lockScreen.LockViewAnimated (true, null);
			lockDelegate.AttemptsExpiredForPadLockScreenViewController (this);
		}
		public void SetAllowedAttempts(int allowedAttempts)
		{
			TotalAttempts = 0;
			RemainingAttempts = allowedAttempts;
		}
		internal void SetLockedOutText(string text)
		{
			LockedOutString = text;
		}
		internal void PluralAttemptsLeft(string text)
		{
			PluralAttemptsLeftString = text;
		}
		internal void SetSingleAttemptText(string text)
		{
			SingleAttempLeftString = text;
		}
		protected override void ProcessPin ()
		{
			if (IsPinValid)
				UnlockScreen ();
			else
				ProcessFailure ();
		}
	}
}