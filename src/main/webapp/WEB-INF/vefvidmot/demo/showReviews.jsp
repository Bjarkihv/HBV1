<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <title>Information </title>
    <link href="https://fonts.googleapis.com/css?family=Prociono|Fascinate+Inline" rel="stylesheet">


    <script>
        function goBack() {
            window.history.back();
        }

    </script>

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
            height: 29em;
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
            height: 7em;
            width: 15em;
            display: flex;
            justify-content: center;
            padding-top: 0.75em;
            margin-top: 4em;
            margin-right: 0em;
            margin-left: 8em;
            margin-bottom: 9em;
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
            max-width: 7em;
            padding: 7px 6px;
            overflow: hidden;
            margin: 0.5em 0px 0px 4em;
            font-size: 0.9rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        .button.tryAgain {
            width: 100%;
            max-width: 8em;
            padding: 5px 2px;
            overflow: hidden;
            margin: 3.5em 2.6em 1.5em -6.5em;
            font-size: 1rem;
            border-radius: 0.5em;
            transition: background-color 500ms ease;
        }

        a.button {
            -moz-appearance: button;
            appearance: button;
            text-decoration: none;
        }

        form {
            height: 2em;
        }

        script {
            margin-left: 10em;
        }

    </style>
</head>

<body>
<section class="big">
    <h1 class="head">Waiter</h1>
    <section>

        <h2>${restaurants}</h2>


        <div>

            <form method="get" action="/demo/spyrjaNotanda">
                <input type="submit" value="New search" class="button info" />
            </form>
            <button onclick="goBack()" class="button tryAgain">Back to results</button>

        </div>


    </section>
</section>
</body>
<!-- method="POST" action="/demo/listiKennara" -->

</html>
