<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <TITLE>all Deals </TITLE>
    <link type="text/css" rel="stylesheet" href="">
    <link href="<c:url value="/resources/css/css.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/ja.js" />"></script>
</head>
<body>


<!-- Page wrapper/Container Section -->
<div class="container">


    <div>
        <h1>View All Deals</h1>
    </div>

    <!-- Responsive Table Section -->
    <table class="responsive-table">
        <!-- Responsive Table Header Section -->
        <thead class="responsive-table__head">
        <tr class="responsive-table__row">
            <th class="responsive-table__head__title responsive-table__head__title--name"> Deal ID
                <svg version="1.1" class="up-arrow" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 512 512"
                     style="enable-background:new 0 0 512 512;" xml:space="preserve">
						<path d="M374.176,110.386l-104-104.504c-0.006-0.006-0.013-0.011-0.019-0.018c-7.818-7.832-20.522-7.807-28.314,0.002c-0.006,0.006-0.013,0.011-0.019,0.018l-104,104.504c-7.791,7.829-7.762,20.493,0.068,28.285    c7.829,7.792,20.492,7.762,28.284-0.067L236,68.442V492c0,11.046,8.954,20,20,20c11.046,0,20-8.954,20-20V68.442l69.824,70.162c7.792,7.829,20.455,7.859,28.284,0.067C381.939,130.878,381.966,118.214,374.176,110.386z"/>
					</svg>
            </th>
            <th class="responsive-table__head__title responsive-table__head__title--status"> Ordering Currency</th>
            <th class="responsive-table__head__title responsive-table__head__title--types">To Currency</th>
            <th class="responsive-table__head__title responsive-table__head__title--update">Deal Date</th>
            <th class="responsive-table__head__title responsive-table__head__title--country">Deal Amount</th>
            <th class="responsive-table__head__title responsive-table__head__title--country"> Action</th>
        </tr>
        </thead>
        <!-- Responsive Table Body Section -->
        <tbody class="responsive-table__body">
        <c:forEach items="${deals}" var="deal">
            <tr class="responsive-table__row">
                <td class="responsive-table__body__text responsive-table__body__text--name">
                    <c:out value="${deal.dealCode}"/>
                </td>
                <td class="responsive-table__body__text responsive-table__body__text--status">
                    <c:out value="${deal.orderCurrency}"/>
                </td>
                <td class="responsive-table__body__text responsive-table__body__text--types">
                    <c:out value="${deal.toCurrency}"/>
                </td>
                <td class="responsive-table__body__text responsive-table__body__text--update">
                    <c:out value="${deal.dealDate}"/>
                </td>
                <td class="responsive-table__body__text responsive-table__body__text--country">
                    <c:out value="${deal.dealAmount}"/>
                </td>
                <td class="responsive-table__body__text responsive-table__body__text--country">
                    <button type="button">
                        <a href="/${deal.dealCode}">View</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>

        <tfoot>
        <td>
            <div>
                <button type="button">
                    <a href="/">Add new deal</a>
                </button>
            </div>
        </td>
        </tfoot>
    </table>
</div>
</body>
</html>