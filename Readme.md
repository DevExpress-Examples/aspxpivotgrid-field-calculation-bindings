<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/230931192/19.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T848937)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
*Files to look at*:
* [Default.aspx](CS/AspNetWebFormsPivotFieldCalculationBindings/Default.aspx)

# ASP.NET Web Forms Pivot Grid - How to use Data Binding API to bind the Pivot Grid field to data

The [Optimized Calculation](http://docs.devexpress.devx/CoreLibraries/401367/devexpress-pivot-grid-core-library/data-processing-engines/pivot-grid-optimized-calculation-engine) mode uses the Data Binding API that provides a set of [Intermediate Level Aggregations](http://docs.devexpress.devx/CoreLibraries/401198/devexpress-pivot-grid-core-library/pivot-grid-aggr) and [Calculations](https://docs.devexpress.com/CoreLibraries/401375/devexpress-pivot-grid-core-library/window-calculations/window-functions).

The example illustrates how to use Data Binding API to bind the Pivot Grid field to data. A [window](https://docs.devexpress.com/CoreLibraries/401365) in this example is the combination of the _Category/Product_ and _Country_ dimensions.

![pivot-grid-data-bindings](pivot-grid-data-bindings.png)

API in this example:
* [DataSourceColumnBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.DataSourceColumnBinding)

    Defines a data binding to a source data column.

* [DifferenceBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.DifferenceBinding)

    Calculates the difference between values in the window.

* [PercentOfTotalBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.PercentOfTotalBinding)

    Calculates a percentage of all values in the window.

* [RankBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.RankBinding)

    Displays a rank according to each value in the window.

* [RunningTotalBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.RunningTotalBinding)

     Aggregates values cumulatively in the window.

* [WindowExpressionBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.WindowExpressionBinding)

    Uses a custom string expression with window functions for calculation. The expression _Total(Sum([Extended Price]))_ displays sub-totals for outer row fields (the equivalent for _Total_ and _Grand total_ values).

* [ExpressionDataBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.ExpressionDataBinding)

    Defines a calculation based on a string expression. The Expression _Min([Extended Price])_ displays a minimum value from the underlying data grouped by the specified window.

* [MovingCalculationBinding](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxPivotGrid.MovingCalculationBinding)
 
    Calculates aggregations across a specified number of values before and/or after the current value.

## See Also

- [Data Binding API](http://docs.devexpress.com/CoreLibraries/401533/devexpress-pivot-grid-core-library/data-binding-api)
- [Window Calculation Functions](https://docs.devexpress.com/CoreLibraries/401375/devexpress-pivot-grid-core-library/window-calculations/window-functions)
- [Pivot Grid Expression Syntax](http://docs.devexpress.devx/CoreLibraries/120512/devexpress-pivot-grid-core-library/pivot-grid-expression-syntax)
 
