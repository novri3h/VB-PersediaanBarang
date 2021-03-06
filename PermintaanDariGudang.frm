VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form PermintaanDariGudang 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Permintaan Barang Dari Gudang"
   ClientHeight    =   5985
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5985
   ScaleWidth      =   5970
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton CmdTutup 
      Caption         =   "&Tutup"
      Height          =   350
      Left            =   3240
      TabIndex        =   11
      Top             =   5400
      Width           =   855
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "PermintaanDariGudang.frx":0000
      Height          =   4215
      Left            =   120
      TabIndex        =   10
      Top             =   1080
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   7435
      _Version        =   393216
      AllowUpdate     =   0   'False
      HeadLines       =   2
      RowHeight       =   15
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   4
      BeginProperty Column00 
         DataField       =   "Nomor"
         Caption         =   "Nomor"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "Kode"
         Caption         =   "Kode"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "Nama"
         Caption         =   "Nama"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "Jumlah"
         Caption         =   "Jumlah"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
            Alignment       =   2
            Locked          =   -1  'True
            ColumnWidth     =   750.047
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   750.047
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   2745.071
         EndProperty
         BeginProperty Column03 
            Alignment       =   2
            ColumnWidth     =   750.047
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   120
      Top             =   6360
      Width           =   2295
      _ExtentX        =   4048
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton CmdBatal 
      Caption         =   "&Batal"
      Height          =   350
      Left            =   2280
      TabIndex        =   9
      Top             =   5400
      Width           =   855
   End
   Begin Crystal.CrystalReport CR 
      Left            =   4200
      Top             =   5400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.TextBox TxtTotal 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   4680
      TabIndex        =   4
      Top             =   5400
      Width           =   750
   End
   Begin VB.CommandButton CmdSimpan 
      Caption         =   "&Simpan Dan Cetak Data"
      Height          =   350
      Left            =   120
      TabIndex        =   3
      Top             =   5400
      Width           =   2055
   End
   Begin VB.CommandButton CmdTampilkan 
      Caption         =   "Tampilkan &Data"
      Height          =   315
      Left            =   4080
      TabIndex        =   2
      Top             =   600
      Width           =   1695
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   2760
      TabIndex        =   1
      Top             =   600
      Width           =   1275
   End
   Begin VB.Label TanggalMnt 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   4080
      TabIndex        =   8
      Top             =   120
      Width           =   1755
   End
   Begin VB.Label NomorMnt 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Height          =   345
      Left            =   1200
      TabIndex        =   7
      Top             =   120
      Width           =   1395
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Tanggal"
      Height          =   345
      Left            =   2760
      TabIndex        =   6
      Top             =   120
      Width           =   1245
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Nomor"
      Height          =   345
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   1000
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   " Pilih Stok Barang Minimum"
      Height          =   195
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1920
   End
End
Attribute VB_Name = "PermintaanDariGudang"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()
Call Koneksi
Adodc1.ConnectionString = PathData
Adodc1.RecordSource = "select Nomor,Kode,Nama,Jumlah from TMPMintaBeli"
Adodc1.Refresh
Set DataGrid1.DataSource = Adodc1
DataGrid1.Refresh
Call Auto
TanggalMnt = Date
End Sub

'tampilkan angka 1 s/d 50 step 5
'di combo1
Private Sub Form_Load()
Call Koneksi
For i = 0 To 50 Step 5
    Combo1.AddItem i
Next i
CmdBatal_Click
End Sub

'cetak laporan permintaan
'barang dari gudang ke bagian pembelian
Sub CetakPermintaanBeli()
    CR.ReportFileName = App.Path & "\lap Minta Stok Barang.rpt"
    CR.WindowState = crptMaximized
    CR.RetrieveDataFiles
    CR.Action = 1
End Sub


Private Sub CmdTutup_Click()
Unload Me
End Sub

