<#macro login path isRegisterForm>
<form method="post" action="${path}">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User Name:</label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control" placeholder="User name"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="password"/>
        </div>
    </div>
    <#if isRegisterForm>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">email:</label>
            <div class="col-sm-6">
                <input type="email" name="email" class="form-control" placeholder="some@some.com"/>
            </div>
        </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <#if !isRegisterForm><a href="/registration"> Add new User</a></#if>
<button class="btn btn-primary" type="submit">
    <#if isRegisterForm>
    Create
    <#else>
    Sign In
    </#if>
</button>
</form>
</#macro>

<#macro logout >
<form method="post" action="/logout">
    <button type="submit" class="btn btn-primary" >logout</button>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>
</#macro>