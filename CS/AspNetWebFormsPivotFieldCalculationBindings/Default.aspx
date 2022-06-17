<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
    Inherits="AspNetWebFormsPivotFieldCalculationBindings._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v19.2, Version=19.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 20px">
    <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" DataSourceID="SqlDataSource1" Width="850px" Theme="Metropolis">
        <Fields>
            <dx:PivotGridField ID="fieldCountry" Area="ColumnArea" AreaIndex="0" FieldName="Country" Name="fieldCountry" Caption="Country">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" FieldName="CategoryName" Name="fieldCategoryName" Caption="Category" >
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1" FieldName="ProductName" Name="fieldProductName" Caption="Product">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" FieldName="Extended Price" Name="fieldExtendedPrice" Caption="Total Sum">
            </dx:PivotGridField>
             <dx:PivotGridField ID="fieldRank" Area="DataArea" AreaIndex="1"  Name="fieldRank" Caption="Rank">
                <DataBindingSerializable>
                   <dx:RankBinding RankType="Unique" Order="Descending" PartitioningCriteria="ColumnValueAndRowParentValue" >
                       <SourceSerializable>
                           <dx:DataSourceColumnBinding ColumnName="Extended Price" />
                       </SourceSerializable>
                       </dx:RankBinding>
                </DataBindingSerializable>
                <CellFormat FormatType="Numeric"></CellFormat>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldPercentOfTotal" Area="DataArea" AreaIndex="2"  Name="fieldPercentOfTotal" Caption="PercentOfTotal">
                <DataBindingSerializable>
                   <dx:PercentOfTotalBinding PartitioningCriteria="ColumnValueAndRowParentValue">
                       <SourceSerializable>
                           <dx:DataSourceColumnBinding ColumnName="Extended Price" />
                       </SourceSerializable>
                   </dx:PercentOfTotalBinding>
                </DataBindingSerializable>
                <CellFormat FormatString= "p" FormatType= "Numeric" ></CellFormat>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldMovingCalculation" Area="DataArea" AreaIndex="3"  Name="fieldMovingCalculation" Caption="MovingCalculation">
                <DataBindingSerializable>
                   <dx:MovingCalculationBinding PartitioningCriteria="ColumnValueAndRowParentValue" Direction="AcrossThenDown" 
                       SummaryType="Average" PreviousValuesCount="1" NextValuesCount="1" >
                       <SourceSerializable>
                           <dx:DataSourceColumnBinding ColumnName="Extended Price" />
                       </SourceSerializable>
                   </dx:MovingCalculationBinding>
                </DataBindingSerializable>
                <CellFormat FormatString ="c2" FormatType="Numeric"></CellFormat>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldRunningTotal" Area="DataArea" AreaIndex="4"  Name="fieldRunningTotal" Caption="RunningTotal">
                <DataBindingSerializable>
                   <dx:RunningTotalBinding SummaryType="Average"  Direction="AcrossThenDown" PartitioningCriteria="ColumnValueAndRowParentValue">
                       <SourceSerializable>
                           <dx:DataSourceColumnBinding ColumnName="Extended Price" />
                       </SourceSerializable>
                   </dx:RunningTotalBinding>
                </DataBindingSerializable>
                <CellFormat FormatString ="c2" FormatType="Numeric"></CellFormat>
            </dx:PivotGridField>
              <dx:PivotGridField ID="fieldExpressions" Area="DataArea" AreaIndex="5"  Name="fieldExpressions" Caption="Expressions" >
                <DataBindingSerializable>
                    <dx:ExpressionDataBinding Expression="Min([Extended Price])" />
                </DataBindingSerializable>
            </dx:PivotGridField>
             <dx:PivotGridField ID="fieldDifference" Area="DataArea" AreaIndex="6" Name="fieldDifference" Caption="Difference">
                <DataBindingSerializable>
                   <dx:DifferenceBinding DifferenceType="Absolute" Target="Previous" Direction="AcrossThenDown" 
                       PartitioningCriteria="ColumnValueAndRowParentValue">
                       <SourceSerializable>
                           <dx:DataSourceColumnBinding ColumnName="Extended Price" />
                       </SourceSerializable>
                   </dx:DifferenceBinding>
                </DataBindingSerializable>
                <CellFormat FormatString ="c2" FormatType="Numeric"></CellFormat>
            </dx:PivotGridField>
             <dx:PivotGridField ID="fieldWindowExpression" Area="DataArea" AreaIndex="7"  Name="fieldWindowExpression" Caption="WindowExpression" >
                <DataBindingSerializable>
                   <dx:WindowExpressionBinding Expression="Total(Sum([Extended Price]))" PartitioningCriteria="ColumnValueAndRowParentValue">
                       </dx:WindowExpressionBinding>
                </DataBindingSerializable>
                <CellFormat FormatString= "c2" FormatType= "Numeric" ></CellFormat>
            </dx:PivotGridField>
        </Fields>
        <OptionsView DataHeadersDisplayMode="Popup" DataHeadersPopupMaxColumnCount="1" HorizontalScrollBarMode="Auto" 
            RowTotalsLocation="Tree" ShowColumnTotals="False" />
        <OptionsData DataProcessingEngine="Optimized"  />
    </dx:ASPxPivotGrid>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ConnectionStrings:NWindConnectionString %>" 
            SelectCommand="SELECT * FROM [SalesPerson]">
        </asp:SqlDataSource>
</div>

</asp:Content>
