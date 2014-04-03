

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>UserMaster List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New UserMaster</g:link></span>
        </div>
        <div class="body">
            <h1>UserMaster List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="password" title="Password" />
                        
                   	        <g:sortableColumn property="hintQuestion" title="Hint Question" />
                        
                   	        <g:sortableColumn property="hintAnswer" title="Hint Answer" />
                        
                   	        <g:sortableColumn property="status" title="Status" />
                        
                   	        <th>Userprofile Id</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userMasterInstanceList}" status="i" var="userMasterInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${userMasterInstance.id}">${fieldValue(bean:userMasterInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:userMasterInstance, field:'password')}</td>
                        
                            <td>${fieldValue(bean:userMasterInstance, field:'hintQuestion')}</td>
                        
                            <td>${fieldValue(bean:userMasterInstance, field:'hintAnswer')}</td>
                        
                            <td>${fieldValue(bean:userMasterInstance, field:'status')}</td>
                        
                            <td>${fieldValue(bean:userMasterInstance, field:'userprofileId')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userMasterInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
