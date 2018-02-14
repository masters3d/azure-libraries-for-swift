// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ClientDiscoveryForServiceSpecificationProtocol is class to represent shoebox service specification in json client
// discovery.
public protocol ClientDiscoveryForServiceSpecificationProtocol : Codable {
     var logSpecifications: [ClientDiscoveryForLogSpecificationProtocol?]? { get set }
}
