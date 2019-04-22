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

Details of the individual `AVAudioSessionCategory` behaviours can be found in the Apple developer documentation. [2](https://developer.apple.com/reference/avfoundation/avaudiosession/audio_session_categories?language=objc)

### Available Methods

Methods available in the plugin are:

* `getCategory()`
* `setCategory(name)`

### Example Usage

#### Fetching the Current Category

```
window.MSBAudioCategory.getCategory().then((category) => {
  console.log(`Current AVAudioSessionCategory is ${category}`);
});
```

#### Updating the Category

```
window.MSBAudioCategory.setCategory('playback').then((result) => {
  console.log(`AVAudioSessionCategory has been updated: ${result}`);
}).catch((error) => {
  console.log(`AVAudioSessionCategory could not be updated: ${error}`);
});
```

### Todo


### References

* [1] https://developer.apple.com/reference/avfoundation/avaudiosession/1616583-setcategory?language=objc
* [2] https://developer.apple.com/reference/avfoundation/avaudiosession/audio_session_categories?language=objc
