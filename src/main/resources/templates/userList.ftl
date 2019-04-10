<#import "parts/common.ftl" as c>
<@c.page>
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="userListWrapper col-sm-8 text-center">
                <div class="row">
                    <h2>Список пользователей</h2>
                    <div class="userName col-sm-3 text-center">
                        <h4>Имя</h4>
                    </div>
                    <div class="userPassword col-sm-3 text-center">
                        <h4>Пароль</h4>
                    </div>
                    <div class="userRole col-sm-3 text-center">
                        <h4>Роли</h4>
                    </div>
                    <div class="userEdit col-sm-3 text-center">
                        <h4>Редактировать</h4>
                    </div>
                    <#list users as user>
                        <div class="userNamePoint col-sm-3 text-center">
                            <h6>${user.username}</h6>
                        </div>
                        <div class="userEmailPoint col-sm-3 text-center">
                            <#if user.email??>
                                <h6>${user.email}</h6>
                            </#if>
                        </div>
                        <div class="userRolePoint col-sm-3 text-center">
                            <h6><#list user.roles as role>${role}<#sep>, </#list></h6>
                        </div>
                        <div class="userEdit col-sm-3 text-center">
                            <h6><a href="/user/${user.id?c}"><span class="glyphicon glyphicon-pencil"></span></a></h6>
                        </div>
                        <br>
                    </#list>
                </div>
            </div>
        </div>
    </div>

</@c.page>