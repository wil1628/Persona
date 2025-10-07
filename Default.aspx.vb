Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim persona1 As New Persona()
        Dim persona2 As New Persona(25)
        Dim persona3 As New Persona("Juan", "Pérez", 35)
    End Sub
End Class