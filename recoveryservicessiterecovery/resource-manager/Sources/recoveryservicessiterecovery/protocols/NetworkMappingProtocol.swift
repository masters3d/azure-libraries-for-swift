// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NetworkMappingProtocol is network Mapping model. Ideally it should have been possible to inherit this class from
// prev version in InheritedModels as long as there is no difference in structure or method signature. Since there were
// no base Models for certain fields and methods viz NetworkMappingProperties and Load with required return type, the
// class has been introduced in its entirety with references to base models to facilitate exensions in subsequent
// versions.
public protocol NetworkMappingProtocol : ResourceProtocol {
     var properties: NetworkMappingPropertiesProtocol? { get set }
}
