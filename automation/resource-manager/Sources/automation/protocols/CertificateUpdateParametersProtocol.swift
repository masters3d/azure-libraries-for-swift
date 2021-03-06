// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CertificateUpdateParametersProtocol is the parameters supplied to the update certificate operation.
public protocol CertificateUpdateParametersProtocol : Codable {
     var name: String? { get set }
     var properties: CertificateUpdatePropertiesProtocol? { get set }
}
