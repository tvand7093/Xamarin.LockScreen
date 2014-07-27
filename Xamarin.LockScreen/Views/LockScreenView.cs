using System;
using MonoTouch.UIKit;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.CoreAnimation;
using MonoTouch.CoreGraphics;
using MonoTouch.AudioToolbox;

namespace Xamarin.LockScreen.Views
{
	public class LockScreenView : UIView
	{
		public UIFont EnterPasscodeLabelFont { get; private set; } 
		public UIFont DetailLabelFont { get; private set; } 
		public UIColor LabelColor { get; set; } 
		public UIView BackgroundView { get; set; } 
		public bool CancelButtonDisabled { get; set; } 

		public UILabel EnterPasscodeLabel { get; private set; } 
		public UILabel DetailLabel { get; private set; } 

		public UIButton ButtonOne { get; private set; } 
		public UIButton ButtonTwo { get; private set; } 
		public UIButton ButtonThree { get; private set; } 
		public UIButton ButtonFour { get; private set; } 
		public UIButton ButtonFive { get; private set; } 
		public UIButton ButtonSix { get; private set; } 
		public UIButton ButtonSeven { get; private set; } 
		public UIButton ButtonEight { get; private set; } 
		public UIButton ButtonNine { get; private set; } 
		public UIButton ButtonZero { get; private set; } 

		public UIButton CancelButton { get; private set; } 
		public UIButton DeleteButton { get; private set; } 

		public UIButton OkButton { get; private set; } 

		public bool IsComplexPin { get; set; }
		public UITextField DigitsTextField { get; set; }

		public bool RequiresRotationCorrection { get; set; }
		public UIView ContentView { get; set; }
		public UIView BackgroundBlurringView { get; set; }


		private float CorrectWidth { get { return ContentView.Bounds.Size.Width; }  }
		private float CorrectHeight { get { return ContentView.Bounds.Size.Height; } }
		private const float AnimationLength = 0.15f;
		private bool IsIphone5 { get {return UIScreen.MainScreen.Bounds.Size.Height == 568; } }
		private bool IsLessThanIOS6 
		{
			get
			{
				Version ios6 = new Version (6, 1);
				Version current = new Version (MonoTouch.Constants.Version);
				return current <= ios6;
			}
		}
		internal UIButton[] ButtonArray {
			get {
				return new UIButton[] {
					ButtonZero,
					ButtonOne, ButtonTwo,
					ButtonThree, ButtonFour,
					ButtonFive, ButtonSix,
					ButtonSeven, ButtonEight,
					ButtonNine
				};
			}
		}
		private PinSelectionView[] digitArray;
		public PinSelectionView[] DigitArray { 
			get {
				if(IsComplexPin)
				{
					return null; //If complex, no digit views are available.
				}

				if (digitArray == null)
				{
					//Simple pin code is always 4 characters.
					PinSelectionView[] array = new PinSelectionView[4];

					for (int i = 0; i < 4; i++)
					{
						PinSelectionView view = new PinSelectionView (RectangleF.Empty);
						array [i] = view;
					}

					digitArray = array;
				}

				return digitArray;
			}
		}

