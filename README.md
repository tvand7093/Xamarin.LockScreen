Xamarin.LockScreen
==================

A control library allowing for simple usage of lock screens in applications. 

### Getting Started

To start using LockScreen, you only need a few steps.

* Create a view controller and inherit from MainLockScreenController
* Call Initialize function from controller
* Create a controller delegate for use with the lock screen

### The Code

```csharp
using Xamarin.LockScreen;
using Xamarin.LockScreen.Security;

public class MyController : MainLockScreenController
{
	public override ViewWillAppear(bool animated)
	{
		//You can make a call like below to customize background color
		
		//this will set the pin attempt count to 3, 
		//set the default delegate, and set the background color to be blue.
		base.Initialize(3, new LockHandler(this), UIColor.Blue);
		
		//Lock hanlder is a presetup delegate. Handles saving
		//passcode in Keychain.
		base.Initialize(3, new LockHandler(this));
		base.ViewWillAppear(animated);
	}

}
```

### Using A Custom Delegate

In most case you will want custom controll over how your lock mechanism works. In order to achieve this, all you need to do is subclass the 'LockHandler' class and implement any relevant override methods.

```csharp
using Xamarin.LockScreen.Security

public class MyDelegate : LockHandler 
{

	public override ValidatePin(BaseLockScreenController padLockScreenController, string pin)
	{
		//do your customizing of pin validation here!
		return true;
	}
	//don't fret, there are more methods to override! 
	//if you do not customize, the default LockHandler class
	//will run it's course.
}

```

### The Details

This library does a few things for you. The first thing is it handles password storage. When you setup a pin for the first time using the default delegate, it will store the pin value in your devices Keychain.

When you subclass the MainLockScreenController, it automattically handles locking and unlocking of your application. This happens on the 'ViewDidAppear' method, so if you want to do any special work before the lock screen shows, do so before the 'base.ViewDidAppear' call. 

### Final Notes

This is currently working but like all code still has some bugs in it. 

If you wish to see screenshots (I don't have time right now to add them in here), you can see them in the 'Screenshots' folder.
