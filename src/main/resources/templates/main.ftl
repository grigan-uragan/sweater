<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div>
<@l.logout/>
    <span><a href="/user">user list</a> </span>
</div>
<div>
    <form method="post">
        <input name="text" type="text" placeholder="enter your message"/>
        <input name="tag" type="text" placeholder="tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>
    <form method="get" action="main">
        <input type="text" name="filter" value="${filter}"/>

        <button type="submit">search</button>
    </form>
</div>
<div>
    messages
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
    no messages
    </#list>
</div>
</@c.page>