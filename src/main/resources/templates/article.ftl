<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <div class="col-sm-2"></div>
    <div class="col-sm-8 articleWrapper">
        <!-- Button trigger modal -->
        <#if isAdmin>
            <button class="closeBtn" type="button" data-toggle="modal" data-target="#closeModal">
                <span class="glyphicon glyphicon-remove"></span>
            </button>
            <a class="editButton" href="/editArticle=${article.id?c}"><span class="glyphicon glyphicon-pencil"></span></a>
            <#elseif isModer>
                <a class="editButton" href="/editArticle=${article.id?c}"><span class="glyphicon glyphicon-pencil"></span></a>
        </#if>
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2>${article.title}</h2>
            </div>
            <div class="col-sm-6 articlePhoto">
                <img src="data:image/jpeg;base64,${article.generateBase64Image()}" alt="AAA"/>
            </div>
            <div class="col-sm-6 articleInfo">
                <p class="dateArticle">${article.date}, by ${article.authorName}</p>
                <div class="clear"></div>
                <p class="contentArticle">${article.content}</p>

            </div>
        </div>
    </div>




    <!-- Modal -->
    <div class="modal fade" id="closeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Предупреждение</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                </div>
                <div class="modal-body">
                    Вы действительно хотите удалить статью?
                </div>
                <div class="modal-footer">
                    <a class="deleteButton" href="/deleteArticle=${article.id?c}"><span class="glyphicon glyphicon-trash"></span> Delete</a>
                </div>
            </div>
        </div>
    </div>
</@c.page>