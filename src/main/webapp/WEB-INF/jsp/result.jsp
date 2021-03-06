<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en-us">
<head>
    <title>ORFanGenes</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="assets/favicon.ico"/>
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="assets/css/materialize.min.css" media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="assets/css/orfanid-results.css">
    <link type="text/css" rel="stylesheet" href="assets/css/orfan_styles.css">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="assets/js/materialize.min.js"></script>
    <script type="text/javascript" src="assets/js/plotly-latest.min.js"></script>
    <script type="text/javascript" src="assets/js/result.js"></script>
    <script type="text/javascript" src="assets/js/echarts.min.js"></script>
</head>
<body>
<nav>
    <div class="nav-wrapper teal">
        <a href="/" class="brand-logo">ORFanID</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="/input">Home</a></li>
            <li><a href="/results">Results</a></li>
            <li><a href=instructions>Instructions</a></li>
        </ul>
    </div>
</nav>
<main>
    <div class="row">
        <div class="col s5 offset-s1 center-align">
            <h4> ORFan Genes</h4>
            <table id="orfanGenesSummary" class="table display" cellspacing="0">
                <thead>
                <tr>
                    <th width="60%">Taxonomy Level</th>
                    <th width="40%">No of orphan Genes</th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="col s6 center-align">
            <h4> ORFan gene summary</h4>
            <div id="genesummary">
            </div>
        </div>
    </div>

    <div class="divider"></div>

    <div class="section">
        <div id="ORFanGenesTable" class="row">
            <div class="col s10 offset-s1 center-align">
                <h3> ORFan Genes</h3>
                <table id="orfanGenes" class="table display">
                    <thead>
                    <tr>
                        <th>Gene</th>
                        <th>Description</th>
                        <th>ORFan Gene Level</th>
                        <th>Taxonomy Level</th>
                        <th>Homology Evidences</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>

    <div class="divider"></div>

    <div class="row">
        <div class="col s2 offset-s10">
            <br><br>
            <a class="waves-effect waves-light btn modal-trigger" href="#saveResultModal"><i
                    class="material-icons left">save</i>Save Results</a>
        </div>
    </div>

    <div id="saveResultModal" class="modal">
        <div class="row">
            <form class="col s12">
                <div class="modal-content">
                    <h5>Save your results!</h5>
                    <div class="row">
                        <div class="input-field col s10">
                            <br><br>
                            <i class="material-icons prefix">email</i>
                            <input type="email" class="form-control validate" id="email" placeholder="Email">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#!" class="modal-close waves-effect waves-red btn-flat">Close</a>
                    <a class="modal-close waves-effect waves-green btn-flat" onclick="saveResult()">Save</a>
                </div>
            </form>
        </div>
    </div>

    <div id="blastResultModal" class="modal">
        <div class="modal-content">
            <div class="row">
                <div id="BlastResultsTable">
                    <h6 id="blastDescription"></h6>
                    <div id="blastResults" style="width:500px;height:500px;"></div>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">Close</a>
        </div>
    </div>
</main>
</body>
</html>
