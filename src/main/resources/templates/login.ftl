<#import "parts/login.ftl" as l>
<#import "parts/common.ftl" as c>

<@c.page>
<div>Login page</div>
<@l.login "/login" />
<a href="/registration">Add New user</a>
</@c.page>