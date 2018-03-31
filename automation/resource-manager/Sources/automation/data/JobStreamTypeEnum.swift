// JobStreamType enumerates the values for job stream type.

// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
public enum JobStreamTypeEnum: String, Codable
{
// _any specifies the _ any state for job stream type.
    case _any = "Any"
// Debug specifies the debug state for job stream type.
    case Debug = "Debug"
// Error specifies the error state for job stream type.
    case Error = "Error"
// Output specifies the output state for job stream type.
    case Output = "Output"
// Progress specifies the progress state for job stream type.
    case Progress = "Progress"
// Verbose specifies the verbose state for job stream type.
    case Verbose = "Verbose"
// Warning specifies the warning state for job stream type.
    case Warning = "Warning"
}
