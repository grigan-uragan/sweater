<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

    <h3>registration</h3>
    ${message?ifExists}
    <@l.login "/registration"/>

</@c.page>