		public LockScreenView(RectangleF frame) : base(frame)
		{
			SetDefaultStyles ();
			var height = frame.Size.Height >= 568.0f ? 568.0f : frame.Size.Height;

			ContentView = new UIView (new RectangleF (0, 0, 320, height));
			ContentView.AutoresizingMask = UIViewAutoresizing.FlexibleLeftMargin |
				UIViewAutoresizing.FlexibleTopMargin |
				UIViewAutoresizing.FlexibleRightMargin |
				UIViewAutoresizing.FlexibleBottomMargin;
			ContentView.Center = this.Center;
			AddSubview (ContentView);

			RequiresRotationCorrection = false;

			EnterPasscodeLabel = StandardLabel ();
			DigitsTextField = new UITextField (Rectangle.Empty);
			EnterPasscodeLabel.Text = "Enter Passcode".Translate ();
			DetailLabel = StandardLabel ();
			ButtonOne = new LockButton (RectangleF.Empty, 1, string.Empty);
			ButtonTwo = new LockButton (RectangleF.Empty, 2, "ABC");
			ButtonThree = new LockButton (RectangleF.Empty, 3, "DEF");

			ButtonFour = new LockButton (RectangleF.Empty, 4, "GHI");
			ButtonFive = new LockButton (RectangleF.Empty, 5, "JKL");
			ButtonSix = new LockButton (RectangleF.Empty, 6, "MNO");

			ButtonSeven = new LockButton (RectangleF.Empty, 7, "PQRS");
			ButtonEight = new LockButton (RectangleF.Empty, 8, "TUV");
			ButtonNine = new LockButton (RectangleF.Empty, 9, "WXYZ");

			ButtonZero = new LockButton (RectangleF.Empty, 0, string.Empty);

			var buttonType = UIButtonType.System;
			if (IsLessThanIOS6) {
				buttonType = UIButtonType.Custom;
			}
			CancelButton = UIButton.FromType (buttonType);
			CancelButton.SetTitle ("Cancel".Translate(), UIControlState.Normal);
			CancelButton.HorizontalAlignment = UIControlContentHorizontalAlignment.Right;

			DeleteButton = UIButton.FromType (buttonType);
			DeleteButton.SetTitle ("Delete".Translate(), UIControlState.Normal);
			DeleteButton.HorizontalAlignment = UIControlContentHorizontalAlignment.Right;
			DeleteButton.Alpha = 0.0f;

			OkButton = UIButton.FromType (buttonType);
			OkButton.SetTitle ("OK".Translate(), UIControlState.Normal);
			OkButton.HorizontalAlignment = UIControlContentHorizontalAlignment.Left;
			OkButton.Alpha = 0.0f;

			IsComplexPin = false;
		}

		public LockScreenView (RectangleF frame, bool isComplexPin) : this(frame)
		{
			IsComplexPin = isComplexPin;
			if (IsComplexPin) {
				DigitsTextField = new UITextField ();
				DigitsTextField.Enabled = false;
				DigitsTextField.SecureTextEntry = true;
				DigitsTextField.TextAlignment = UITextAlignment.Center;
				DigitsTextField.BorderStyle = UITextBorderStyle.None;
				DigitsTextField.Layer.BorderWidth = 1.0f;
				DigitsTextField.Layer.CornerRadius = 5.0f;
			}
		}

		internal async void ShowCancelButtonAnimated(bool animated)
		{
			PerformAnimations (() => {
				this.CancelButton.Alpha = 1.0f;
				this.DeleteButton.Alpha = 0.0f;
			}, animated);
		}
		internal void ShowDeleteButtonAnimated(bool animated)
		{
			PerformAnimations (() => {
				this.CancelButton.Alpha = 0.0f;
				this.DeleteButton.Alpha = 1.0f;
			}, animated);
		}
		internal void ShowOKButtonAnimated(bool show, bool animated)
		{
			PerformAnimations (() => {
				this.OkButton.Alpha = show ? 1.0f : 0.0f;
			}, animated);
		}
		internal void UpdateDetailLabelWithString(string newString, bool animated, Action completion)
		{
			var length = animated ? AnimationLength : 0.0f;
			var labelWidth = 15; //padding
			var attribs = new UIStringAttributes ();
			var nsVersionOfString = new NSString (newString);

			if (!IsLessThanIOS6) {
				attribs.Font = DetailLabelFont;
				labelWidth += (int)nsVersionOfString.GetSizeUsingAttributes (attribs).Width;
			} else {
				labelWidth += (int)nsVersionOfString.StringSize (DetailLabelFont).Width;
			}

			CATransition animation = new CATransition ();
			animation.TimingFunction = CAMediaTimingFunction.FromName (CAMediaTimingFunction.EaseInEaseOut);
			animation.Type = CATransition.TransitionFade;
			animation.Duration = length;
			DetailLabel.Layer.AddAnimation (animation, "kCATransitionFade");
			DetailLabel.Text = newString;
			var pinSelectionTop = EnterPasscodeLabel.Frame.Y + EnterPasscodeLabel.Frame.Size.Height + 17.5;
			DetailLabel.Frame = new RectangleF ((CorrectWidth / 2) - 100,
				(float)pinSelectionTop + 30f, 200, 23);
		}
		internal void LockViewAnimated(bool animated, Action completion)
		{
			PerformAnimations (() => {
				foreach(UIButton button in ButtonArray){
					button.Alpha = 0.2f;
					button.UserInteractionEnabled = false;
				}
				CancelButton.Alpha = 0.0f;
				foreach(PinSelectionView view in DigitArray){
					view.Alpha = 0.0f;
				}
			}, animated);
		}

