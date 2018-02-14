// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CertificateReferenceProtocol is
public protocol CertificateReferenceProtocol : Codable {
     var id: String { get set }
     var storeLocation: CertificateStoreLocationEnum? { get set }
     var storeName: String? { get set }
     var visibility: [CertificateVisibilityEnum?]? { get set }
}
