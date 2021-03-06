// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TopologyProtocol is topology of the specified resource group.
public protocol TopologyProtocol : Codable {
     var id: String? { get set }
     var createdDateTime: Date? { get set }
     var lastModified: Date? { get set }
     var resources: [TopologyResourceProtocol?]? { get set }
}
