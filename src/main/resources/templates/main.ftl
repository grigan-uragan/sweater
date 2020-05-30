<#import "parts/common.ftl" as c>

<@c.page>

<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="main" class="form-inline">
            <input type="text" name="filter" class="form-control mr-3"
                   value="${filter?ifExists}" placeholder="search"/>

            <button type="submit" class="btn btn-primary">search</button>
        </form>
    </div>
</div>
<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse " id="collapseExample" >
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input name="text" type="text" placeholder="enter your message" class="form-control"/>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">choose file</label>
                </div>
            </div>
            <div class="form-group">
                <input name="tag" type="text" placeholder="tag" class="form-control"/>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Add</button>
            </div>
        </form>
    </div>
</div>
<div class="card-columns">
    messages
    <#list messages as message>
    <div class="card my-3" >
        <div>
            <#if message.filename??>
                <img  src="/img/${message.filename}" class="card-img-top">
            </#if>
        </div>
        <div class="m-2">
            <span>${message.text}</span>
            <i>${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            ${message.authorName}
        </div>
    </div>
<#else>
no messages
</#list>
</div>
</@c.page>