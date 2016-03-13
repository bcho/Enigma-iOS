//
//  SHA1.swift
//  Enigma
//
//  Created by hbc on 3/13/16.
//  Copyright © 2016 hbc. All rights reserved.
//

extension String {
    func sha1() -> String {
        let data = self.dataUsingEncoding(NSUTF8StringEncoding)!
        var digest = [UInt8](count:Int(CC_SHA1_DIGEST_LENGTH), repeatedValue: 0)
        CC_SHA1(data.bytes, CC_LONG(data.length), &digest)
        let hexBytes = digest.map { String(format: "%02hhx" $0) }
        return hexBytes.joinWithSeparator("")
    }
}