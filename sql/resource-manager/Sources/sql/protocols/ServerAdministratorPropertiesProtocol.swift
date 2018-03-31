// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServerAdministratorPropertiesProtocol is the properties of an server Administrator.
public protocol ServerAdministratorPropertiesProtocol : Codable {
     var administratorType: String { get set }
     var login: String { get set }
     var sid: String { get set }
     var tenantId: String { get set }
}
