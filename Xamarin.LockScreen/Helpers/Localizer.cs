using System;
using MonoTouch.Foundation;

namespace Xamarin.LockScreen
{
	public static class Localizer
	{
		/// <summary>
		/// Converts the string to the specified local version. If fails, will just return default locale.
		/// </summary>
		/// <returns>The string to translate</returns>
		/// <param name="locale">Locale code. Eg: en (English)</param>
		public static string Translate (this string str)
		{
			if (String.IsNullOrEmpty(str))
				return String.Empty;

			return NSBundle.MainBundle.LocalizedString(str, str);
		}
	}
}

