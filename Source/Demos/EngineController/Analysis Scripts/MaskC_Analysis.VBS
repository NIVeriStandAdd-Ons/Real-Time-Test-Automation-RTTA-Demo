OPTION EXPLICIT
'''''' <<Template variables>>''''''''''''''
Dim LogNumChannel, WorkingDir, DataFilePath
''''''
'''''' <<User variable>>'''''''''''''''''''
'''''' Define user variables here''''''''''
Dim MeasSpeedChannel,  MaskSpeedChannel,  CompSpeedChannel,  ExcepTorqueChannel, PropNameChannel
Dim MeasTorqueChannel, MaskTorqueChannel, CompTorqueChannel, LimitTorqueChannel, PropValueChannel 
Dim MaskDataGroup, ComparisonGroup, ExceptionsGroup, ParametersGroup
Dim i, j, jMax, Group, Cols, PropN, PropV, mytime
''''
'''''''' <<Template Initialization>>''''''''
DataFilePath = Data.GetChannel("LogPaths").Values(1)
WorkingDir = Data.GetChannel("WorkDir").Values(1)
Call DataDelAll
Call DataFileLoad(DataFilePath)
mytime = Time
'''''
'''''''''<<User Analysis Script>>''''''''
''' Insert Analysis script here''''''''''
Set MeasSpeedChannel  = Data.GetChannel("*Outports/RPM")
Set MeasTorqueChannel = Data.GetChannel("*Outports/Load Torque")
Call DataFileLoad(AutoActPath & "Mask_C Data.TDM")
Set MaskDataGroup = Data.Root.ChannelGroups(GroupCount)
Set MaskSpeedChannel  = MaskDataGroup.Channels(1)
Set MaskTorqueChannel = MaskDataGroup.Channels(2)
Set ComparisonGroup = Data.Root.ChannelGroups.Add("Mask Comparison")
Set ExceptionsGroup = Data.Root.ChannelGroups.Add("Mask Exceptions")
Set ParametersGroup = Data.Root.ChannelGroups.Add("Parameters")
Call ComparisonGroup.Activate
Call ChnMultipleSort(MeasSpeedChannel, MeasTorqueChannel, FALSE)
Set CompSpeedChannel  = ComparisonGroup.Channels(1)
Set CompTorqueChannel = ComparisonGroup.Channels(2)
CompSpeedChannel.Name  = MeasSpeedChannel.Name
CompTorqueChannel.Name = MeasTorqueChannel.Name
Set LimitTorqueChannel = ComparisonGroup.Channels.Add("Mask Torque", DataTypeFloat64)
Call ChnMapLinCalc(MaskSpeedChannel, MaskTorqueChannel, CompSpeedChannel, LimitTorqueChannel, 0, "const. value", Null, "analogue")
Set ExcepTorqueChannel = ComparisonGroup.Channels.Add("Torque Exceptions", DataTypeFloat64)
L1 = CompTorqueChannel.Properties("Number").Value
L2 = LimitTorqueChannel.Properties("Number").Value
L3 = ExcepTorqueChannel.Properties("Number").Value
ChnLength(L3) = ChnLength(L1)
Call FormulaCalc("Ch(L3):= Ch(L1) + NoValue*(Ch(L1)<=Ch(L2))")
Call ExceptionsGroup.Activate
Call ChnNovHandle(CompSpeedChannel, ExcepTorqueChannel, "Delete", "XY", 0, 0)
ExceptionsGroup.Channels(1).Name = "RPM Exceptions"
ExceptionsGroup.Channels(2).Name = "Torque Exceptions"
Set PropNameChannel  = ParametersGroup.Channels.Add("Parameter Name",  DataTypeString)
Set PropValueChannel = ParametersGroup.Channels.Add("Parameter Value", DataTypeString)
FOR Each Group In Data.Root.ChannelGroups
  IF Group.Channels.Count = 1 THEN
    IF Group.Channels(1).Name = "Value" THEN
      Cols = Split("\" & Group.Name, "\")
      jMax = UBound(Cols)
      PropN = Trim(Cols(jMax))
      PropV = Group.Channels(1).Values(1)
      PropN = Replace(PropN, "(", "")
      PropN = Replace(PropN, ")", "")
      PropN = Replace(PropN, " ", "_")
      PropN = Replace(PropN, "__", "_")
      PropN = Replace(PropN, "__", "_")
      PropN = Replace(PropN, "__", "_")
      Data.Root.Properties.Add PropN, PropV
      i = i + 1
      PropNameChannel.Values(i)  = PropN
      PropValueChannel.Values(i) = PropV
      Data.Root.ChannelGroups.Remove(Group.Name)
    END IF
  END IF
NEXT ' Group
Call Data.Root.ChannelGroups.Remove(MaskDataGroup.Name)
Call Data.Root.ChannelGroups(6).Channels.Add("NumExceptions",DataTypeFloat64,3)   ' this was on 65
Call PicLoad(AutoActPath & "Mask Comparison.TDR")    ' this was on 63  This was Mask Comparison.tdr
Call PicUpdate
ExceptionsGroup.Channels(3).Values(1) =ExceptionsGroup.Channels(2).Size 
L1 = ExcepTorqueChannel.Size
Data.Root.Properties.Add "Mask_Exceptions", L1
IF L1 = 0 THEN Data.Root.Properties.Add "Mask_Status", "Pass"
IF L1 > 0 THEN Data.Root.Properties.Add "Mask_Status", "Fail"
Call DataFileSave(NameSplit(DataFilePath,"N") & Str(mytime), "TDM")
PDFFileName = NameSplit(DataFilePath, "P") & NameSplit(DataFilePath, "N") & ".pdf"
PDFResolution = "72 DPI"  '  "2400 DPI" ,  "default"
PDFOptimization = TRUE
PDFFontsEmbedded = FALSE
PDFJPGCompressed = "high"
On Error Resume Next
'''''<<End of User Analysis Script>>''''''''''
''''''''''''''''''''''''''''''''''''''''''''''
'''''''''<<Template - Analysis Result>>'''''''
Call Data.Root.ChannelGroups.Add("TestResults", 1).Activate()      
Call Data.Root.ChannelGroups(1).Channels.Add("Analysis Result",DataTypeFloat64,1)   
'''' The following line has the logic to determine whether or not the test passed.'''''''''''''''''''
Call Calculate ("Ch(""TestResults/Analysis Result"")= IIf(Ch(""Mask Exceptions/NumExceptions"")>=215,0,1)")'''<--This should contain the logic to analyse the results (1 = pass, 0 = fail)
If FolderExist (WorkingDir & "\DDReports") then
Call PicHTMLExport(WorkingDir & "\DDReports\" & NameSplit(DataFilePath, "N") & "_MaskC" & Str(mytime)& ".htm")
Else
Call FolderCreate (WorkingDir & "\DDReports")
Call PicHTMLExport(WorkingDir & "\DDReports\" & NameSplit(DataFilePath, "N") & "_MaskC" & Str(mytime)& ".htm")
End If
''''''''''''''''<<End of Script>>''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''