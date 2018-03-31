// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TrackedResourceProtocol is ARM tracked top level resource.
public protocol TrackedResourceProtocol : ResourceProtocol {
     var tags: [String:String]? { get set }
     var location: String { get set }
}
