using System;
using MonoTouch.Foundation;
using MonoTouch.UIKit;
using MonoTouch.CoreGraphics;
using Xamarin.LockScreen.Views;
using Xamarin.LockScreen.Interfaces;

namespace Xamarin.LockScreen
{
	public class BaseLockScreenController : UIViewController
	{
		protected LockScreenView lockScreenView { get { return (LockScreenView)View; } }
		protected string CurrentPin = "";
		private bool isComplexPin = false;
		private ILockScreenDelegate lockDelegate; 

		public BaseLockScreenController (IntPtr handle) : base (handle)
		{
		
		}

		public BaseLockScreenController (bool complexPin, ILockScreenDelegate lockDelegate) : base ()
		{
			this.isComplexPin = complexPin;
			this.lockDelegate = lockDelegate;
		}
		#region View Controller Lifecycle Methods

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			View = new LockScreenView (View.Bounds, isComplexPin);
			SetupButtonMapping ();
			lockScreenView.CancelButton.TouchUpInside += CancelButtonSelected;
			lockScreenView.DeleteButton.TouchUpInside += DeleteButtonSelected;
			lockScreenView.OkButton.TouchUpInside += OkButtonSelected;
		}

		public override UIInterfaceOrientationMask GetSupportedInterfaceOrientations ()
		{
			var current = UIDevice.CurrentDevice.UserInterfaceIdiom;
			if (current == UIUserInterfaceIdiom.Pad)
				return UIInterfaceOrientationMask.All;
			if (current == UIUserInterfaceIdiom.Phone)
				return UIInterfaceOrientationMask.Portrait | UIInterfaceOrientationMask.PortraitUpsideDown;

			return UIInterfaceOrientationMask.All;
		}

		public override UIStatusBarStyle PreferredStatusBarStyle ()
		{
			if (lockScreenView.BackgroundView != null)
				return UIStatusBarStyle.LightContent;
			var color = lockScreenView.BackgroundColor;
			if (color == null)
				color = lockScreenView.BackgroundColor = UIColor.Black;
			float[] componentColors = color.CGColor.Components;
			float colorBrightness = (componentColors.Length == 2 ? componentColors[0] : 
				((componentColors[0] * 299) + (componentColors[1] * 587) + (componentColors[2] * 114)) / 1000);

			return colorBrightness < 0.5 ? UIStatusBarStyle.LightContent : UIStatusBarStyle.Default;
		}

		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
		}

		#endregion

		#region Localization

		internal void SetLockScreenTitle(string title)
		{
			Title = title;
			lockScreenView.EnterPasscodeLabel.Text = title;
		}
		internal void SetSubtitleText(string text)
		{
			lockScreenView.DetailLabel.Text = text;
		}
		internal void SetCancelButtonText(string text)
		{
			lockScreenView.CancelButton.SetTitle (text, UIControlState.Normal);
			lockScreenView.CancelButton.SizeToFit ();
		}

		internal void SetDeleteButtonText(string text)
		{
			lockScreenView.DeleteButton.SetTitle (text, UIControlState.Normal);
			lockScreenView.DeleteButton.SizeToFit ();
		}

		internal void SetBackgroundView(UIView backgroundView)
		{
			lockScreenView.SetupBackgroundView (backgroundView);
			if (UIDevice.CurrentDevice.CheckSystemVersion (6, 1))
				SetNeedsStatusBarAppearanceUpdate ();
		}

		#endregion

		#region Helper Methods


		private void SetupButtonMapping()
		{
			foreach (var button in lockScreenView.ButtonArray) {
				button.TouchUpInside += ButtonSelected;
			}
		}
		private void ButtonSelected(object sender, EventArgs ea)
		{
			UIButton button = (UIButton)sender;
			int pin = button.Tag;
			NewPinSelected (pin);
		}
		private void CancelButtonSelected(object sender, EventArgs ea)
		{
			if (lockDelegate != null) {
				lockDelegate.UnlockWasCancelledForPadLockScreen (this);
			}
		}
		private void DeleteButtonSelected(object sender, EventArgs ea)
		{
			DeleteFromPin ();
		}
		private void OkButtonSelected(object sender, EventArgs ea)
		{
			ProcessPin ();
		}
		internal void CancelButtonDisabled(bool disabled)
		{
			lockScreenView.CancelButtonDisabled = disabled;
		}
		protected virtual void ProcessPin()
		{
			throw new NotImplementedException (
				"You must sublass this controller and customize the process to your needs.");
		}


		#endregion

		#region Button Methods

		internal void NewPinSelected(int pinNumber)
		{
			if (isComplexPin && CurrentPin.Length >= 4)
				return;

			CurrentPin = string.Format("{0}{1}", CurrentPin, pinNumber);
			if (isComplexPin)
				lockScreenView.UpdatePinTextFieldWithLength (CurrentPin.Length);
			else {
				int currentlySelected = CurrentPin.Length - 1;
				lockScreenView.DigitArray [currentlySelected].SetSelected (true, true, null);
			}
			if (CurrentPin.Length == 1) {
				lockScreenView.ShowDeleteButtonAnimated (true);
				if (isComplexPin)
					lockScreenView.ShowOKButtonAnimated (true, true);
			} else if (!isComplexPin && CurrentPin.Length == 4) {
				lockScreenView.DigitArray [lockScreenView.DigitArray.Length - 1].SetSelected (true, true, null);
				ProcessPin ();
			}
		}

		internal void DeleteFromPin()
		{
			if (CurrentPin.Length == 0)
				return;
			CurrentPin = CurrentPin.Remove (CurrentPin.Length - 1, 1);
			if (isComplexPin)
				lockScreenView.UpdatePinTextFieldWithLength (CurrentPin.Length);
			else {
				int pinToDelselect = CurrentPin.Length;
				lockScreenView.DigitArray [pinToDelselect].SetSelected (false, true, null);
			}
			if (CurrentPin.Length == 0) {
				lockScreenView.ShowCancelButtonAnimated (true);
				lockScreenView.ShowOKButtonAnimated (false, true);
			}
		}

		public async void Show(UIViewController presentOver){
			this.ModalPresentationStyle = UIModalPresentationStyle.FullScreen;
			this.ModalTransitionStyle = UIModalTransitionStyle.CrossDissolve;
			await presentOver.PresentViewControllerAsync (this, true);
		}

		#endregion
	}
}
