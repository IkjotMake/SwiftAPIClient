//
//  Request.swift
//  SwiftAPIClient
//
//  Copyright (c) 2017-2019 RichAppz Limited (https://richappz.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation
import Alamofire

open class Request {
    
    //==========================================
    // MARK: Properties
    //==========================================
    
    open var rootUrl: String?
    open var endpoint: String
    open var encodingType: ParameterEncoding?
    open var parameters: [String: Any]?
    open var priority: Operation.QueuePriority
    open var qualityOfService: QualityOfService
    
    //==========================================
    // MARK: Initialization
    //==========================================
    
    public init(
        endpoint: String = "",
        encodingType: ParameterEncoding? = nil,
        parameters: [String: Any]? = nil,
        priority: Operation.QueuePriority? = .high,
        qualityOfService: QualityOfService? = .default) {
        
        self.endpoint = endpoint
        self.encodingType = encodingType
        self.parameters = parameters
        self.priority = priority ?? .veryHigh
        self.qualityOfService = qualityOfService ?? .userInitiated
    }
    
}
