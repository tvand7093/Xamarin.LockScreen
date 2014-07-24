using System;
using MonoTouch.UIKit;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.CoreAnimation;
using MonoTouch.CoreGraphics;

namespace Xamarin.LockScreen
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

		private readonly int[] buttonArray;
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
		private UIButton[] ButtonArray {
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
		private PinSelectionView[] DigitArray { 
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
			var path = NSBundle.MainBundle.PathForResource("en","lproj"); 
			NSBundle languages = NSBundle.FromPath(path); 

			EnterPasscodeLabel.Text = languages.LocalizedString("Enter Passcode", "Enter Passcode");
			DetailLabel = StandardLabel ();
			ButtonOne = new LockButton (RectangleF.Empty, 1, null);
			ButtonTwo = new LockButton (RectangleF.Empty, 2, "ABC");
			ButtonThree = new LockButton (RectangleF.Empty, 3, "DEF");

			ButtonFour = new LockButton (RectangleF.Empty, 4, "GHI");
			ButtonFive = new LockButton (RectangleF.Empty, 5, "JKL");
			ButtonSix = new LockButton (RectangleF.Empty, 6, "MNO");

			ButtonSeven = new LockButton (RectangleF.Empty, 7, "PQRS");
			ButtonEight = new LockButton (RectangleF.Empty, 8, "TUV");
			ButtonNine = new LockButton (RectangleF.Empty, 9, "WXYZ");

			ButtonZero = new LockButton (RectangleF.Empty, 0, null);

			var buttonType = UIButtonType.System;
			if (IsLessThanIOS6) {
				buttonType = UIButtonType.Custom;
			}
			CancelButton = UIButton.FromType (buttonType);
			CancelButton.SetTitle (languages.LocalizedString ("Cancel", ""), UIControlState.Normal);
			CancelButton.HorizontalAlignment = UIControlContentHorizontalAlignment.Right;

			DeleteButton = UIButton.FromType (buttonType);
			DeleteButton.SetTitle (languages.LocalizedString ("Delete", ""), UIControlState.Normal);
			DeleteButton.HorizontalAlignment = UIControlContentHorizontalAlignment.Right;
			DeleteButton.Alpha = 0.0f;

			OkButton = UIButton.FromType (buttonType);
			OkButton.SetTitle (languages.LocalizedString ("OK", ""), UIControlState.Normal);
			OkButton.HorizontalAlignment = UIControlContentHorizontalAlignment.Left;
			OkButton.Alpha = 0.0f;

			IsComplexPin = false;
		}

		public LockScreenView (RectangleF frame, bool isComplexPin) : base(frame)
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

		internal void ShowCancelButtonAnimated(bool animated, Action completion)
		{
			PerformAnimations (() => {
				this.CancelButton.Alpha = 1.0f;
				this.DeleteButton.Alpha = 0.0f;
			}, animated, completion);
		}
		internal void ShowDeleteButtonAnimated(bool animated, Action completion)
		{
			PerformAnimations (() => {
				this.CancelButton.Alpha = 0.0f;
				this.DeleteButton.Alpha = 1.0f;
			}, animated, completion);
		}
		internal void ShowOKButtonAnimated(bool show, bool animated, Action completion)
		{
			PerformAnimations (() => {
				this.OkButton.Alpha = show ? 1.0f : 0.0f;
			}, animated, completion);
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
				foreach(PinSelectionView view in digitArray){
					view.Alpha = 0.0f;
				}
			}, animated, completion);
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
			AnimateFailuteNotificationDirection (-35);
		}
		internal void ResetAnimated(bool animated)
		{

		}
		internal void UpdatePinTextFieldWithLength(int length)
		{

		}
		private void SetDefaultStyles()
		{

		}
		private void PrepareAppearance()
		{

		}
		private void PerformLayout()
		{

		}
		private void LayoutTitleArea()
		{

		}
		private void LayoutButtonArea()
		{

		}
		private void SetupButton(UIButton button, float left, float top)
		{

		}
		private void SetupPinSelectionView(PinSelectionView selectionView, float left, float top)
		{

		}

		private float CorrectWidth { get { return ContentView.Bounds.Size.Width; }  }
		private float CorrectHeight { get { return ContentView.Bounds.Size.Height; } }
		private UILabel StandardLabel(){
			return null;
		}

		private void PerformAnimations(Action animations, bool animated, Action completion)
		{
			float length = animated ? AnimationLength : 0.0f;

			UIView.Animate(length, 0.0f, UIViewAnimationOptions.CurveEaseIn,
				new NSAction(animations), new NSAction (completion));
		}


		public void LayoutSubviews(){
			base.LayoutSubviews ();
			PerformLayout ();
			PrepareAppearance ();
		}

		/*
		 * 
		 * 
		 * 
		 * 
		 * 


- (void)resetAnimated:(BOOL)animated
{
    for (ABPinSelectionView *view in self.digitsArray)
    {
        [view setSelected:NO animated:animated completion:nil];
    }
    
    [self showCancelButtonAnimated:animated completion:nil];
	[self showOKButton:NO animated:animated completion:nil];
	
	[self updatePinTextfieldWithLength:0];
}

- (void)updatePinTextfieldWithLength:(NSUInteger)length
{
	if(NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1)
	{
		NSAttributedString* digitsTextFieldAttrStr = [[NSAttributedString alloc] initWithString:[@"" stringByPaddingToLength:length withString:@" " startingAtIndex:0]
																					 attributes:@{NSKernAttributeName: @4,
																								  NSFontAttributeName: [UIFont boldSystemFontOfSize:18]}];
		[UIView transitionWithView:self.digitsTextField duration:animationLength options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
			self.digitsTextField.attributedText = digitsTextFieldAttrStr;
		} completion:nil];
	}
	else
	{
		self.digitsTextField.text = [@"" stringByPaddingToLength:length withString:@" " startingAtIndex:0];
	}
}

- (void)setBackgroundView:(UIView *)backgroundView
{
	[_backgroundView removeFromSuperview];
	_backgroundView = backgroundView;

	if(_backgroundView == nil)
	{
		[_backgroundBlurringView setHidden:YES];
	}
	else
	{
		if(_backgroundBlurringView == nil)
		{
			if(NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1)
			{
				_backgroundBlurringView = [[UINavigationBar alloc] initWithFrame:self.bounds];
				[(UINavigationBar*)_backgroundBlurringView setBarStyle: UIBarStyleBlack];
			}
			else
			{
				_backgroundBlurringView = [[UIView alloc] initWithFrame:self.bounds];
				_backgroundBlurringView.backgroundColor = [UIColor colorWithWhite:0.0f alpha:0.75f];
			}
			_backgroundBlurringView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
			[self insertSubview:_backgroundBlurringView belowSubview:_contentView];
		}
		
		[_backgroundBlurringView setHidden:NO];

		[_backgroundView setFrame:self.bounds];
		[_backgroundView setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
		[self insertSubview:_backgroundView belowSubview:_backgroundBlurringView];
	}
}

#pragma mark -
#pragma mark - Helper Methods
- (void)setDefaultStyles
{
    _enterPasscodeLabelFont = [UIFont systemFontOfSize:18];
    _detailLabelFont = [UIFont systemFontOfSize:14];
    
    _labelColor = [UIColor whiteColor];
}

- (void)prepareAppearance
{
    self.enterPasscodeLabel.textColor = self.labelColor;
    self.enterPasscodeLabel.font = self.enterPasscodeLabelFont;
    
	self.digitsTextField.textColor = [(ABPadButton*)self.buttonZero borderColor];
	self.digitsTextField.layer.borderColor = [(ABPadButton*)self.buttonZero borderColor].CGColor;
	
	[self updatePinTextfieldWithLength:0];
	
    self.detailLabel.textColor = self.labelColor;
    self.detailLabel.font = self.detailLabelFont;
    
    [self.cancelButton setTitleColor:self.labelColor forState:UIControlStateNormal];
    [self.deleteButton setTitleColor:self.labelColor forState:UIControlStateNormal];
	[self.okButton setTitleColor:self.labelColor forState:UIControlStateNormal];
}

#pragma mark -
#pragma mark - Leyout Methods
- (void)performLayout
{
    [self layoutTitleArea];
    [self layoutButtonArea];
    _requiresRotationCorrection = YES;
}

- (void)layoutTitleArea
{
    CGFloat top = NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_6_1 ? 15 : 65;
	
	if(!IS_IPHONE5)
	{
		top = NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_6_1 ? 5 : 20;
	}
	
	if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
	{
		top = NSFoundationVersionNumber <= NSFoundationVersionNumber_iOS_6_1 ? 30 : 80;;
	}
	
    self.enterPasscodeLabel.frame = CGRectMake(([self correctWidth]/2) - 100, top, 200, 23);
    [self.contentView addSubview:self.enterPasscodeLabel];
	
	CGFloat pinSelectionTop = self.enterPasscodeLabel.frame.origin.y + self.enterPasscodeLabel.frame.size.height + 17.5;

	if(self.isComplexPin)
	{
		CGFloat textFieldWidth = 152;
		_digitsTextField.frame = CGRectMake((self.correctWidth / 2) - (textFieldWidth / 2), pinSelectionTop - 7.5f, textFieldWidth, 30);
		
		[self.contentView addSubview:_digitsTextField];
		
		_okButton.frame = CGRectMake(_digitsTextField.frame.origin.x + _digitsTextField.frame.size.width + 10, pinSelectionTop - 7.5f, (self.correctWidth - _digitsTextField.frame.size.width) / 2 - 10, 30);
		
		[self.contentView addSubview:_okButton];
	}
	else
	{
		CGFloat pinPadding = 25;
		CGFloat pinRowWidth = (ABPinSelectionViewWidth * 4) + (pinPadding * 3);
		
		CGFloat selectionViewLeft = ([self correctWidth]/2) - (pinRowWidth/2);
		
		for (ABPinSelectionView *view in self.digitsArray) {
			[self setUpPinSelectionView:view  left:selectionViewLeft top:pinSelectionTop];
			selectionViewLeft+=ABPinSelectionViewWidth + pinPadding;
		}
	}
	
    self.detailLabel.frame = CGRectMake(([self correctWidth]/2) - 100, pinSelectionTop + 30, 200, 23);
    [self.contentView addSubview:self.detailLabel];
}

- (void)layoutButtonArea
{
    CGFloat horizontalButtonPadding = 20;
    CGFloat verticalButtonPadding = 10;
    
    CGFloat buttonRowWidth = (ABPadButtonWidth * 3) + (horizontalButtonPadding * 2);
    
    CGFloat lefButtonLeft = ([self correctWidth]/2) - (buttonRowWidth/2) + 0.5;
    CGFloat centerButtonLeft = lefButtonLeft + ABPadButtonWidth + horizontalButtonPadding;
    CGFloat rightButtonLeft = centerButtonLeft + ABPadButtonWidth + horizontalButtonPadding;
    
    CGFloat topRowTop = self.detailLabel.frame.origin.y + self.detailLabel.frame.size.height + 15;
    
    if (!IS_IPHONE5) topRowTop = self.detailLabel.frame.origin.y + self.detailLabel.frame.size.height + 10;
    
    CGFloat middleRowTop = topRowTop + ABPadButtonHeight + verticalButtonPadding;
    CGFloat bottomRowTop = middleRowTop + ABPadButtonHeight + verticalButtonPadding;
    CGFloat zeroRowTop = bottomRowTop + ABPadButtonHeight + verticalButtonPadding;
    
    [self setUpButton:self.buttonOne left:lefButtonLeft top:topRowTop];
    [self setUpButton:self.buttonTwo left:centerButtonLeft top:topRowTop];
    [self setUpButton:self.buttonThree left:rightButtonLeft top:topRowTop];
    
    [self setUpButton:self.buttonFour left:lefButtonLeft top:middleRowTop];
    [self setUpButton:self.buttonFive left:centerButtonLeft top:middleRowTop];
    [self setUpButton:self.buttonSix left:rightButtonLeft top:middleRowTop];
    
    [self setUpButton:self.buttonSeven left:lefButtonLeft top:bottomRowTop];
    [self setUpButton:self.buttonEight left:centerButtonLeft top:bottomRowTop];
    [self setUpButton:self.buttonNine left:rightButtonLeft top:bottomRowTop];
    
    [self setUpButton:self.buttonZero left:centerButtonLeft top:zeroRowTop];
    
	CGRect deleteCancelButtonFrame = CGRectMake(rightButtonLeft, zeroRowTop + ABPadButtonHeight + 25, ABPadButtonWidth, 20);
	if(!IS_IPHONE5)
	{
		//Bring it higher for small device screens
		deleteCancelButtonFrame = CGRectMake(rightButtonLeft, zeroRowTop + ABPadButtonHeight - 20, ABPadButtonWidth, 20);
	}
	
	if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
	{
		//Center it with zero button
		deleteCancelButtonFrame = CGRectMake(rightButtonLeft, zeroRowTop + (ABPadButtonHeight / 2 - 10), ABPadButtonWidth, 20);
	}
	
    if (!self.cancelButtonDisabled)
    {
        self.cancelButton.frame = deleteCancelButtonFrame;
        [self.contentView addSubview:self.cancelButton];
    }
    
    self.deleteButton.frame = deleteCancelButtonFrame;
    [self.contentView addSubview:self.deleteButton];
}

- (void)setUpButton:(UIButton *)button left:(CGFloat)left top:(CGFloat)top
{
    button.frame = CGRectMake(left, top, ABPadButtonWidth, ABPadButtonHeight);
    [self.contentView addSubview:button];
    [self setRoundedView:button toDiameter:75];
}

- (void)setUpPinSelectionView:(ABPinSelectionView *)selectionView left:(CGFloat)left top:(CGFloat)top
{
    selectionView.frame = CGRectMake(left,
                                     top,
                                     ABPinSelectionViewWidth,
                                     ABPinSelectionViewHeight);
    [self.contentView addSubview:selectionView];
    [self setRoundedView:selectionView toDiameter:15];
}

- (void)performAnimations:(void (^)(void))animations animated:(BOOL)animated completion:(void (^)(BOOL finished))completion
{
    CGFloat length = (animated) ? animationLength : 0.0f;
    
    [UIView animateWithDuration:length delay:0.0f options:UIViewAnimationOptionCurveEaseIn
                     animations:animations
                     completion:completion];
}

#pragma mark -
#pragma mark - Orientation height helpers
- (CGFloat)correctWidth
{
	return _contentView.bounds.size.width;
}

- (CGFloat)correctHeight
{
    return _contentView.bounds.size.height;
}

#pragma mark -
#pragma mark -  View Methods
- (UILabel *)standardLabel
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.textColor = _labelColor;
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    return label;
}

- (void)setRoundedView:(UIView *)roundedView toDiameter:(CGFloat)newSize;
{
    CGRect newFrame = CGRectMake(roundedView.frame.origin.x, roundedView.frame.origin.y, newSize, newSize);
    roundedView.frame = newFrame;
    roundedView.clipsToBounds = YES;
    roundedView.layer.cornerRadius = newSize / 2.0;
}
		 * 
		 * 
		 * 
		 * 
		 * 
*/
	}
}


