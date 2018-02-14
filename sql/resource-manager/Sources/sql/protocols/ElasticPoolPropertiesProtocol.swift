// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ElasticPoolPropertiesProtocol is represents the properties of an elastic pool.
public protocol ElasticPoolPropertiesProtocol : Codable {
     var creationDate: Date? { get set }
     var state: ElasticPoolStateEnum? { get set }
     var edition: ElasticPoolEditionEnum? { get set }
     var dtu: Int32? { get set }
     var databaseDtuMax: Int32? { get set }
     var databaseDtuMin: Int32? { get set }
     var storageMB: Int32? { get set }
     var zoneRedundant: Bool? { get set }
}
