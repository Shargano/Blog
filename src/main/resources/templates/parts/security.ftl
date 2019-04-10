<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    isModer = user.isModer()
    isActive = user.isActive()
    email = user.getEmail()
    >
<#else>
    <#assign
    name = ""
    isAdmin = false
    isModer = false
    isActive = false
    >
</#if>