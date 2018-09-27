# MovieClipsNetworking

## About

The MovieClipsNetworking is a Networking and Caching tool that allows your iOS app:
1. Request data from one specific url (http://private-04a55-videoplayer1.apiary-mock.com/pictures) to get array of MCClip objects. 
2. Fetch image and video by url from disk cache, or download if not found locally. 

## Sample Usage

Request clips data: 

```ruby
  public class func clips(url: URL, completion: @escaping (Error?, [MCClip]?) -> ())
```

```ruby
  let sourceUrlString = "http://private-04a55-videoplayer1.apiary-mock.com/pictures"
  let url = URL(string: sourceUrlString)
  MovieClipsNetworking.clips(url: url) { (error, clips) in
      if error != nil {
          // handle error
      }
      if let clips = clips {
          // use clips data in your app
      }
  }
```

Fetch Image: 
```ruby
  public class func image(for url: URL, completion: @escaping (UIImage?) -> ())
```

```ruby
  let sourceUrlString = "http://sample.url.com"
  let url = URL(string: sourceUrlString)
  MovieClipsNetworking.image(for: url, completion: { (image) in
      if let image = image {
          DispatchQueue.main.async {
              // use image in your app
              // don't forget to run ui code in main thread
          }
      }
  })
                
```

Fetch Video: 
```ruby
  public class func video(for url: URL, completion: @escaping (AVPlayerItem?) -> ())
```

```ruby
  let sourceUrlString = "http://sample.url.com"
  let url = URL(string: sourceUrlString)
  MovieClipsNetworking.video(for: url, completion: { (video) in
      if let video = video {
          DispatchQueue.main.async {
              // use image in your app
              // don't forget to run ui code in main thread
          }
      }
  })
                
```

## Requirements

A deployment target of iOS 9 or higher is required

## Installation

MovieClipsNetworking is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MovieClipsNetworking'
```

## Author

stpdc, 43500109+stpdc@users.noreply.github.com

## License

MovieClipsNetworking is available under the MIT license. See the LICENSE file for more info.

Terms of Service
