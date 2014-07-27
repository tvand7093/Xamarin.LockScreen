using System;
using MonoTouch.Security;
using MonoTouch.Foundation;

namespace Xamarin.LockScreen.Security
{
	public static class Keychain
	{
		private static string Key { get { return NSBundle.MainBundle.BundleIdentifier + " - Locker"; } }

		private static SecRecord GenerateRecord(){
			return new SecRecord (SecKind.GenericPassword){
				Generic = NSData.FromString (Key),
				Service = Key,
				Label = Key,
				Description = Key,
				Synchronizable = true
			};
		}
		private static SecRecord QueryRecord(SecRecord toSearch)
		{
			SecStatusCode res;
			var match = SecKeyChain.QueryAsRecord (toSearch, out res);
			return match;
		}

		public static bool IsPasswordSet(){
			var found = QueryRecord (GenerateRecord ());
			return found != null;

		}

		public static string GetPassword(){
			var rec = GenerateRecord ();

			SecStatusCode res;
			var match = SecKeyChain.QueryAsRecord (rec, out res);

			if (match != null)
				return match.ValueData.ToString ();
			else
				return string.Empty;
		}

		public static void SavePassword(string value){
			var toSave = GenerateRecord ();

			var doesExist = IsPasswordSet ();
			if (doesExist) {
				SecKeyChain.Remove (toSave);
			}

			toSave.ValueData = NSData.FromString (value);
			SecKeyChain.Add (toSave);
		}
	}
}