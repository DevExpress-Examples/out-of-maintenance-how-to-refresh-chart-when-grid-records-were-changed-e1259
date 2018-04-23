<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChartWithGrid._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.2.Web, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ?" InsertCommand="INSERT INTO [Products] ([ProductID], [ProductName], [CategoryID], [UnitPrice]) VALUES (?, ?, ?, ?)"
            SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice] FROM [Products] WHERE ([CategoryID] = ?)"
            UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [CategoryID] = ?, [UnitPrice] = ? WHERE [ProductID] = ?">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="?" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
            DataSourceID="AccessDataSource1" KeyFieldName="ProductID" Width="835px">
            <ClientSideEvents EndCallback="function(s, e) {
	Chart.PerformCallback(&quot;GridChanged&quot;);
}" />
            <Columns>
                <dxwgv:GridViewCommandColumn VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                    <NewButton Visible="True">
                    </NewButton>
                    <DeleteButton Visible="True">
                    </DeleteButton>
                </dxwgv:GridViewCommandColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
        </dxwgv:ASPxGridView>
        <dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="Chart"
            DataSourceID="AccessDataSource1" DiagramTypeName="SimpleDiagram3D" Height="348px"
            OnCustomCallback="WebChartControl1_CustomCallback" Width="833px">
            <SeriesSerializable>
                <cc1:Series ArgumentDataMember="ProductID" LabelTypeName="Pie3DSeriesLabel" Name="Series 1"
                    PointOptionsTypeName="PiePointOptions" SeriesViewTypeName="Pie3DSeriesView" ValueDataMembersSerializable="UnitPrice">
                    <view hiddenserializablestring="to be serialized"></view>
                    <label hiddenserializablestring="to be serialized" overlappingoptionstypename="OverlappingOptions">
                        <fillstyle filloptionstypename="SolidFillOptions">
<Options HiddenSerializableString="to be serialized"></Options>
</fillstyle>
                    </label>
                    <pointoptions hiddenserializablestring="to be serialized"></pointoptions>
                    <legendpointoptions hiddenserializablestring="to be serialized"></legendpointoptions>
                </cc1:Series>
            </SeriesSerializable>
            <SeriesTemplate LabelTypeName="SideBySideBarSeriesLabel" PointOptionsTypeName="PointOptions"
                SeriesViewTypeName="SideBySideBarSeriesView">
                <View HiddenSerializableString="to be serialized">
                </View>
                <Label HiddenSerializableString="to be serialized" OverlappingOptionsTypeName="OverlappingOptions">
                    <FillStyle FillOptionsTypeName="SolidFillOptions">
                        <Options HiddenSerializableString="to be serialized" />
                    </FillStyle>
                </Label>
                <PointOptions HiddenSerializableString="to be serialized">
                </PointOptions>
                <LegendPointOptions HiddenSerializableString="to be serialized">
                </LegendPointOptions>
            </SeriesTemplate>
            <Diagram RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
            </Diagram>
            <FillStyle FillOptionsTypeName="SolidFillOptions">
                <Options HiddenSerializableString="to be serialized" />
            </FillStyle>
        </dxchartsui:WebChartControl>
    </form>
</body>
</html>
