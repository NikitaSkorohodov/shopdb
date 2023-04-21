<%-- 
    Document   : addmony
    Created on : Apr 21, 2023, 8:59:41 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
    <form action="addMoney" method="POST">
        <div class="card border-primary mb-3" style="max-width: 20rem;">
            <div class="card-header">пополнить счет</div>
            <div class="card-body">
                <div class="form-group">
                 <div class="mb-3 row ">
                            <select name="readerId" class="form-select form-select-sm" aria-label=".form-select-sm example">
                                <option value="#" disabled selected>Выберите клиента</option>
                                <c:forEach var="reader" items="${listReaders}">
                                    <option value="${reader.id}">${reader.firstname} ${reader.lastname}</option>
                                </c:forEach>
                            </select>
                        </div>
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <span class="input-group-text">€</span>
                            <input type="text" min="5" max="500" step="5" class="form-control" name="money">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-success">Внести деньги</button>
            </div>
        </div>
    </form>
</div>
