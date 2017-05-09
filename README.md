## Cordova Plugin Audio Category

A Cordova plugin for iOS to expose `AVAudioSession setCategory:error:` [1](https://developer.apple.com/reference/avfoundation/avaudiosession/1616583-setcategory?language=objc)

### Getting Started

Once you have set up your Cordova project, run:

```
cordova plugin add --save https://github.com/msbit/cordova-plugin-audio-category.git
```

and then, in your code:

```
window.MSBAudioCategory.setCategory('soloAmbient');
```

### Available Categories

The category value specified can be as follows:

* `ambient` corresponding to `AVAudioSessionCategoryAmbient`
* `multiRoute` corresponding to `AVAudioSessionCategoryMultiRoute`
* `playAndRecord` corresponding to `AVAudioSessionCategoryPlayAndRecord`
* `playback` corresponding to `AVAudioSessionCategoryPlayback`
* `record` corresponding to `AVAudioSessionCategoryRecord`
* `soloAmbient` corresponding to `AVAudioSessionCategorySoloAmbient`

Details of the individual `AVAudioSessionCategory` behaviours is as described in the Apple developer documentation. [2](https://developer.apple.com/reference/avfoundation/avaudiosession/audio_session_categories)

### Available Methods

Methods available in the plugin are:

```
window.MSBAudioCategory.getCategory()
```

```
window.MSBAudioCategory.setCategory(name)
```

### Todo

* Return promises from plugin methods
* Execute off main thread in native plugin

### References

* [1] https://developer.apple.com/reference/avfoundation/avaudiosession/1616583-setcategory?language=objc
* [2] https://developer.apple.com/reference/avfoundation/avaudiosession/audio_session_categories
