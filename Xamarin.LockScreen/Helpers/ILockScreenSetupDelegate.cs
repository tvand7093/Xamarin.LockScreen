using System;

namespace Xamarin.LockScreen
{
	public interface ILockScreenSetupDelegate
	{
		void PadLockScreenSetupViewController(BaseLockScreenController controller);
		void PinSet(string pin, BaseLockScreenController padLockScreenSetupViewController);
	}
}

