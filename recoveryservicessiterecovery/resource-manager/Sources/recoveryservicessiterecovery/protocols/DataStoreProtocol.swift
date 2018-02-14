// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DataStoreProtocol is the datastore details of the MT.
public protocol DataStoreProtocol : Codable {
     var symbolicName: String? { get set }
     var uuid: String? { get set }
     var capacity: String? { get set }
     var freeSpace: String? { get set }
     var type: String? { get set }
}
