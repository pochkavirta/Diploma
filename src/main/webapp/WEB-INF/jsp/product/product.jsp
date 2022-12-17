<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link href="<c:url value="/resources/css/product.css"/>" rel="stylesheet">

<div class="sub-header"></div>

<div class="product-page container marketing">
   <c:forEach items="${products}" var="product">
        <div class="row shadow p-3 mb-5 bg-light rounded">
            <jsp:useBean id="product" scope="page" type="ru.diploma.golyshkin.model.Product"/>
            <div class="col-lg-3 border-dark">
                <img class="img-circle" data-src="holder.js/140x140" alt="140x140"
                     src="${pageContext.request.contextPath}/resources/images/products/${product.photoUrl}">
                <form>
                    <div class="stars">
                        <input type="radio" name="star" class="star-1" id="star-1-${product.name}"/>
                        <label class="star-1" for="star-1-${product.name}">1</label>
                        <input type="radio" name="star" class="star-2" id="star-2-${product.name}"/>
                        <label class="star-2" for="star-2-${product.name}">2</label>
                        <input type="radio" name="star" class="star-3" id="star-3-${product.name}"/>
                        <label class="star-3" for="star-3-${product.name}">3</label>
                        <input type="radio" name="star" class="star-4" id="star-4-${product.name}"/>
                        <label class="star-4" for="star-4-${product.name}">4</label>
                        <input type="radio" name="star" class="star-5" id="star-5-${product.name}"/>
                        <label class="star-5" for="star-5-${product.name}">5</label>
                        <span></span>
                    </div>
                    <script>
                        function returnCheck(id, ranking) {
                            return (id == ranking);
                        }

                        document.getElementById('star-1-${product.name}').checked = returnCheck(1, ${product.ranking});
                        document.getElementById('star-2-${product.name}').checked = returnCheck(2, ${product.ranking});
                        document.getElementById('star-3-${product.name}').checked = returnCheck(3, ${product.ranking});
                        document.getElementById('star-4-${product.name}').checked = returnCheck(4, ${product.ranking});
                        document.getElementById('star-5-${product.name}').checked = returnCheck(5, ${product.ranking});
                    </script>
                </form>
            </div>
            <div class="col-lg-6">
                <h2>${product.name}</h2>
                <h4><code>${product.price} &#8381;</code></h4>
                <p>${product.description}</p>
            </div>
            <div class="col-lg-3">
                <button class="offset editB" onclick="editRow(${product.id});">EDIT</button>
                <form action="beersPage/delete/${product.id}">
                    <button class="offset deleteB">DELETE</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>
