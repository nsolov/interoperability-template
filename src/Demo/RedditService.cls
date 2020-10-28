Class Demo.RedditService Extends Ens.BusinessService
{

Property Adapter As Reddit.InboundAdapter;

Parameter ADAPTER = "Reddit.InboundAdapter";

Method OnProcessInput(pInput As Reddit.Post, pOutput As %RegisteredObject) As %Status
{
    Set msg = ##class(Demo.PostMessage).%New()
    Set msg.Post = pInput
    Return ..SendRequestAsync("FilterPosts",msg)
}

}
