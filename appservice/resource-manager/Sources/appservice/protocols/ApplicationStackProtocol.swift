// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// ApplicationStackProtocol is application stack.
public protocol ApplicationStackProtocol : Codable {
     var name: String? { get set }
     var display: String? { get set }
     var dependency: String? { get set }
     var majorVersions: [StackMajorVersionProtocol?]? { get set }
     var frameworks: [ApplicationStackProtocol?]? { get set }
}
