## Installation
```
cordova plugin add https://github.com/en-japan/partytrack-plugin.git
```

## Usage
In Ionic's project, you can initialize the SDK like this:


```
	appId = 1111 // appId registerd with PartyTrack
	appKey = "APP_KEY" // appKey registerd with PartyTrack
	onSuccess = () => {} // callback for success
	onError = () => {} // callback for error
    $ionicPlatform.ready ->
        partytrack.startWithAppIDAndKey(appId, appKey, onSuccess, onError)
```

## See Also
[PartyTrack manual (Japanese)](https://cdn-assets-hall-com.s3.amazonaws.com/production/private/halls/543237e0e8c8152e7f0000ca/user_uploaded_files/PartyTrack_iOS_SDK_Guide_ja.pdf?AWSAccessKeyId=17VVCSSS3H6YGDY9H3G2&Expires=1444206087&Signature=MGWRNFv82BJDyeUyRGrkm3Gckhs%3D&response-content-type=application%2Fpdf)