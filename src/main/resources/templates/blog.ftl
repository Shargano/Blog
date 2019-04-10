<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/pager.ftl" as p>

<@c.page>

<div class="container-fluid text-left">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8 articleWrapper">
            <div class="text-center">
                <h2>Последние опубликованные статьи</h2>
            </div>
            <#list page.content as article>
                <div class="articleItem">
                    <#if isAdmin || isModer>
                        <a class="editButton" href="/editArticle=${article.id?c}"><span class="glyphicon glyphicon-pencil"></span></a>
                    </#if>
                    <div class="row">
                        <div class="col-sm-6 articlePhoto">
                            <img src="data:image/jpeg;base64,${article.generateBase64Image()}" alt="AAA"/>
                        </div>
                        <div class="col-sm-6 articleInfo">
                            <h3>${article.title}</h3>
                            <p class="dateArticle">${article.date}, by ${article.authorName}</p>
                            <div class="clear"></div>
                            <p class="contentArticle">${article.content}</p>
                            <div class="showFullArticle"><a href="/article=${article.id?c}">Читать далее</a></div>
                        </div>
                    </div>
                </div>
                <#else >
                <p>No articles are posted yet!</p>
            </#list>
            <div class="text-center">
                <@p.pager url page />
            </div>

        </div>
    </div>
</div>

</@c.page>