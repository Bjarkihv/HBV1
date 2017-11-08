<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <title>Random Result </title>
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
            height: 55em;
            margin-left: 26em;
            padding: 0em 0em 0em 0em;
            margin-bottom: 2em;
            border: solid;
            background-color: darkcyan;
        }

        .tall {
            height: 400px;
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
            height: 5em;
            width: 21em;
            padding-top: 0.75em;
            margin-top: 2em;
            margin-right: 0em;
            margin-left: 5em;
            margin-bottom: 1em;
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
            width: 13em;
            display: flex;
            justify-content: center;
            margin-left: 8.5em;
            margin-top: 0.5em;
            margin-bottom: 0;
            padding-left: 0rem;
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
            max-width: 10em;
            padding: 7px 6px;
            overflow: hidden;
            margin: -0.5em 0px 0px 0em;
            font-size: 0.9rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        .button.tryAgain {
            width: 100%;
            max-width: 6em;
            padding: 5px 2px;
            overflow: hidden;
            margin: 2.5em 15px 0.5em -7.5em;
            font-size: 1rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        .button.newSearch {
            width: 100%;
            max-width: 6em;
            padding: 5px 2px;
            overflow: hidden;
            margin: 2.5em 15px 0.5em 12em;
            font-size: 1rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        form {
            height: 2em;
        }

        a.button {
            -moz-appearance: button;
            appearance: button;
            text-decoration: none;
        }

        table.restaurant {
            border: 1px black solid;
        }

        .restaurant td {
            padding: 15px;
            text-align: left;
        }

        table.restaurant tr:nth-child(even) {
            background-color: antiquewhite;
        }

        table.restaurant tr:nth-child(odd) {
            background-color: azure;
        }

    </style>
</head>

<body>
<section class="big">
    <h1 class="head">Waiter</h1>
    <section class="tall">
        <h2>Search results</h2>
        <div class="results">
            <c:choose>
            <c:when test="${not empty restaurant}">
            <table class="restaurant">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Price</th>
                </tr>
                </thead>
                <c:forEach var="restaurant" items="${restaurant}">
                    <tr>
                        <td>${restaurant.name} </td>
                        <td>${restaurant.type}</td>
                        <td>${restaurant.price}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="info">
            <!-- Hér getur notandi slegið inn hvaða veitingastað hann hefur áhuga á  -->
            <form method="POST" action="/demo/resInfo">

                <input type="hidden" name="restaurant" value="${restaurant.get(0).getId()}">

                <input type="submit" value="Further information" class="button info" />

            </form>

            <!-- Ný leit í gegnum þennan hlekk-->
            <a href="https://immense-shelf-90486.herokuapp.com/demo/randRes" class="button tryAgain">Try again</a>
        </div>

        <a href="https://immense-shelf-90486.herokuapp.com/demo/spyrjaNotanda" class="button newSearch">New search</a>
        </c:when>
        <c:otherwise>
            <h3> No restaurant was found </h3>
        </c:otherwise>
        </c:choose>
        <br>


    </section>

    <section>
        <h2>I would like to book a table</h2>
        <div class="newRes">
            <form method="POST" action="/demo/book">
                <table>
                    <tr>
                        <td>At</td>
                        <td>
                            <input type="hidden" name="res" value="${restaurant.get(0).getName()}"> ${restaurant.get(0).getName()} </td>
                    </tr>
                    <tr>
                        <td>For</td>
                        <td>
                            <input type="range" name="seats" id="ageInputId" value="1" min="1" max="12" oninput="ageOutputId.value = ageInputId.value">
                            <output name="ageOutputName" id="ageOutputId">1</output>
                        </td>
                    </tr>
                    <tr>
                        <td>On</td>
                        <td>
                            <input name="time" type="date" placeholder="Date of booking" /> </td>
                    </tr>
                    <tr>
                        <td>At</td>
                        <td>
                            <input name="date" type="time" placeholder="Time of your booking" /> </td>
                    </tr>

                </table>
                <br>

                <input type="submit" value="Submit" class="button small" />

            </form>
        </div>
    </section>
</section>
</body>

</html>
