using System;
using Xamarin.LockScreen.Interfaces;
using Xamarin.LockScreen;
using MonoTouch.UIKit;
using Xamarin.LockScreen.Security;
using MonoTouch.Foundation;

namespace Xamarin.LockScreen.Security
{
	public class LockHandler : ILockScreenDelegate
	{
		private UIViewController parent;

		public LockHandler (UIViewController parent)
		{
			this.parent = parent;
		}
		public virtual async void UnlockWasCancelledForPadLockScreen (BaseLockScreenController padLockScreenController)
		{
			await parent.DismissViewControllerAsync (true);
		}
		public virtual async void UnlockWasSuccessfulForPadLockScreenViewController (BaseLockScreenController padLockScreenController)
		{
			MainLockScreenController.UnlockApplication ();
			await parent.DismissViewControllerAsync (true);
		}
		public virtual void UnlockWasUnsuccessful (string badPin, int afterAttempt, BaseLockScreenController padLockScreenController)
		{
			Console.WriteLine ("Failed attempt number {0} with pin: {1}", afterAttempt, badPin);
		}

		public virtual void AttemptsExpiredForPadLockScreenViewController (BaseLockScreenController padLockScreenController)
		{
			Console.WriteLine ("User has been locked out...");
		}
		public virtual bool ValidatePin (BaseLockScreenController padLockScreenController, string pin)
		{
			var savedPin = Keychain.GetPassword ();
			return savedPin.Equals (pin);
		}

		/// <summary>
		/// <para>
		/// Called right after the pin has been verified and set. Then saves the pin to the user's keychain.
		///  Override this to perform custom saves of pin.</para>
		/// <para></para>
		/// <para>
		/// NOTE: At a minimum when overriding, call
				///  <code>
				/// ((ILockableScreen)padLockScreenSetupViewController).IsLocked = false;
				/// </code>  
		/// to notify the controller to not re-present the lock screen.
		/// </para>
		/// </summary>
		/// <param name="pin">The pin the user entered.</param>
		/// <param name="padLockScreenSetupViewController">The controller who is in charge of setting the new pin.</param>
		/// <remarks>>At a minimum when overriding, call ((ILockableScreen)parent).IsLocked = false; to 
		/// notify the controller to not re-present the lock screen.
		/// </remarks>
		public virtual async void PinSet(string pin, BaseLockScreenController padLockScreenSetupViewController)
		{
			Keychain.SavePassword (pin);
			MainLockScreenController.UnlockApplication ();
			await parent.DismissViewControllerAsync (true);
		}
	}
}

