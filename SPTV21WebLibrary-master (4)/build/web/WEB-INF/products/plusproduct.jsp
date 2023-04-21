<%-- 
    Document   : listBooks
    Created on : Feb 28, 2023, 11:10:00 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <h3 class="w-100 d-flex justify-content-center mt-5">Изменить количество обуви</h3>
       <div class="w-100 p-3 d-flex justify-content-center">
           
            <div class="card border-0 m-2" style="width: 23rem;">
                <form action="plusBook" method="POST">
                    
                    <div class="card-body">
                        <div class="mb-3 row ">
                            <select name="bookId" class="form-select form-select-sm" aria-label=".form-select-sm example">
                                <option value="#" disabled selected>Выберите обувь</option>
                                <c:forEach var="book" items="${listBooks}">
                                    <option value="${book.id}">${book.bookName}</option>
                                </c:forEach>
                            </select>
                        </div>
                         <div class="form-group">
                <label class="form-label mt-2 mx-2">Количество</label>
                <input type="number" min="1" class="form-control mb-4" name="quantity" value="${book.quantity}">
            </div>
            <input class="btn btn-primary mb-2" type="submit" value="Изменить товар">
          </div>
               
                    </div>
                </form>
             </div>
           
       </div>