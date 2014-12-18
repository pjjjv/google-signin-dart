// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_signin`.
library google_signin_dart.google_signin;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/interop.dart' show registerDartType;
import 'package:polymer/polymer.dart' show initMethod;
import 'package:paper_elements/paper_button_base.dart';
import 'package:custom_element_apigen/src/common.dart' show PolymerProxyMixin, DomProxyMixin;

/// &lt;google-signin&gt; is used to authenticate with Google, allowing you to interact
/// with other Google APIs such as Drive and Google+.
///
/// <img style="max-width:100%;" src="https://camo.githubusercontent.com/89a3787e89437c885e3244e0e36cc15042bc3ec4/687474703a2f2f692e696d6775722e636f6d2f534a58574e30772e706e67"/>
///
/// #### Examples
///
///     <google-signin clientId="..." scopes="https://www.googleapis.com/auth/drive"></google-signin>
///
///     <google-signin labelSignin="Sign-in" clientId="..." scopes="https://www.googleapis.com/auth/drive"></google-signin>
///
///     <google-signin theme="dark" width="iconOnly" clientId="..." scopes="https://www.googleapis.com/auth/drive"></google-signin>
///
/// #### Notes
///
/// The attribute `clientId` is provided in your Google Developers Console
/// (https://console.developers.google.com).
///
/// The `scopes` attribute allows you to specify which scope permissions are required
/// (e.g do you want to allow interaction with the Google Drive API). Many APIs also
/// need to be enabled in the Google Developers Console before you can use them.
/// The `requestVisibleActions` attribute is necessary if you want to write app
/// activities (https://developers.google.com/+/web/app-activities/) on behalf of
/// the user. Please note that this attribute is only valid in combination with the
/// plus.login scope (https://www.googleapis.com/auth/plus.login).
///
/// The `labelSignin` attribute is an optional piece of text used for customizing
/// the label on the sign-in button. `labelSignout` allows you to customize the label
/// for sign-out, and `labelAdditional` defines the label that is displayed when
/// additional permissions are necessary for incremental auth.
///
/// The button can be styled in using the `height`, `width`, and `theme` attributes.
/// These attributes help you follow the Google+ Sign-In button branding guidelines
/// (https://developers.google.com/+/branding-guidelines).
///
/// The `google-signin-success` event is triggered when a user successfully authenticates
/// and `google-signin-failure` is triggered when this is not the case. Both events
/// will also provide the data returned by the Google client authentication process.
///
/// Additional events, such as `google-signout-attempted` and `google-signed-out` are
/// triggered when the user attempts to sign-out and successfully signs out.
///
/// When requesting offline access, the `google-signin-offline` event is triggered when
/// the user successfully consents with offline support.
///
/// The `google-signin-necessary` event is fired when scopes requested via
/// google-signin-aware elements require additional user permissions.
///
/// #### Testing
///
/// By default, the demo accompanying this element is setup to work on localhost with
/// port 8080. That said, you *should* update the `clientId` to your own one for
/// any apps you're building. See the Google Developers Console
/// (https://console.developers.google.com) for more info.
class GoogleSignin extends PaperButtonBase {
  GoogleSignin.created() : super.created();
  factory GoogleSignin() => new Element.tag('google-signin');

  /// App package name for android over-the-air installs.
  /// See the relevant [docs](https://developers.google.com/+/web/signin/android-app-installs)
  String get appPackageName => jsElement[r'appPackageName'];
  set appPackageName(String value) { jsElement[r'appPackageName'] = value; }

  /// a Google Developers clientId reference
  String get clientId => jsElement[r'clientId'];
  set clientId(String value) { jsElement[r'clientId'] = value; }

  /// The cookie policy defines what URIs have access to the session cookie
  /// remembering the user's sign-in state.
  /// See the relevant [docs](https://developers.google.com/+/web/signin/reference#determining_a_value_for_cookie_policy) for more information.
  String get cookiePolicy => jsElement[r'cookiePolicy'];
  set cookiePolicy(String value) { jsElement[r'cookiePolicy'] = value; }

  /// The height to use for the button.
  ///
  /// Available options: short, standard, tall.
  get height => jsElement[r'height'];
  set height(value) { jsElement[r'height'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// By default the ripple expands to fill the button. Set this to true to
  /// constrain the ripple to a circle within the button.
  bool get fill => jsElement[r'fill'];
  set fill(bool value) { jsElement[r'fill'] = value; }

  /// An optional label for the button for additional permissions.
  String get labelAdditional => jsElement[r'labelAdditional'];
  set labelAdditional(String value) { jsElement[r'labelAdditional'] = value; }

  /// An optional label for the sign-in button.
  String get labelSignin => jsElement[r'labelSignin'];
  set labelSignin(String value) { jsElement[r'labelSignin'] = value; }

  /// An optional label for the sign-out button.
  String get labelSignout => jsElement[r'labelSignout'];
  set labelSignout(String value) { jsElement[r'labelSignout'] = value; }

  /// Allows for offline access_token retrieval during the signin process.
  bool get offline => jsElement[r'offline'];
  set offline(bool value) { jsElement[r'offline'] = value; }

  /// If true, the button will be styled with a shadow.
  bool get raised => jsElement[r'raised'];
  set raised(bool value) { jsElement[r'raised'] = value; }

  /// The app activity types you want to write on behalf of the user
  /// (e.g http://schemas.google.com/AddActivity)
  String get requestVisibleActions => jsElement[r'requestVisibleActions'];
  set requestVisibleActions(String value) { jsElement[r'requestVisibleActions'] = value; }

  /// The scopes to provide access to (e.g https://www.googleapis.com/auth/drive)
  /// and should be space-delimited.
  String get scopes => jsElement[r'scopes'];
  set scopes(String value) { jsElement[r'scopes'] = value; }

  /// The theme to use for the button.
  ///
  /// Available options: light, dark.
  get theme => jsElement[r'theme'];
  set theme(value) { jsElement[r'theme'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// The width to use for the button.
  ///
  /// Available options: iconOnly, standard, wide.
  get width => jsElement[r'width'];
  set width(value) { jsElement[r'width'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}
}
@initMethod
upgradeGoogleSignin() => registerDartType('google-signin', GoogleSignin);



/// google-signin-aware is used to enable authentication in custom elements by
/// interacting with a google-signin element that needs to be present somewhere
/// on the page.
///
/// The `scopes` attribute allows you to specify which scope permissions are required
/// (e.g do you want to allow interaction with the Google Drive API).
///
/// The `google-signin-aware-success` event is triggered when a user successfully
/// authenticates. The event will also provide the data returned by the Google client
/// authentication process.
///
/// The `google-signin-aware-success` event is triggered when a user successfully
/// authenticates and `google-signin-aware-failure` is triggered when this is not
/// he case. Both events will also provide the data returned by the Google client
/// authentication process. The `google-signin-aware-signed-out` event is triggered
/// when a user explicitly signs out via the google-signin element.
///
/// ##### Example
///
///     <google-signin-aware scopes="https://www.googleapis.com/auth/drive"></google-signin-aware>
class GoogleSigninAware extends HtmlElement with DomProxyMixin, PolymerProxyMixin {
  GoogleSigninAware.created() : super.created();
  factory GoogleSigninAware() => new Element.tag('google-signin-aware');

  /// The scopes to provide access to (e.g https://www.googleapis.com/auth/drive)
  /// and should be space-delimited.
  String get scopes => jsElement[r'scopes'];
  set scopes(String value) { jsElement[r'scopes'] = value; }
}
@initMethod
upgradeGoogleSigninAware() => registerDartType('google-signin-aware', GoogleSigninAware);
