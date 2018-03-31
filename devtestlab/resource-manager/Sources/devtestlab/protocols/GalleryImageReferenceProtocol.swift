// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// GalleryImageReferenceProtocol is the reference information for an Azure Marketplace image.
public protocol GalleryImageReferenceProtocol : Codable {
     var offer: String? { get set }
     var publisher: String? { get set }
     var sku: String? { get set }
     var osType: String? { get set }
     var version: String? { get set }
}
