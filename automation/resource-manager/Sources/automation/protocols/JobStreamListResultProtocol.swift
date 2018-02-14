// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobStreamListResultProtocol is the response model for the list job stream operation.
public protocol JobStreamListResultProtocol : Codable {
     var value: [JobStreamProtocol?]? { get set }
     var _nextLink: String? { get set }
}
