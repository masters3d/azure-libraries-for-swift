// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// SBNamespaceUpdateParametersProtocol is description of a namespace resource.
public protocol SBNamespaceUpdateParametersProtocol : ResourceNamespacePatchProtocol {
     var sku: SBSkuProtocol? { get set }
     var properties: SBNamespacePropertiesProtocol? { get set }
}
