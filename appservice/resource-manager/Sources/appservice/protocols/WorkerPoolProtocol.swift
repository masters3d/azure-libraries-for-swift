// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// WorkerPoolProtocol is worker pool of an App Service Environment.
public protocol WorkerPoolProtocol : Codable {
     var workerSizeId: Int32? { get set }
     var computeMode: ComputeModeOptionsEnum? { get set }
     var workerSize: String? { get set }
     var workerCount: Int32? { get set }
     var instanceNames: [String]? { get set }
}
