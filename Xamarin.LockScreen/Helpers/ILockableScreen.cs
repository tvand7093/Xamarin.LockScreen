using System;

namespace Xamarin.LockScreen
{
	public interface ILockableScreen
	{
		bool IsLocked { get; set; }
	}
}

