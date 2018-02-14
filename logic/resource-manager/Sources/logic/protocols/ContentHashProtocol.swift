// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ContentHashProtocol is the content hash.
public protocol ContentHashProtocol : Codable {
     var algorithm: String? { get set }
     var value: String? { get set }
}