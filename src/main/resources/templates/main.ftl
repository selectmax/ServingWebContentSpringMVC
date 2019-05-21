<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
  <@l.logout />
</div>

<div>
    <form method="post">
        <input type="text" name="text" placeholder="Insert message" />
        <input type="text" name="tag" placeholder="Tag" />
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Add</button>
    </form>
</div>

<div>List of Messages:</div>
<form method="post" action="filter">
    <input type="text" name="filter">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit">Search</button>
</form>
<table style="width:50%">
    <tr>
        <th>Id</th>
        <th>Text</th>
        <th>Tag</th>
        <th>Author</th>
    </tr>
<#list messages as message>
    <tr>
        <td>${message.id}</td>
        <td>${message.text}</td>
        <td>${message.tag}</td>
        <td>${message.authorName}</td>
    </tr>
</#list>
</table>
</@c.page>