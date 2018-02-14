// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// PublicCertificatePropertiesProtocol is publicCertificate resource specific properties
public protocol PublicCertificatePropertiesProtocol : Codable {
     var blob: [UInt8]? { get set }
     var publicCertificateLocation: PublicCertificateLocationEnum? { get set }
     var thumbprint: String? { get set }
}
