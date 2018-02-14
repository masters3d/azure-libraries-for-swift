// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// DiagnosticsProfileProtocol is specifies the boot diagnostic settings state. <br><br>Minimum api-version: 2015-06-15.
public protocol DiagnosticsProfileProtocol : Codable {
     var bootDiagnostics: BootDiagnosticsProtocol? { get set }
}