		internal void AnimateFailuteNotificationDirection(float direction)
		{
			Action animation = () => {
				CGAffineTransform transform = CGAffineTransform.MakeTranslation(direction, 0);
				if(IsComplexPin)
					DigitsTextField.Layer.AffineTransform = transform;
				else{
					foreach(PinSelectionView view in DigitArray)
					{
						view.Layer.AffineTransform = transform;
					}
				}
			};

			Action success = () => {
				if(Math.Abs(direction) < 1)
				{
					if(IsComplexPin)
					{
						DigitsTextField.Layer.AffineTransform = CGAffineTransform.MakeIdentity();
					}
					else{					
						foreach(PinSelectionView view in DigitArray){
							view.Layer.AffineTransform = CGAffineTransform.MakeIdentity();
						}
					}
				}
				AnimateFailuteNotificationDirection(-1 * direction / 2);
			};

			UIView.Animate (0.08, new NSAction (animation), new NSAction(success));

		}
		internal void AnimateFailureNotification() 
		{
			SystemSound.Vibrate.PlaySystemSound();
			AnimateFailuteNotificationDirection (-35);
			SystemSound.Vibrate.Close();

		}
		public void ResetAnimated(bool animated)
		{
			foreach (var view in DigitArray) {
				view.SetSelected (false, animated, null);
			}
			ShowCancelButtonAnimated (animated);
			ShowOKButtonAnimated (false, animated);
		}
		internal void UpdatePinTextFieldWithLength(int length)
		{
			var attribs = new UIStringAttributes ();
			attribs.KerningAdjustment = 4;
			attribs.Font = UIFont.BoldSystemFontOfSize (18);

			var padding = "";
			for (int i = 0; i < length; i++) {
				padding += " ";
			}

			if (!IsLessThanIOS6) {
				NSAttributedString attrString = new NSAttributedString (padding, attribs);
				UIView.Transition (DigitsTextField, AnimationLength,
					UIViewAnimationOptions.TransitionCrossDissolve,
					new NSAction (() => DigitsTextField.AttributedText = attrString),
					null);
			} else {
				DigitsTextField.Text = padding;
			}
		}
		private void SetDefaultStyles()
		{
			EnterPasscodeLabelFont = UIFont.SystemFontOfSize (18);
			DetailLabelFont = UIFont.SystemFontOfSize (14);
			LabelColor = UIColor.White;
		}
		private void PrepareAppearance()
		{
			EnterPasscodeLabel.TextColor = LabelColor;
			EnterPasscodeLabel.Font = EnterPasscodeLabelFont;

			DigitsTextField.TextColor = ((LockButton)ButtonZero).BorderColor;
			DigitsTextField.Layer.BorderColor = ((LockButton)ButtonZero).BorderColor.CGColor;
			UpdatePinTextFieldWithLength (0);
			DetailLabel.TextColor = LabelColor;
			DetailLabel.Font = DetailLabelFont;

			CancelButton.SetTitleColor (LabelColor, UIControlState.Normal);
			DeleteButton.SetTitleColor (LabelColor, UIControlState.Normal);
			OkButton.SetTitleColor (LabelColor, UIControlState.Normal);
		}
		private void PerformLayout()
		{
			LayoutTitleArea ();
			LayoutButtonArea ();
			RequiresRotationCorrection = true;
		}
		private void LayoutTitleArea()
		{
			float top = IsLessThanIOS6 ? 15 : 65;
			if (!IsIphone5)
				top = IsLessThanIOS6 ? 5 : 20;
			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
				top = IsLessThanIOS6 ? 30 : 80;

			EnterPasscodeLabel.Frame = new RectangleF ((CorrectWidth / 2) - 100, top, 200, 23);
			ContentView.AddSubview (EnterPasscodeLabel);
			float pinSelectionTop = EnterPasscodeLabel.Frame.Y + 
				EnterPasscodeLabel.Frame.Size.Height + 17.5f;

			if (IsComplexPin) {
				float textFieldWidth = 152;
				DigitsTextField.Frame = new RectangleF ((CorrectWidth / 2) - (textFieldWidth / 2), 
					pinSelectionTop - 7.5f,
					textFieldWidth, 30);

				ContentView.AddSubview (DigitsTextField);
				OkButton.Frame = new RectangleF (
					DigitsTextField.Frame.X + DigitsTextField.Frame.Size.Width + 10,
					pinSelectionTop - 7.5f,
					(CorrectWidth - DigitsTextField.Frame.Size.Width) / 2 - 10, 
					30);
				ContentView.AddSubview (OkButton);
			} else {
				float pinPadding = 25;
				float pinRowWidth = (PinSelectionView.PinSelectionViewWidth * 4) + (pinPadding * 3);
				float selectionViewLeft = (CorrectWidth / 2) - (pinRowWidth / 2);

				foreach (var view in DigitArray) {
					SetupPinSelectionView (view, selectionViewLeft, pinSelectionTop);
					selectionViewLeft += PinSelectionView.PinSelectionViewWidth + pinPadding;
				}
			}

			DetailLabel.Frame = new RectangleF ((CorrectWidth / 2) - 100, pinSelectionTop + 30, 200, 23);
			ContentView.AddSubview (DetailLabel);
		}
		private void LayoutButtonArea()
		{
			float horizontalButtonPadding = 20;
			float verticalButtonPadding = 10;

			float buttonRowWidth = (LockButton.ButtonWidth * 3) + (horizontalButtonPadding * 2);

			float leftButtonLeft = (CorrectWidth / 2f) - (buttonRowWidth / 2f) + 0.5f;
			float centerButtonLeft = leftButtonLeft + LockButton.ButtonWidth + horizontalButtonPadding;
			float rightButtonLeft = centerButtonLeft + LockButton.ButtonWidth + horizontalButtonPadding;

			float topRowTop = DetailLabel.Frame.Y + DetailLabel.Frame.Size.Height + 15;

			if (!IsIphone5)
				topRowTop = DetailLabel.Frame.Y + DetailLabel.Frame.Size.Height + 10;

			float middleRowTop = topRowTop + LockButton.ButtonHeight + verticalButtonPadding;
			float bottomRowTop = middleRowTop + LockButton.ButtonHeight + verticalButtonPadding;
			float zeroRowTop = bottomRowTop + LockButton.ButtonHeight + verticalButtonPadding;

			SetupButton (ButtonOne, leftButtonLeft, topRowTop);
			SetupButton (ButtonTwo, centerButtonLeft, topRowTop);
			SetupButton (ButtonThree, rightButtonLeft, topRowTop);

			SetupButton (ButtonFour, leftButtonLeft, middleRowTop);
			SetupButton (ButtonFive, centerButtonLeft, middleRowTop);
			SetupButton (ButtonSix, rightButtonLeft, middleRowTop);

			SetupButton (ButtonSeven, leftButtonLeft, bottomRowTop);
			SetupButton (ButtonEight, centerButtonLeft, bottomRowTop);
			SetupButton (ButtonNine, rightButtonLeft, bottomRowTop);

			SetupButton (ButtonZero, centerButtonLeft, zeroRowTop);

			RectangleF deleteCancelButtonFrame = new RectangleF (rightButtonLeft,
				                                     zeroRowTop + LockButton.ButtonHeight + 25, 
				                                     LockButton.ButtonWidth, 20);
			if (!IsIphone5)
				deleteCancelButtonFrame = new RectangleF (rightButtonLeft,
					zeroRowTop + LockButton.ButtonHeight - 20,
					LockButton.ButtonWidth, 20);

			if (UIDevice.CurrentDevice.UserInterfaceIdiom == UIUserInterfaceIdiom.Pad)
				deleteCancelButtonFrame = new RectangleF (rightButtonLeft,
					zeroRowTop + (LockButton.ButtonHeight / 2 - 10),
					LockButton.ButtonWidth, 20);

			if (!CancelButtonDisabled) {
				CancelButton.Frame = deleteCancelButtonFrame;
				ContentView.AddSubview (CancelButton);
			}

			DeleteButton.Frame = deleteCancelButtonFrame;
			ContentView.AddSubview (DeleteButton);

		}

