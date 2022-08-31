<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">

<head>
    <TITLE>View Deal </TITLE>
    <link type="text/css" rel="stylesheet" href="">
    <link href="<c:url value="/resources/css/css.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/ja.js" />"></script>
</head>

<body>
<div class="container">

    <div>
        <h1>view Deal</h1>
    </div>


    <!-- Responsive Table Section -->
    <table class="responsive-table">
        <form:form method="post" modelAttribute="deal" id="deal-form">
            <tr class="responsive-table__row">
                <td class="responsive-table__head__title responsive-table__head__title--name">
                    Deal ID
                </td>

                <td>
                    <form:input path="dealCode" id="id" disabled="true"/>

                </td>

            <tr/>
            <tr class="responsive-table__row">
                <td class="responsive-table__head__title responsive-table__head__title--status"> Ordering Currency</td>

                <td>
                    <form:input id="orderingCurrency" path="orderCurrency" disabled="true"/>

                </td>
            <tr/>
            <tr class="responsive-table__row">
                <td class="responsive-table__head__title responsive-table__head__title--types">To Currency</td>

                <td>
                    <form:input id="toCurrency" path="toCurrency" disabled="true"/>

                </td>
            <tr/>
            <tr class="responsive-table__row">
                <td class="responsive-table__head__title responsive-table__head__title--update">Deal Date</td>

                <td>
                    <form:input path="dealDate" disabled="true"/>

                </td>
            <tr/>
            <tr class="responsive-table__row">
                <td class="responsive-table__head__title responsive-table__head__title--country">Deal Amount</td>

                <td>
                    <form:input path="dealAmount" id="amount" disabled="true"/>

                </td>
            <tr/>

            <tr class="responsive-table__row">


                <td>
                    <div>
                        <button type="button">
                            <a href="/">new deal</a>
                        </button>
                    </div>
                </td>
                <td>
                    <div>
                        <button type="button">
                            <a href="/deals"> all deals</a>
                        </button>
                    </div>
                </td>
            <tr/>
        </form:form>
    </table>


</div>

</body>
</html>