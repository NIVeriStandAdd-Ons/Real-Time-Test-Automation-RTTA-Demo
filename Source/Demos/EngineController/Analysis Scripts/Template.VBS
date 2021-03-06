'-------------------------------------------------------------------------------
'-- VBS script file
'-- Created on 06/22/2010 17:00:21
'-- Author: 
'-- Comment: 
'-------------------------------------------------------------------------------
Option Explicit  'Forces the explicit declaration of all the variables in a script.
'''''' <<Template variables>>''''''''''''''
Dim LogNumChannel, WorkingDir, DataFilePath
''''''
'''''' <<User variable>>'''''''''''''''''''
'''''' Define user variables here''''''''''
''''
'''''''' <<Template Initialization>>''''''''
DataFilePath = Data.GetChannel("LogPaths").Values(1)
WorkingDir = Data.GetChannel("WorkDir").Values(1)
Call DataDelAll
Call DataFileLoad(DataFilePath)
'''''
'''''''''<<User Analysis Script>>''''''''
''' Insert Analysis script here''''''''''
'''''<<End of User Analysis Script>>''''''''''
''''''''''''''''''''''''''''''''''''''''''''''
'''''''''<<Template - Analysis Result>>'''''''
Call Data.Root.ChannelGroups.Add("TestResults", 1).Activate()      
Call Data.Root.ChannelGroups(1).Channels.Add("Analysis Result",DataTypeFloat64,1)   
'''' The following line has the logic to determine whether or not the test passed.'''''''''''''''''''
Call Calculate ("Ch(""TestResults/Analysis Result"")= IIf(Ch(""Mask Exceptions/NumExceptions"")>=215,0,1)")''''<--This should contain the logic to analyse the results (1 = pass, 0 = fail)
If FolderExist (WorkingDir & "\DDReports") then
Call PicHTMLExport(WorkingDir & "\DDReports\" & NameSplit(DataFilePath, "N") & "_MaskA" & ".htm")
Else
Call FolderCreate (WorkingDir & "\DDReports")
Call PicHTMLExport(WorkingDir & "\DDReports\" & NameSplit(DataFilePath, "N") & "_MaskA" & ".htm")
End If
''''''''''''''''<<End of Script>>''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''