		private void SetRoundedView (UIView roundedView, float newSize)
		{
			RectangleF newFrame = new RectangleF (roundedView.Frame.X,
				                      roundedView.Frame.Y, newSize, newSize);
			roundedView.Frame = newFrame;
			roundedView.ClipsToBounds = true;
			roundedView.Layer.CornerRadius = newSize / 2.0f;
		}
		private void SetupButton(UIButton button, float left, float top)
		{
			button.Frame = new RectangleF (left, top,
				LockButton.ButtonWidth, LockButton.ButtonHeight);
			ContentView.AddSubview (button);
			SetRoundedView (button, 75);
		}
		private void SetupPinSelectionView(PinSelectionView selectionView, float left, float top)
		{
			selectionView.Frame = new RectangleF (left, top, LockButton.ButtonWidth, LockButton.ButtonHeight);
			ContentView.AddSubview (selectionView);
			SetRoundedView (selectionView, 15);
		}
		internal void SetupBackgroundView(UIView background){
			BackgroundView.RemoveFromSuperview ();
			BackgroundView = background;
			if (BackgroundView == null)
				BackgroundBlurringView.Hidden = true;
			else {
				if (BackgroundBlurringView == null) {
					if (!IsLessThanIOS6) {
						BackgroundBlurringView = new UINavigationBar (Bounds);
						((UINavigationBar)BackgroundBlurringView).BarStyle = UIBarStyle.Black;
					} else {
						BackgroundBlurringView = new UIView (Bounds);
						BackgroundBlurringView.BackgroundColor = UIColor.FromWhiteAlpha (0.0f, 0.75f);
					}
					BackgroundBlurringView.AutoresizingMask = UIViewAutoresizing.FlexibleWidth |
						UIViewAutoresizing.FlexibleHeight;

					InsertSubviewBelow (BackgroundBlurringView, ContentView); 
				}
				BackgroundBlurringView.Hidden = false;
				BackgroundView.Frame = Bounds;
				BackgroundView.AutoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
				InsertSubviewBelow (BackgroundView, BackgroundBlurringView);
			}
		}

		private UILabel StandardLabel()
		{
			UILabel label = new UILabel (RectangleF.Empty);
			label.TextColor = LabelColor;
			label.BackgroundColor = UIColor.Clear;
			label.TextAlignment = UITextAlignment.Center;
			return label;
		}

		private async void PerformAnimations(Action animations, bool animated)
		{
			float length = animated ? AnimationLength : 0.0f;

			await UIView.AnimateAsync (length, new NSAction (animations));
		}


		public override void LayoutSubviews(){
			base.LayoutSubviews ();
			PerformLayout ();
			PrepareAppearance ();
		}

	}
}