'menampilkan nomor permintaan otomatis
'berdasarkan tanggal
Private Sub Auto()
Call Koneksi
RSMintaBeli.Open "select * from PermintaanBeli Where NomorMnt In(Select Max(NomorMnt)From PermintaanBeli)Order By NomorMnt Desc", Conn
RSMintaBeli.Requery
Dim Urutan As String * 10
Dim Hitung As Long
With RSMintaBeli
    If .EOF Then
        Urutan = Format(Date, "yymmdd") + "0001"
        NomorMnt = Urutan
    Else
        If Left(!NomorMnt, 6) <> Format(Date, "yymmdd") Then
            Urutan = Format(Date, "yymmdd") + "0001"
        Else
            Hitung = (!NomorMnt) + 1
            Urutan = Format(Date, "yymmdd") + Right("0000" & Hitung, 4)
        End If
    End If
    NomorMnt = Urutan
End With
End Sub

'hapus isi tabel TMPMintabeli
Sub TabelKosong()
Call Koneksi
Dim hapus As String
hapus = "delete * from TMPMintaBeli"
Conn.Execute hapus
Form_Activate
End Sub

'tampilkan data hasil pencarian
'stok barang minimal ke dalam grid

Private Sub CmdTampilkan_Click()
If Combo1 = "" Then
    MsgBox "pilih jumlah barang minimal dalam combo"
    Combo1.SetFocus
    Exit Sub
Else
    Call TabelKosong
    'cari stok barang yang jumlahnya < dari jumlah
    'yang dipilih di combo
    RSBarang.Open "select * from barang where val(jumlahbrg)<=" & Val(Combo1) & "", Conn
    RSBarang.Requery
    If RSBarang.EOF Then
        MsgBox "data tidak ditemukan"
        Call TabelKosong
    Else
        RSBarang.MoveFirst
        Nomor = 0
        Do While Not RSBarang.EOF
            Nomor = Nomor + 1
            Adodc1.Recordset.AddNew
            Adodc1.Recordset!Nomor = Nomor
            Adodc1.Recordset!Kode = RSBarang!kodebrg
            Adodc1.Recordset!Nama = RSBarang!namabrg
            Adodc1.Recordset!JUMLAH = RSBarang!jumlahbrg
            Adodc1.Recordset.Update
            RSBarang.MoveNext
        Loop
        Call TotalItem
        TxtTotal.Enabled = False
    End If
End If
End Sub

Private Sub CmdSimpan_Click()
Call Koneksi
Dim simpan1 As String
'simpan data ke tabel Permintaanbeli (hanya sekali)
simpan1 = "insert into PermintaanBeli(nomormnt,tanggalmnt,totalmnt,kodepmk) values " & _
"('" & NomorMnt & "','" & TanggalMnt & "','" & TxtTotal & "','ADM1')"
Conn.Execute simpan1

'simpan data ke tabel DetailMintaBeli berulang-ulang
Adodc1.Recordset.MoveFirst
Do While Not Adodc1.Recordset.EOF
    Dim simpan2 As String
    simpan2 = "insert into DetailMintaBeli(nomormnt,KODEBRG,QTYMNT) values " & _
    "('" & NomorMnt & "','" & Adodc1.Recordset!Kode & "','" & Adodc1.Recordset!JUMLAH & "')"
    Conn.Execute simpan2
Adodc1.Recordset.MoveNext
Loop
Form_Activate
Call TabelKosong
TxtTotal = ""
'panggil file Crystal report
Call CetakPermintaanBeli
End Sub

'mencari total item
Function TotalItem()
On Error Resume Next
Adodc1.Recordset.MoveFirst
Item = 0
Do While Not Adodc1.Recordset.EOF
    Item = Item + Adodc1.Recordset!JUMLAH
    Adodc1.Recordset.MoveNext
    TxtTotal = Item
Loop
End Function

Private Sub CmdBatal_Click()
Combo1 = ""
Call TabelKosong
TxtTotal = ""
End Sub

