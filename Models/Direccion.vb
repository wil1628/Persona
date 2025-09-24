Public Class Direccion

    Private _calle As String
    Private _ciudad As String
    Private _codigoPostal As String
    Public Property Calle As String
        Get
            Return _calle
        End Get
        Set(value As String)
            _calle = value
        End Set
    End Property
    Public Property Ciudad As String
        Get
            Return _ciudad
        End Get
        Set(value As String)
            _ciudad = value
        End Set
    End Property
    Public Property CodigoPostal As String
        Get
            Return _codigoPostal
        End Get
        Set(value As String)
            _codigoPostal = value
        End Set
    End Property
    Public Sub New()
    End Sub
    Public Sub New(calle As String, ciudad As String, codigoPostal As String)
        Me.Calle = calle
        Me.Ciudad = ciudad
        Me.CodigoPostal = codigoPostal
    End Sub

End Class
