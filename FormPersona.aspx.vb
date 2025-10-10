Public Class FormPersona
    Inherits System.Web.UI.Page
    Public persona As New Persona()
    Protected dbHelper As New DataBaseHelper()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_guardar(sender As Object, e As EventArgs)

        persona.Nombre = txtNombre.Text
        persona.Apellido = txtApellido.Text
        persona.Edad = txtEdad.Text

        lblMensaje.Text = dbHelper.create(persona)

    End Sub

End Class