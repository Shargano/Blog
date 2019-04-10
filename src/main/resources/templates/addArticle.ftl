<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>
<div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 addWrapper text-center">
                <h2>Начните творить прямо сейчас!</h2>
                <form action="/addArticle/submit" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <div class="col-sm-12">
                            <p>Введите заголовок:</p>
                            <input class="${(titleError??)?string('is-invalid', '')}" type="text" name="title" value="<#if article??>${article.title}</#if>">
                            <#if titleError??>
                                <div class="invalid-feedback">
                                    ${titleError}
                                </div>
                            </#if>
                            <input type="hidden" name="name" value="${name}">
                        </div>
                        <div class="col-sm-12 text-center">
                            <textarea  class="${(contentError??)?string('is-invalid', '')} editContent" value="<#if article??>${article.content}</#if>" cols="90" rows="10" name="content" placeholder="Пишите свою статью прямо здесь"></textarea>
                            <#if contentError??>
                                <div class="invalid-feedback">
                                    ${contentError}
                                </div>
                            </#if>
                            <p>Загрузите фото:</p>
                            <input type="file" name="file" style="margin: 0 auto 10px auto;">
                        </div>
                        <input type="hidden" value="${_csrf.token}" name="_csrf">
                        <input type="submit" value="Готово"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</@c.page>