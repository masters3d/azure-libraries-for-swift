// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ImageReferenceProtocol is
public protocol ImageReferenceProtocol : Codable {
     var publisher: String? { get set }
     var offer: String? { get set }
     var sku: String? { get set }
     var version: String? { get set }
     var virtualMachineImageId: String? { get set }
}
