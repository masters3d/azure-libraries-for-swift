// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EventProtocol is a container group or container instance event.
public protocol EventProtocol : Codable {
     var count: Int32? { get set }
     var firstTimestamp: Date? { get set }
     var lastTimestamp: Date? { get set }
     var name: String? { get set }
     var message: String? { get set }
     var type: String? { get set }
}
