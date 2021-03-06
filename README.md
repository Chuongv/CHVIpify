# CHVIpify

[![CI Status](http://img.shields.io/travis/Chuong Vu/CHVIpify.svg?style=flat)](https://travis-ci.org/Chuong Vu/CHVIpify)
[![Version](https://img.shields.io/cocoapods/v/CHVIpify.svg?style=flat)](http://cocoapods.org/pods/CHVIpify)
[![License](https://img.shields.io/cocoapods/l/CHVIpify.svg?style=flat)](http://cocoapods.org/pods/CHVIpify)
[![Platform](https://img.shields.io/cocoapods/p/CHVIpify.svg?style=flat)](http://cocoapods.org/pods/CHVIpify)

## Usage

Sometimes you need the IP address of the user's iphone. In this case you can use ipify.org to simplify
this!

```objective-c
#import "CHVIPRetriever.h"

CHVIPRetriever *retriever = [CHVIPRetriever new];

[retriever getIPAddress:^(NSString *ip, NSError *error) {
NSLog(@"IP: %@", ip); //your ip..
}];
```

## Requirements
* ARC
* iOS7

## Installation with CocoaPods

CHVIpify is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CHVIpify"
```

## Installation without CocoaPods

Just drag and drop `CHVFetchIPManager.h` and `CHVFetchIPManager.m` to your project

## Author

[Chuong Vu](chuongv@gmail.com)

## Credit

Big thanks to [Randall Degges](http://www.rdegges.com) for running and maintaining [ipify](https://www.ipify.org)!

## License

CHVIpify is available under the MIT license. See the LICENSE file for more info.
