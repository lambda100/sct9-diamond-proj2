Sub FormatReport()

    With Range("A1:P1")
        .Interior.ColorIndex = 37
        .Font.Bold = True
    End With
    
    With Range("A:C,E:O")
        .EntireColumn.AutoFit
    End With
    
    Range("A:A,E:E,H:H,O:O").Select
	With Selection
		.HorizontalAlignment = xlCenter
    End With
    
    Range("A:O").Select
	With Selection
		.VerticalAlignment = xlCenter
    End With
    
    Range("C:D,I:I").Select
    With Selection
        .ColumnWidth = 53#
        .WrapText = True
    End With
	
	Range("A1").AutoFilter
	Range("A:O").Sort Key1:=Range("H1"), Order1:=xlDescending
	
	Range("H:H").Select
	For Each rng In Selection
		If IsNumeric(rng.Value) Then
			If rng.Value >= 70 Then
				rng.Interior.Color = vbGreen
			End If
		End If
	Next rng

End Sub
