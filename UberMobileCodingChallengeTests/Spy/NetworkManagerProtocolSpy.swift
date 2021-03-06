//
//  NetworkManagerProtocolSpy.swift
//  UberMobileCodingChallengeTests
//
//  Created by Anand Mishra on 26/12/18.
//  Copyright © 2018 OrgID. All rights reserved.
//

import Foundation
import XCTest
@testable import UberMobileCodingChallenge


class NetworkManagerProtocolSpy: NetworkManagerProtocol {
    
    var isGetFlickrImageCalled = false
    var isDownloadImageCalled = false
    var isCancelDownloadingCalled = false
    
    var images:[FlickrImage]? = nil
    var errorString: String? = nil
    func getFlickrImage(page: Int, text: String, completion: @escaping ([FlickrImage]?, String?) -> ()) {
        isGetFlickrImageCalled = true
        completion(images, errorString)
    }
    
    var data: Data? = nil
    func downloadImage(flickrImage: FlickrImage, completion: @escaping (Data?, String?) -> ()) {
        isDownloadImageCalled = true
        completion(data, errorString)
    }
    
    func cancelDownloading() {
        isCancelDownloadingCalled = true
    }
}

