# OneTimePassword
### TOTP and HOTP one-time passwords for iOS

[![Build Status](https://travis-ci.org/mattrubin/OneTimePassword.svg?branch=objc)](https://travis-ci.org/mattrubin/OneTimePassword?branch=objc)
[![CocoaPods](https://img.shields.io/cocoapods/v/OneTimePassword.svg)](https://cocoapods.org/pods/OneTimePassword)
[![MIT License](http://img.shields.io/badge/license-mit-989898.svg)](https://github.com/mattrubin/OneTimePassword/blob/master/LICENSE.md)
[![Platform](https://img.shields.io/cocoapods/p/OneTimePassword.svg)](http://cocoadocs.org/docsets/OneTimePassword)

> This is an older version of the OneTimePassword library, which offers Objective-C compatibility. For a modern Swift API, check out [the latest version](https://github.com/mattrubin/OneTimePassword).

The [OneTimePassword](https://github.com/mattrubin/OneTimePassword) library is the core of [Authenticator](http://mattrubin.me/authenticator/). It can generate both [time-based](https://tools.ietf.org/html/rfc6238) and [counter-based](https://tools.ietf.org/html/rfc4226) one-time passwords as standardized in RFC 4226 and 6238. It can also read and generate the ["otpauth://" URLs](https://code.google.com/p/google-authenticator/wiki/KeyUriFormat) commonly used to set up OTP tokens, and can save and load tokens to and from the iOS secure keychain.

## License
OneTimePassword was created by [Matt Rubin](http://mattrubin.me) and is released under the [MIT License](LICENSE.md).
