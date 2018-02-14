// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ServiceCorrelationDescriptionProtocol is creates a particular correlation between services.
public protocol ServiceCorrelationDescriptionProtocol : Codable {
     var scheme: SchemeEnum { get set }
     var serviceName: String { get set }
}
