VERSION 5.00
Begin VB.Form black 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   9495
   ClientLeft      =   -180
   ClientTop       =   -180
   ClientWidth     =   12600
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9495
   ScaleWidth      =   12600
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   1305
      Top             =   1470
   End
End
Attribute VB_Name = "black"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
App.TaskVisible = False
End Sub

Private Sub Timer1_Timer()
blacktext.Show
Unload Me
End Sub
