<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 addWrapper text-center">
                <h2>Будь осторожен с изменениями!</h2>
                <form action="/editArticle/submit" enctype="multipart/form-data" method="post">
                    <div class="row">
                        <div class="col-sm-12 text-center">
                            <p>Изменить заголовок: </p>
                            <input class="${(titleError??)?string('is-invalid', '')}" type="text" name="title" value="<#if article??>${article.title}</#if>">
                            <#if titleError??>
                                <div class="invalid-feedback">
                                    ${titleError}
                                </div>
                            </#if>
                        </div>
                        <div class="col-sm-12 text-center">
                            <div class="articlePhoto">
                                <img src="data:image/jpeg;base64,${article.generateBase64Image()}" alt="Фото статьи" style="margin-left: 190px;">
                            </div>
                        </div>
                        <div class="col-sm-12 text-center">
                            <textarea  class="${(contentError??)?string('is-invalid', '')}" cols="90" rows="10" name="content" placeholder="Пишите свою статью прямо здесь"><#if article??>${article.content}</#if></textarea>
                            <#if contentError??>
                                <div class="invalid-feedback">
                                    ${contentError}
                                </div>
                            </#if>
                            <p>Изменить фото:</p>
                            <input type="file" name="file" style="margin: 0 auto 10px auto;">
                        </div>
                        <input type="hidden" value="${article.id?c}" name="article_id">
                        <input type="hidden" value="${_csrf.token}" name="_csrf">
                        <input type="submit" value="Сохранить"/>
                    </div>
                </form>
            </div>
        </div>
    </div>
</@c.page>