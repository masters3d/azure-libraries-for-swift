// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DatabaseAccountProtocol is an Azure Cosmos DB database account.
public protocol DatabaseAccountProtocol : ResourceProtocol {
     var kind: DatabaseAccountKindEnum? { get set }
     var properties: DatabaseAccountPropertiesProtocol? { get set }
}