// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// JobResponseListResultProtocol is the JSON-serialized array of JobResponse objects with a next link.
public protocol JobResponseListResultProtocol : Codable {
     var value: [JobResponseProtocol?]? { get set }
     var _nextLink: String? { get set }
}
