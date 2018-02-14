// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
import Foundation
// BootDiagnosticsProtocol is boot Diagnostics is a debugging feature which allows you to view Console Output and
// Screenshot to diagnose VM status. <br><br> For Linux Virtual Machines, you can easily view the output of your
// console log. <br><br> For both Windows and Linux virtual machines, Azure also enables you to see a screenshot of the
// VM from the hypervisor.
public protocol BootDiagnosticsProtocol : Codable {
     var enabled: Bool? { get set }
     var storageUri: String? { get set }
}
