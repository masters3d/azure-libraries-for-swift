// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// CrmConnectorPropertiesProtocol is the CRM connector properties.
public protocol CrmConnectorPropertiesProtocol : Codable {
     var connectionString: String? { get set }
     var organizationId: String { get set }
     var organizationUrl: String { get set }
     var entities: [CrmConnectorEntitiesProtocol] { get set }
     var accessToken: String? { get set }
}
