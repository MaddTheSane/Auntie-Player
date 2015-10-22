//
//    The MIT License (MIT)
//
//    Copyright (c) 2015 Phillip Caudell & Matthew Cheetham
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in
//    all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//    THE SOFTWARE.
//

import Foundation

public class EpisodeVersion : NSObject {
	public var identifier: String?
	public var kind: String?
	public var duration: String?
	public var HD = false

	public init(dictionary: [String: AnyObject]) {
		if let anID = dictionary["id"] as? String {
			self.identifier = anID
		}
		
		if let aKind = dictionary["kind"] as? String {
			self.kind = aKind
		}
		
		if let durationDict = dictionary["duration"] as? [String: AnyObject], durationText = durationDict["text"] as? String {
            self.duration = durationText;
        }
		
		if let anHD = dictionary["hd"] as? Bool {
			self.HD = anHD
		}
		
		super.init()
	}
}
