Imports System.Data.SqlClient

Public Class DataBaseHelper

    Public ReadOnly ConectionString As String = ConfigurationManager.ConnectionStrings("II46ConnectionString").ConnectionString

    Public Function create(Persona As Persona) As String
        Try
            Dim sql As String = "INSERT INTO Persona (Nombre, Apellido, Edad) VALUES (@Nombre, @Apellido, @Edad)"
            Dim Parametros As New List(Of SqlParameter) From {
                New SqlParameter("@Nombre", Persona.Nombre),
                New SqlParameter("@Apellido", Persona.Apellido),
                New SqlParameter("@Edad", Persona.Edad)
            }

            Using connetion As New SqlConnection(ConectionString)
                Using command As New SqlCommand(sql, connetion)
                    command.Parameters.AddRange(Parametros.ToArray())
                    connetion.Open()
                    command.ExecuteNonQuery()
                End Using
            End Using
        Catch ex As Exception

        End Try

        Return "Persona creada"
    End Function

End Class
