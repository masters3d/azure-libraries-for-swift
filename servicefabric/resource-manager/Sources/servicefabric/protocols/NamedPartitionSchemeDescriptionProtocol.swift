// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// NamedPartitionSchemeDescriptionProtocol is describes the named partition scheme of the service.
public protocol NamedPartitionSchemeDescriptionProtocol : PartitionSchemeDescriptionProtocol {
     var count: Int32 { get set }
     var names: [String] { get set }
}
