// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HostNameSslStateProtocol is SSL-enabled hostname.
public protocol HostNameSslStateProtocol : Codable {
     var name: String? { get set }
     var sslState: SslStateEnum? { get set }
     var virtualIP: String? { get set }
     var thumbprint: String? { get set }
     var toUpdate: Bool? { get set }
     var hostType: HostTypeEnum? { get set }
}
