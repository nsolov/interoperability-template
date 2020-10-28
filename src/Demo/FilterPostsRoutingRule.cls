/// 
Class Demo.FilterPostsRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="Demo.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="msgClass" value="Demo.PostMessage"></constraint>
<when condition="ToUpper(Document.Post.selftext) Contains ToUpper(&quot;dog&quot;)">
<assign property="Document.ToEmailAddress" value="&quot;nsolov@mail.ru&quot;"></assign>
<assign property="Document.Found" value="&quot;Dog&quot;"></assign>
<send transform="" target="Demo.FileOperation"></send>
<return></return>
</when>
<when condition="ToUpper(Document.Post.selftext) Contains ToUpper(&quot;cat&quot;)">
<assign property="Document.ToEmailAddress" value="&quot;nsolov@gmail.com&quot;"></assign>
<assign property="Document.Found" value="&quot;Cat&quot;"></assign>
<send transform="" target="Demo.FileOperation"></send>
<return></return>
</when>
<otherwise>
<return></return>
</otherwise>
</rule>
</ruleSet>
</ruleDefinition>
}

}
