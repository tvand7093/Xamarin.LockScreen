using System;

namespace Xamarin.LockScreen.Interfaces
{
	public interface ILockScreenDelegate
	{
		void UnlockWasCancelledForPadLockScreen (BaseLockScreenController padLockScreenController);
		void UnlockWasSuccessfulForPadLockScreenViewController (BaseLockScreenController padLockScreenController);
		void UnlockWasUnsuccessful (string badPin, int afterAttempt, BaseLockScreenController padLockScreenController);

		void PinSet(string pin, BaseLockScreenController padLockScreenSetupViewController);

		void AttemptsExpiredForPadLockScreenViewController (BaseLockScreenController padLockScreenController);
		bool ValidatePin (BaseLockScreenController padLockScreenController, string pin);
	}
}

