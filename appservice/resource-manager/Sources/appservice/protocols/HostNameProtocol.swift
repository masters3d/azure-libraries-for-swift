// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// HostNameProtocol is details of a hostname derived from a domain.
public protocol HostNameProtocol : Codable {
     var name: String? { get set }
     var siteNames: [String]? { get set }
     var azureResourceName: String? { get set }
     var azureResourceType: AzureResourceTypeEnum? { get set }
     var customHostNameDnsRecordType: CustomHostNameDnsRecordTypeEnum? { get set }
     var hostNameType: HostNameTypeEnum? { get set }
}
