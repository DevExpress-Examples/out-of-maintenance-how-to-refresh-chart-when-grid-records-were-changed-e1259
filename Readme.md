# How to refresh chart when grid records were changed.


<p>Description: This example demonstrates, how to refresh chart on callback, when grid records were edited. To accomplish this task, simply handle the ASPxGridView.EndCallback client-side event, and then use the ASPxClientWebChartControl.PerformCallback method to send a callback to the server and generate the server-side WebChartControl.CustomCallback event. After that, simply refresh your chart control within this event handler.</p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E568">How to add a WebChartControl to the ASPxCallbackPanel on its callback</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E1277">How to update a WebChartControl according to the changes made to the ASPxGridView</a></p>

<br/>


