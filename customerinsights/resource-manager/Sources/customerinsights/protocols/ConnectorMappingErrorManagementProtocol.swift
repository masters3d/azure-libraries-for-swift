// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ConnectorMappingErrorManagementProtocol is the error mangement.
public protocol ConnectorMappingErrorManagementProtocol : Codable {
     var errorManagementType: ErrorManagementTypesEnum { get set }
     var errorLimit: Int32? { get set }
}
