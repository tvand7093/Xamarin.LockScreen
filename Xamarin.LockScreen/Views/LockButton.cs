using System;
using MonoTouch.CoreGraphics;
using MonoTouch.UIKit;
using System.Drawing;
using MonoTouch.Foundation;
using MonoTouch.CoreText;
using System.Collections.Generic;

namespace Xamarin.LockScreen.Views
{
	internal class LockButton : UIButton
	{
		public UILabel NumberLabel { get; private set; }
		public UILabel LettersLabel { get; private set; }
		public UIColor BorderColor { get; private set; }
		public UIColor SelectedColor { get; private set; }
		public UIColor TextColor { get; private set; }
		public UIColor HighlightedTextColor { get; private set; }
		public UIFont NumberLabelFont { get; private set; }
		public UIFont LetterLabelFont { get; private set; }
		public UIView SelectedView { get; private set; }

		public static float ButtonHeight  { get { return 75f; } }
		public static float ButtonWidth { get { return 75; } }
		private const float AnimationLength = 0.15f;
	
		public LockButton ()
		{
		}
			
		public LockButton(RectangleF frame, int number, string letters) : base(frame)
		{
			SetDefaultStyles ();
			this.AccessibilityValue = string.Format ("PinButton{0}", number);
			this.Tag = number;
			this.Layer.BorderWidth = 1.5f;
			NumberLabel = StandardLabel();
			NumberLabel.Text = number.ToString ();
			NumberLabel.Font = NumberLabelFont;

			LettersLabel = StandardLabel();
			var attributes = new UIStringAttributes ();
			attributes.KerningAdjustment = 2f;
			attributes.Font = LetterLabelFont;

			LettersLabel.AttributedText = new NSAttributedString (letters, attributes);
			SelectedView = new UIView ();
			SelectedView.Alpha = 0.0f;
			SelectedView.BackgroundColor = SelectedColor;

		}
		public override void LayoutSubviews(){
			base.LayoutSubviews ();
			PrepareAppearance ();
			PerformLayout ();
		}

		public void SetDefaultStyles()
		{
			BorderColor = UIColor.White;
			SelectedColor = UIColor.LightGray;
			TextColor = UIColor.White;
			HighlightedTextColor = UIColor.White;
			string fontName = "HelveticaNeue-Thin";
			Version version = new Version (MonoTouch.Constants.Version);

			if (version <= new Version (6,1)) 
				fontName = "HelveticaNeue";

			NumberLabelFont = UIFont.FromName (fontName, 35);
			LetterLabelFont = UIFont.FromName ("HelveticaNeue", 10);

		}
		private void PrepareAppearance(){
			SelectedView.BackgroundColor = SelectedColor;
			Layer.BorderColor = BorderColor.CGColor;
			NumberLabel.TextColor = TextColor;
			NumberLabel.HighlightedTextColor = HighlightedTextColor;
			LettersLabel.TextColor = TextColor;
			LettersLabel.HighlightedTextColor = HighlightedTextColor;
		}
		public void PerformLayout(){
			SelectedView.Frame = new RectangleF (0, 0, Frame.Size.Width, Frame.Size.Height);
			AddSubview (SelectedView);

			NumberLabel.Frame = new RectangleF (0, Frame.Size.Height / 5, 
				Frame.Size.Width, Frame.Size.Height / 2.5f);
			AddSubview (NumberLabel);

			if (Tag == 0) {
				var center = NumberLabel.Center;
				center.Y = (Bounds.Size.Height / 2) - 1;
				NumberLabel.Center = center;
			}
			LettersLabel.Frame = new RectangleF (0,
				NumberLabel.Frame.Y + NumberLabel.Frame.Size.Height + 3,
				Frame.Size.Width, 10);
			AddSubview (LettersLabel);
		}
		public override void Draw (RectangleF rect)
		{
			base.Draw (rect);
			PrepareAppearance ();
		}

		public override void TouchesBegan (NSSet touches, UIEvent evt)
		{
			base.TouchesBegan (touches, evt);
			UIView.Animate (AnimationLength, 0, UIViewAnimationOptions.CurveEaseIn,
				() => {
					this.SelectedView.Alpha = 1;
					Highlighted = true;
				},
				null);
		}
		public override void TouchesEnded (NSSet touches, UIEvent evt)
		{
			base.TouchesEnded (touches, evt);
			UIView.Animate (AnimationLength, 0,
				UIViewAnimationOptions.CurveEaseIn | 
				UIViewAnimationOptions.AllowUserInteraction,
				() => {
					SelectedView.Alpha = 0.0f;
					Highlighted = false;
				}, null);
		}
		public override bool Highlighted {
			get {
				return base.Highlighted;
			}
			set {
				base.Highlighted = value;
				NumberLabel.Highlighted = value;
				LettersLabel.Highlighted = value;
			}
		}

		public UILabel StandardLabel()
		{ 
			UILabel label = new UILabel (RectangleF.Empty);
			label.TextColor = UIColor.White;
			label.BackgroundColor = UIColor.Clear;
			label.TextAlignment = UITextAlignment.Center;
			label.MinimumScaleFactor = 1.0f;
			return label;
		}
	}
}