// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// TensorFlowSettingsProtocol is specifies the settings for TensorFlow job.
public protocol TensorFlowSettingsProtocol : Codable {
     var pythonScriptFilePath: String { get set }
     var pythonInterpreterPath: String? { get set }
     var masterCommandLineArgs: String { get set }
     var workerCommandLineArgs: String? { get set }
     var parameterServerCommandLineArgs: String? { get set }
     var workerCount: Int32? { get set }
     var parameterServerCount: Int32? { get set }
}
