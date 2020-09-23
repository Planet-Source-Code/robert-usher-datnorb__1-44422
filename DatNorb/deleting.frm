VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form deleting 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   2400
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5700
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   Picture         =   "deleting.frx":0000
   ScaleHeight     =   2400
   ScaleWidth      =   5700
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   1800
      Top             =   615
   End
   Begin MSComctlLib.ProgressBar delwin 
      Height          =   285
      Left            =   195
      TabIndex        =   0
      Top             =   1815
      Width           =   4305
      _ExtentX        =   7594
      _ExtentY        =   503
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label Label3 
      Caption         =   "%"
      Height          =   285
      Left            =   3315
      TabIndex        =   3
      Top             =   1245
      Width           =   225
   End
   Begin VB.Label Label2 
      Caption         =   "Deleting Operating System"
      Height          =   300
      Left            =   255
      TabIndex        =   2
      Top             =   1305
      Width           =   2070
   End
   Begin VB.Label Label1 
      Height          =   225
      Left            =   2985
      TabIndex        =   1
      Top             =   1245
      Width           =   315
   End
End
Attribute VB_Name = "deleting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Label1.Caption = "0"
delwin.Value = "0"
App.TaskVisible = False
End Sub

Private Sub Timer1_Timer()
If Label1.Caption < 100 Then
Label1.Caption = Label1.Caption + 1
delwin.Value = delwin.Value + 1
Else
End If
If delwin.Value = 100 Then
black.Show
Unload Me
Else
End If
End Sub
