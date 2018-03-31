// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ReissueCertificateOrderRequestPropertiesProtocol is reissueCertificateOrderRequest resource specific properties
public protocol ReissueCertificateOrderRequestPropertiesProtocol : Codable {
     var keySize: Int32? { get set }
     var delayExistingRevokeInHours: Int32? { get set }
     var csr: String? { get set }
     var isPrivateKeyExternal: Bool? { get set }
}
