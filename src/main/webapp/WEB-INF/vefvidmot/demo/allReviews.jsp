<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <title>All reviews</title>
    <link href="https://fonts.googleapis.com/css?family=Prociono|Fascinate+Inline" rel="stylesheet">
    <style>
        h1 {
            font-family: "Prociono", helvetica, arial, sans-serif;
            text-align: center;
            font-size: 5rem;
            margin-top: 0;
            margin-bottom: 0;
        }

        h1.head {
            font-family: "Fascinate Inline", helvetica, arial, sans-serif;
            text-align: center;
            font-size: 5rem;
            margin-top: 0;
            margin-bottom: 0;
        }

        h2 {
            padding-top: 0em;
            margin-bottom: 0;
            font-family: "Prociono", helvetica, arial, sans-serif;
            text-align: center;
            font-size: 1.5rem;
            height: 1.5em;
        }

        section {
            width: 500px;
            height: 300px;
            margin-bottom: 2em;
            margin-left: 2.5em;
            border: solid;
            background-color: crimson;
        }

        section.big {
            width: 37em;
            height: 73em;
            margin-left: 26em;
            padding: 0em 0em 0em 0em;
            margin-bottom: 2em;
            border: solid;
            background-color: darkcyan;
        }

        .tall {
            height: 700px;
        }

        div {
            background-color: darkcyan;
            border: solid;
            height: 2em;
            width: 15em;
            display: flex;
            justify-content: center;
            padding-top: 0.75em;
            margin-top: 2em;
            margin-right: 0em;
            margin-left: 8em;
            margin-bottom: 9em;
            border-color: black;
        }

        div.results {
            height: 21em;
            width: 21em;
            padding-top: 0.75em;
            margin-top: 2em;
            margin-right: 0em;
            margin-left: 5em;
            margin-bottom: 2em;
        }

        div.newRes {
            background-color: darkcyan;
            border: solid;
            height: 12em;
            width: 16em;
            display: flex;
            justify-content: center;
            margin-left: 7.3em;
            margin-top: 0.5em;
            padding-top: 1.5em;
            border-color: black;
        }

        div.info {
            background-color: darkcyan;
            border: solid;
            height: 5em;
            width: 11em;
            display: flex;
            justify-content: center;
            margin-left: 8.5em;
            margin-top: 0.5em;
            margin-bottom: 0;
            padding-left: 2rem;
            border-color: black;
        }

        .button {
            display: inline-block;
            width: 100%;
            max-width: 10em;
            padding: 14px 5px;
            overflow: hidden;
            margin-bottom: 10px;
            font-family: "Open Sans", helvetica, arial, sans-serif;
            font-size: 1.2rem;
            color: white;
            text-align: center;
            text-decoration: none;
            text-overflow: ellipsis;
            white-space: nowrap;
            cursor: pointer;
            background-color: black;
            border: solid;
            border-radius: 2em;
            border-color: white;
            transition: background-color 500ms ease;
        }

        .button:hover {
            color: #eee;
            background-color: #333;
        }

        .button.small {
            width: 100%;
            max-width: 4em;
            padding: 7px 2px;
            overflow: hidden;
            margin: 0.5em 0 0 3.5em;
            font-size: 1rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        .button.info {
            width: 100%;
            max-width: 8em;
            padding: 7px 2px;
            overflow: hidden;
            margin: 0.5em 0 0 1em;
            font-size: 0.9rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        .button.newSearch {
            width: 100%;
            max-width: 7em;
            padding: 7px 2px;
            overflow: hidden;
            margin: 0.5em 0 0 11.2em;
            font-size: 1rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        a.button {
            -moz-appearance: button;
            appearance: button;
            text-decoration: none;
        }

        table.restaurants {
            border: 1px black solid;
        }

        .restaurants td {
            padding: 15px;
            text-align: left;
        }

        table.restaurants tr:nth-child(even) {
            background-color: antiquewhite;
        }

        table.restaurants tr:nth-child(odd) {
            background-color: azure;
        }

    </style>
</head>

<body>
<section class="big">
    <h1 class="head">Waiter</h1>
    <section class="tall">
        <h2>All reviews</h2>
        <div class="results">
            <c:choose>
            <c:when test="${not empty reviews}">
            <table class="reviews">
                <thead>
                <tr>
                    <th>Restaurant</th>
                    <th>Rating</th>
                    <th>Review</th>
                </tr>
                </thead>
                <c:forEach var="reviews" items="${reviews}">
                    <tr>
                        <td>${reviews.restaurant} </td>
                        <td>${reviews.rating}</td>
                        <td>${reviews.text}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>


        </c:when>
        <c:otherwise>
            <h2> No reviews were found </h2>
        </c:otherwise>
        </c:choose>
        <br>

        <!-- Notandi getur hafið nýja leit í gegnum þennan hlekk -->
        <a href="/demo/spyrjaNotanda" class="button newSearch">New search</a>
    </section>



    <!-- Hér getur notandi slegið inn hvaða veitingastað hann hefur áhuga á  -->

</section>
</body>

</html>
