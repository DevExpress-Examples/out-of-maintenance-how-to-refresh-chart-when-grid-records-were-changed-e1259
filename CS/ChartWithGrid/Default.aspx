<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChartWithGrid._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.XtraCharts.v13.1.Web, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
            DataSourceID="AccessDataSource1"  Height="348px"
            OnCustomCallback="WebChartControl1_CustomCallback" Width="833px">
            <SeriesSerializable>
                <cc1:Series ArgumentDataMember="ProductID"  Name="Series 1"
                      ValueDataMembersSerializable="UnitPrice">
                    <ViewSerializable>
<cc1:Pie3DSeriesView hiddenserializablestring="to be serialized"></cc1:Pie3DSeriesView>
</ViewSerializable>
                    <LabelSerializable>
<cc1:Pie3DSeriesLabel hiddenserializablestring="to be serialized">
                        <fillstyle >
<OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized"></cc1:SolidFillOptions>
</OptionsSerializable>
</fillstyle>
                    </cc1:Pie3DSeriesLabel>
</LabelSerializable>
                    <PointOptionsSerializable>
<cc1:PiePointOptions hiddenserializablestring="to be serialized"></cc1:PiePointOptions>
</PointOptionsSerializable>
                    <LegendPointOptionsSerializable>
<cc1:PiePointOptions hiddenserializablestring="to be serialized"></cc1:PiePointOptions>
</LegendPointOptionsSerializable>
                </cc1:Series>
            </SeriesSerializable>
            <SeriesTemplate  
                >
                <ViewSerializable>
<cc1:SideBySideBarSeriesView HiddenSerializableString="to be serialized">
                </cc1:SideBySideBarSeriesView>
</ViewSerializable>
                <LabelSerializable>
<cc1:SideBySideBarSeriesLabel HiddenSerializableString="to be serialized">
                    <FillStyle >
                        <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
                    </FillStyle>
                </cc1:SideBySideBarSeriesLabel>
</LabelSerializable>
                <PointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
                </cc1:PointOptions>
</PointOptionsSerializable>
                <LegendPointOptionsSerializable>
<cc1:PointOptions HiddenSerializableString="to be serialized">
                </cc1:PointOptions>
</LegendPointOptionsSerializable>
            </SeriesTemplate>
            <DiagramSerializable>
<cc1:SimpleDiagram3D RotationMatrixSerializable="1;0;0;0;0;0.5;-0.866025403784439;0;0;0.866025403784439;0.5;0;0;0;0;1">
            </cc1:SimpleDiagram3D>
</DiagramSerializable>
            <FillStyle >
                <OptionsSerializable>
<cc1:SolidFillOptions HiddenSerializableString="to be serialized" />
</OptionsSerializable>
            </FillStyle>
        </dxchartsui:WebChartControl>
    </form>
</body>
</html>
