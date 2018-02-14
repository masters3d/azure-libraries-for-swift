// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NodeAgentSkuProtocol is the Batch node agent is a program that runs on each node in the pool, and provides the
// command-and-control interface between the node and the Batch service. There are different implementations of the
// node agent, known as SKUs, for different operating systems.
public protocol NodeAgentSkuProtocol : Codable {
     var id: String? { get set }
     var verifiedImageReferences: [ImageReferenceProtocol?]? { get set }
     var osType: OSTypeEnum? { get set }
}
