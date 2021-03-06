// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ContainerServiceServicePrincipalProfileProtocol is information about a service principal identity for the cluster to
// use for manipulating Azure APIs.
public protocol ContainerServiceServicePrincipalProfileProtocol : Codable {
     var clientId: String { get set }
     var secret: String { get set }
}
