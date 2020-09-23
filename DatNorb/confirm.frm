VERSION 5.00
Begin VB.Form confirm 
   BorderStyle     =   0  'None
   ClientHeight    =   2280
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6300
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   Picture         =   "confirm.frx":0000
   ScaleHeight     =   2280
   ScaleWidth      =   6300
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "No"
      Height          =   390
      Left            =   4680
      TabIndex        =   1
      Top             =   1665
      Width           =   1365
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Yes"
      Default         =   -1  'True
      Height          =   390
      Left            =   2760
      TabIndex        =   0
      Top             =   1665
      Width           =   1365
   End
   Begin VB.Label q1 
      Height          =   435
      Left            =   1560
      TabIndex        =   2
      Top             =   1665
      Visible         =   0   'False
      Width           =   735
   End
End
Attribute VB_Name = "confirm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
     
Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command2.Left = Int(Rnd * 2000)
Command2.Top = Int(Rnd * 2000)
End Sub


Private Sub Command1_Click()
deleting.Show
Unload Me
End Sub

Private Sub Command2_Click()
Command2.Caption = "Yes"
Command1.Caption = "Yes"
q1 = q1 + 1
If q1 = 2 Then
deleting.Show
Unload Me
Else
End If
End Sub

Private Sub Form_Load()
q1 = "0"
App.TaskVisible = False
End Sub
