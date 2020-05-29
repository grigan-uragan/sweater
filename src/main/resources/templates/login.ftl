<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<h3>Login</h3>
<@l.login "/login" />
<a href="/registration"> Add new User</a>
</@c.page>