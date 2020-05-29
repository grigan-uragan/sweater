<#macro login path>
<form method="post" action="${path}">
    <div><label>User Name:<input type="text" name="username"/></label></div>
    <div><label>Password:<input type="password" name="password"/></label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <div><button type="submit">login</button></div>
</form>
</#macro>

<#macro logout >
<form method="post" action="/logout">
    <button type="submit">logout</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>
</#macro>