using System;
using System.Collections.Generic;
using System.Linq;

using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace Example
{
	// The UIApplicationDelegate for the application. This class is responsible for launching the
	// User Interface of the application, as well as listening (and optionally responding) to
	// application events from iOS.
	[Register ("AppDelegate")]
	public partial class AppDelegate : UIApplicationDelegate
	{
		// class-level declarations
		
		public override UIWindow Window {
			get;
			set;
		}
		public static UIStoryboard Storyboard = UIStoryboard.FromName ("Main", null);
		public static ExampleViewController initialViewController;

		public override bool FinishedLaunching (UIApplication app, NSDictionary options)
		{
			Window = new UIWindow (UIScreen.MainScreen.Bounds);

			initialViewController = Storyboard.InstantiateInitialViewController () as ExampleViewController;

			Window.RootViewController = initialViewController;

			Window.MakeKeyAndVisible ();
			return true;
		}


		// This method is invoked when the application is about to move from active to inactive state.
		// OpenGL applications should use this method to pause.
		public override void OnResignActivation (UIApplication application)
		{
		}
		
		// This method should be used to release shared resources and it should store the application state.
		// If your application supports background exection this method is called instead of WillTerminate
		// when the user quits.
		public override void DidEnterBackground (UIApplication application)
		{
		}
		
		// This method is called as part of the transiton from background to active state.
		public override void WillEnterForeground (UIApplication application)
		{
			Window.RootViewController = new ExampleViewController ();
		}
		
		// This method is called when the application is about to terminate. Save data, if needed.
		public override void WillTerminate (UIApplication application)
		{
		}
	}
}

