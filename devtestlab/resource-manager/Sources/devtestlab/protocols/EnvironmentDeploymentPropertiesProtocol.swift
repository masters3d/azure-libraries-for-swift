// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// EnvironmentDeploymentPropertiesProtocol is properties of an environment deployment.
public protocol EnvironmentDeploymentPropertiesProtocol : Codable {
     var armTemplateId: String? { get set }
     var parameters: [ArmTemplateParameterPropertiesProtocol?]? { get set }
}