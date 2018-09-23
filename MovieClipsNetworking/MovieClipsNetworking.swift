//
//  MovieClipsNetworking.swift
//  MovieClipsNetworking
//
//  Created by Chen Hao on 9/23/18.
//  Copyright © 2018 STPDChen. All rights reserved.
//

import UIKit
import AVFoundation

class MovieClipsNetworking {

    class func image(for url: URL, completion: @escaping (UIImage?) -> ()) {
        MCCaching.shared.image(for: url, completion: completion)
    }
    
    class func video(for url: URL, completion: @escaping (AVPlayerItem?) -> ()) {
        MCCaching.shared.video(for: url, completion: completion)
    }
    
}
