// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// RawCertificateDataProtocol is raw certificate data.
public protocol RawCertificateDataProtocol : Codable {
     var authType: AuthTypeEnum? { get set }
     var certificate: [UInt8]? { get set }
}
