VERSION 5.00
Begin VB.Form blacktext 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   10995
   ClientLeft      =   -360
   ClientTop       =   -1095
   ClientWidth     =   13005
   LinkTopic       =   "Form1"
   ScaleHeight     =   10995
   ScaleWidth      =   13005
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "Please Click To Reinstall OS"
      Height          =   540
      Left            =   5880
      TabIndex        =   0
      Top             =   4710
      Width           =   1710
   End
   Begin VB.Label clickme 
      BackStyle       =   0  'Transparent
      Height          =   735
      Left            =   15
      TabIndex        =   1
      Top             =   0
      Width           =   885
   End
End
Attribute VB_Name = "blacktext"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub clickme_DblClick()
Unload Me
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.Left = Int(Rnd * 6000)
Command1.Top = Int(Rnd * 6000)
End Sub

