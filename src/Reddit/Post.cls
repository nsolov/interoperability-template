Class Reddit.Post Extends (%Persistent, %JSON.Adaptor)
{

Parameter %JSONIGNOREINVALIDFIELD = 1;

Property OriginalJSON As %String(%JSONINCLUDE = "none", MAXLEN = 3000000);

Property title As %String(MAXLEN = 255);

Property selftext As %String(MAXLEN = 3000000);

Property author As %String(MAXLEN = 255);

Property url As %String(MAXLEN = 255);

Property "created_utc" As %Float;

Storage Default
{
<Data name="PostDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>OriginalJSON</Value>
</Value>
<Value name="3">
<Value>selftext</Value>
</Value>
<Value name="4">
<Value>title</Value>
</Value>
<Value name="5">
<Value>author</Value>
</Value>
<Value name="6">
<Value>url</Value>
</Value>
<Value name="7">
<Value>created_utc</Value>
</Value>
</Data>
<DataLocation>^Reddit.PostD</DataLocation>
<DefaultData>PostDefaultData</DefaultData>
<IdLocation>^Reddit.PostD</IdLocation>
<IndexLocation>^Reddit.PostI</IndexLocation>
<StreamLocation>^Reddit.PostS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
