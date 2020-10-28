Class Demo.FileOperation Extends Ens.BusinessOperation
{

Property Adapter As EnsLib.File.OutboundAdapter;

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method WriteToFile(pRequest As Demo.PostMessage, Output pResponse As Ens.Response) As %Status
{
    Set (ts,title,author,url) = ""
    If ($IsObject(pRequest.Post)) {
        Set title = pRequest.Post.title
        Set author = pRequest.Post.author
        Set url = pRequest.Post.url
        Set ts = ##class(%Library.PosixTime).LogicalToOdbc(##class(%Library.PosixTime).UnixTimeToLogical(pRequest.Post."created_utc"))
    }
    Set line = ts_" : "_title_" : "_author_" : "_url
    Set tSC = ..Adapter.PutLine(pRequest.Found_".txt", line)
    Return tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="Demo.PostMessage">
        <Method>WriteToFile</Method>
    </MapItem>
</MapItems>
}

}
