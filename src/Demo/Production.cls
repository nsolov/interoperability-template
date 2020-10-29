Class Demo.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="Demo.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="Demo.RedditService" Category="" ClassName="Demo.RedditService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="Feed">/new/</Setting>
    <Setting Target="Adapter" Name="SSLConfig"></Setting>
    <Setting Target="Adapter" Name="CallInterval">15</Setting>
    <Setting Target="Adapter" Name="Limit">120</Setting>
  </Item>
  <Item Name="FilterPosts" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">Demo.FilterPostsRoutingRule</Setting>
  </Item>
  <Item Name="Demo.EmailOperation" Category="" ClassName="Demo.EmailOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="SMTPPort"></Setting>
    <Setting Target="Adapter" Name="SMTPServer"></Setting>
    <Setting Target="Adapter" Name="SSLConfig"></Setting>
    <Setting Target="Adapter" Name="From"></Setting>
    <Setting Target="Adapter" Name="Credentials"></Setting>
  </Item>
  <Item Name="Demo.FileOperation" Category="" ClassName="Demo.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="Charset">utf-8</Setting>
    <Setting Target="Adapter" Name="FilePath">/irisdev/app/out/</Setting>
  </Item>
</Production>
}

}
