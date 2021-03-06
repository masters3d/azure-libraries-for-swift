// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// MabErrorInfoProtocol is MAB workload-specific error information.
public protocol MabErrorInfoProtocol : Codable {
     var errorString: String? { get set }
     var recommendations: [String]? { get set }
}
