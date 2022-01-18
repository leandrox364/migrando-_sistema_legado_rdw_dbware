object FrmCliente: TFrmCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'FrmCliente'
  ClientHeight = 600
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 105
    Align = alTop
    Color = 8870657
    ParentBackground = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 40
      Top = 24
      Width = 540
      Height = 57
      DataSource = DtsCliente
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 540
    Width = 1008
    Height = 60
    Align = alBottom
    Color = 8870657
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 105
    Width = 1008
    Height = 435
    Align = alClient
    Color = 16119285
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 256
      Top = 8
      Width = 14
      Height = 14
      Caption = 'ID'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 48
      Width = 35
      Height = 14
      Caption = 'NOME'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 88
      Width = 39
      Height = 14
      Caption = 'EMAIL'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 256
      Top = 128
      Width = 39
      Height = 14
      Caption = 'IDADE'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 256
      Top = 184
      Width = 600
      Height = 225
      DataSource = DtsCliente
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDADE'
          Width = 40
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 256
      Top = 24
      Width = 134
      Height = 21
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DtsCliente
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 64
      Width = 600
      Height = 21
      DataField = 'NOME'
      DataSource = DtsCliente
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 104
      Width = 600
      Height = 21
      DataField = 'EMAIL'
      DataSource = DtsCliente
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 256
      Top = 144
      Width = 134
      Height = 21
      DataField = 'IDADE'
      DataSource = DtsCliente
      TabOrder = 4
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 240
      Height = 433
      Align = alLeft
      Color = clWhite
      ParentBackground = False
      TabOrder = 5
      object Label5: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 69
        Width = 232
        Height = 23
        Margins.Top = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Informa o nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8870657
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 154
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 21
        Width = 232
        Height = 25
        Margins.Top = 20
        Align = alTop
        Alignment = taCenter
        Caption = 'Pesquisa Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8870657
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 171
      end
      object EdtPesquisa: TEdit
        Left = 13
        Top = 107
        Width = 213
        Height = 24
        Margins.Left = 50
        Margins.Right = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Button1: TButton
        Left = 13
        Top = 152
        Width = 213
        Height = 41
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8870657
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 13
        Top = 199
        Width = 213
        Height = 41
        Caption = 'Limpar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8870657
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 13
        Top = 304
        Width = 213
        Height = 41
        Caption = 'RDW Open'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button3Click
      end
    end
  end
  object DtsCliente: TDataSource
    DataSet = DtmDados.QryCliente
    Left = 312
    Top = 312
  end
end
