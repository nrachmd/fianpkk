<?php
$target="1";
require_once("../server/controllers/class.CtrlGlobal.php");
$objCtrl = new CtrlGlobal();

include 'main.php';
if ($_GET['msg'] != "") {
    $msg = $_GET['msg'];
} else {
    $msg = "";
}

$dayArray=array();
$dayArray=$objCtrl->findFirstAndLastDay(date("Y-m-d"));
if(!isset($tgl1)) $tgl1=$dayArray[0];
$temp = explode("/",$tgl1);
$t1=$temp[1].'/'.$temp[2];   
//letaknya di bawah
include 'left_panel.php';
// $access = explode('#', $objCtrl->getAccessFile('2'));

?>

<!-- BEGIN CONTENT -->
<div class="page-content-wrapper panel-table">
    <div class="page-content bg-transparent p-content">
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title">
                        <div class="caption font-green">
                            <div class="page-bar bg-transparent border-none">
                                <ul class="page-breadcrumb">
                                    <li>
                                        <a href="#">Dashboard</a>
                                        <i class="fa fa-circle"></i>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="portlet-body">
                            <div class="row">
                                <div class="col-md-2">
                                    <input class="input-group form-control form-control-inline" type="text" id="month"
                                       name="month" autocomplete="off" value="<?= $t1 ?>"/>
                                </div>
                                <div class="col-md-2">
                                    <button class="btn green" onclick="refreshData()">Cari</button>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 bordered">
                                    <span class="font-blue">Akumulasi Bulan Kemarin</span>
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-blue">
                                                <small class="font-blue">Tax</small>
                                                <span id="tax_lm"></span>
                                            </h3>
                                            <small id="dpp_lm">DPP 0</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <small id="total_lm">Omset 0</small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-pie-chart"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info" id="progress_lm">
                                        <div class="progress" >
                                            <span style="width: 40%;" class="progress-bar progress-bar-success blue">
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 50% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 bordered">
                                    <span class="font-red">Akumulasi Bulan Sekarang</span>
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-red">
                                                <small class="font-red">Tax</small>
                                                <span id="tax_cur"></span>
                                            </h3>
                                            <small id="dpp_cur">DPP 0</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <small id="total_cur">Omset 0</small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-pie-chart"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info" id="progress_cur">
                                        <div class="progress">
                                            <span style="width: 100%;" class="progress-bar progress-bar-success red">
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 50% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="dashboard-stat2 bordered">
                                    <span class="font-green">Perkiraan Bulan Depan</span>
                                    <div class="display">
                                        <div class="number">
                                            <h3 class="font-green">
                                                <small class="font-green">Tax</small>
                                                <span id="tax_forecast"></span>
                                            </h3>
                                            <small id="dpp_forecast">DPP </small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <small id="total_forecast">Omset </small>
                                        </div>
                                        <div class="icon">
                                            <i class="icon-pie-chart"></i>
                                        </div>
                                    </div>
                                    <div class="progress-info" id="progress_forecast">
                                        <div class="progress">
                                            <span style="width: 50%;" class="progress-bar progress-bar-success green">
                                                <span class="sr-only">50% progress</span>
                                            </span>
                                        </div>
                                        <div class="status">
                                            <div class="status-title"> progress </div>
                                            <div class="status-number"> 50% </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-green"></i>
                                            <span class="caption-subject font-green bold uppercase">Perbandingan antara Objek Pajak
                                            </span>
                                        </div>   
                                    </div>
                                    <div class="portlet-body">
                                        <div id="chart_op" style="height:500px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                                <i class=" icon-layers font-green"></i>
                                                <span class="caption-subject font-green bold uppercase">Perbandingan Data Perekaman VS Realisasi 
                                                </span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="bar_data_vs_realisasi" style="height:500px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <span class="caption-subject font-dark bold uppercase">Implementor Activity
                                            </span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config" data-original-title="" title=""> </a>
                                            <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="table-scrollable">
                                            <table class="table table-striped table-bordered table-advance table-hover">
                                                <thead>
                                                    <tr>
                                                        <th width="30%">Nama Implementor </th>
                                                        <th width="20%">WP </th>
                                                        <th width="30%">Keterangan </th>
                                                        <th width="20%">Dokumentasi </th>
                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td rowspan="5">
                                                            <div class="mt-card-item">
                                                                <div class="mt-card-avatar mt-overlay-1">
                                                                    <img class="media-object" src="assets/images/avatar.jpg" alt="..." width="90">
                                                                </div>
                                                                <div class="mt-card-content">
                                                                    <h3 class="mt-card-name">P.Bambang</h3>
                                                                    <p class="mt-card-desc font-grey-mint">Creative Director</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="hidden-xs">KFC</td>
                                                        <td>Maintenance</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>MCD</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td>HOKBEN</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td>BeardPapa</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Chatime</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td rowspan="5">
                                                            <div class="mt-card-item">
                                                                <div class="mt-card-avatar mt-overlay-1">
                                                                    <img class="media-object" src="assets/images/avatar.jpg" alt="..." width="90">
                                                                </div>
                                                                <div class="mt-card-content">
                                                                    <h3 class="mt-card-name">P.Febri</h3>
                                                                    <p class="mt-card-desc font-grey-mint">Creative Director</p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="hidden-xs">KFC</td>
                                                        <td>Maintenance</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>MCD</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td>HOKBEN</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td>BeardPapa</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Chatime</td>
                                                        <td>Instalasi</td>
                                                        <td>
                                                            <div id="animated-thumbnails">
                                                                <a href="img/img1.jpg">
                                                                    <img src="img/thumb1.jpg" />
                                                                </a>
                                                                <a href="img/img2.jpg">
                                                                    <img src="img/thumb2.jpg" />
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 col-xs-12 col-sm-12">
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-cursor font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Informasi WP</span>
                                        </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="reload" data-original-title="" title=""> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="easy-pie-chart">
                                                    <div class="number transactions" data-percent="55">
                                                        <span class="title">250</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Jumlah WP Terpasang
                                                        <i class="icon-badge"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-3">
                                                <div class="easy-pie-chart">
                                                    <div class="number visits" data-percent="85">
                                                        <span>100</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Restoran
                                                        <i class="icon-cup"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-3">
                                                <div class="easy-pie-chart">
                                                    <div class="number visits" data-percent="85">
                                                        <span>50</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Hotel
                                                        <i class="icon-home"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-3">
                                                <div class="easy-pie-chart">
                                                    <div class="number visits" data-percent="85">
                                                        <span>150</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Hiburan
                                                        <i class="icon-game-controller"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-3">
                                                <div class="easy-pie-chart">
                                                    <div class="number bounce" data-percent="46">
                                                        <span>50</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Parkir
                                                        <i class="icon-flag"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-6">
                                                <div class="easy-pie-chart">
                                                    <div class="number bounce" data-percent="46">
                                                        <span>235</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Online
                                                        <i class="icon-like"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="margin-bottom-10 visible-sm"> </div>
                                            <div class="col-md-6">
                                                <div class="easy-pie-chart">
                                                    <div class="number bounce" data-percent="46">
                                                        <span>15</span></div>
                                                    <a class="font-dark bold" href="javascript:;"> Offline
                                                        <i class="icon-dislike"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CONTAINER -->

            </div>
            <?php include 'footer.php'?>

            <!-- Chart assets -->
            <script src="assets/js/echarts-5.4.2/dist/echarts.min.js"></script>
            
            <script type="text/javascript">
                $(document).ready(function () {
                    $('.form-table').hide();
                    $('[data-toggle="tooltip"]').tooltip()
                    $("#li-head-1").addClass("active open");
                    $("#arrow-1").addClass("open");
                    $("#li-12").addClass("active");
                    $('#month').datepicker({
                        format: 'mm/yyyy',
                        viewMode: "months",
                        minViewMode: "months",
                        autoclose: true
                    });
                    refreshData();
                });   
                
                function refreshData(){
                    setCard();
                    // chartPerbandinganOP();
                    dataPerbandinganOP();
                }

                setCard();
                function setCard() {
                    var month = $('#month').val();
                    $.ajax({
                        url: "../server/svr_dashboard.php",
                        // method: 'post',
                        data: {
                            act: 'topCard',
                            month: month,
                        },
                        success: function (result) {
                            $('#dpp_lm').text('DPP '+result.dpp_lm);
                            $('#tax_lm').text(result.tax_lm);
                            $('#total_lm').text('OMSET '+result.total_lm);
                            var progress_lm = '<div class="progress" >'
                                                    +'<span style="width: '+parseFloat(result.nilai_prcnt_lm)+'%;" class="progress-bar progress-bar-success blue">'
                                                    +'</span>'
                                                +'</div>'
                                                +'<div class="status">'
                                                    +'<div class="status-title"> Target </div>'
                                                    +'<div class="status-number"> '+parseFloat(result.nilai_prcnt_lm)+'% </div>'
                                                +'</div>';
                            $('#progress_lm').html(progress_lm)
                            $('#dpp_cur').text('DPP '+result.dpp_cur);
                            $('#tax_cur').text(result.tax_cur);
                            $('#total_cur').text('OMSET '+result.total_cur);
                            // $('#nilai_prcnt_cur').text(result.nilai_prcnt_cur);
                            var progress_cur = '<div class="progress" >'
                                                    +'<span style="width: '+parseFloat(result.nilai_prcnt_cur)+'%;" class="progress-bar progress-bar-success red">'
                                                    +'</span>'
                                                +'</div>'
                                                +'<div class="status">'
                                                    +'<div class="status-title"> Target </div>'
                                                    +'<div class="status-number"> '+parseFloat(result.nilai_prcnt_cur)+'% </div>'
                                                +'</div>';

                            $('#progress_cur').html(progress_cur)
                            $('#dpp_forecast').text('DPP '+result.dpp_forecast);
                            $('#tax_forecast').text(result.tax_forecast);
                            $('#total_forecast').text('OMSET '+result.total_forecast);
                            $('#nilai_prcnt_forecast').text(result.nilai_prcnt_forecast);
                            var progress_forecast = '<div class="progress" >'
                                                    +'<span style="width: '+parseFloat(result.nilai_prcnt_forecast)+'%;" class="progress-bar progress-bar-success green">'
                                                    +'</span>'
                                                +'</div>'
                                                +'<div class="status">'
                                                    +'<div class="status-title"> Target </div>'
                                                    +'<div class="status-number"> '+parseFloat(result.nilai_prcnt_forecast)+'% </div>'
                                                +'</div>';
                            $('#progress_forecast').html(progress_forecast)
                        }
                    });
                }
                
                function dataPerbandinganOP(){
                    var xmonth = [];
                    var xresto = [];
                    var xhotel = [];
                    var xhiburan = [];
                    var xparkir = [];

                    $.ajax({
                        url: "../server/svr_dashboard.php",
                        // method: 'post',
                        data: {
                            act: 'dataPerbandinganOP',
                            month: $('#month').val(),
                        },
                        success: function (result) {
                            // var result = result.data;
                            for (var i = 0; i < result.length; i++) {
                                if(result){
                                    // xmonth.push(result[i].xmonth);
                                    if(result[i]['restoran'][0]){
                                        xmonth.push(result[i]['restoran'][0]['xmonth']);
                                        if(result[i]['restoran'][0]){
                                            xresto.push(result[i]['restoran'][0]['tax']);
                                        }else{
                                            xresto.push(0);
                                        }
                                        if(result[i]['hotel'][0]){
                                            xhotel.push(result[i]['hotel'][0]['tax']);
                                        }else{
                                            xhotel.push(0);
                                        }
                                        if(result[i]['parkir'][0]){
                                            xparkir.push(result[i]['parkir'][0]['tax']);
                                        }else{
                                            xparkir.push(0);
                                        }
                                        if(result[i]['hiburan'][0]){
                                            xhiburan.push(result[i]['hiburan'][0]['tax']);
                                        }else{
                                            xhiburan.push(0);
                                        }
                                    }
                                }
                            }
                            console.log(xparkir);
                            chartPerbandinganOP(xmonth,xresto,xhotel,xhiburan,xparkir);
                        }
                    });

                    // var monthNames = [
                    //   "January", "February", "March", "April", "May", "June",
                    //   "July", "August", "September", "October", "November", "December"
                    // ];
                    // var currentDate = new Date();
                    // var currentMonth = currentDate.getMonth();
                    // var currentMonthName = monthNames[currentDate.getMonth()];
                    // var previousMonths = [currentMonthName];
                    // for (var i = 0; i < 5; i++) {
                    //     var previousMonthIndex = (currentMonth - i - 1 + 12) % 12;
                    //     var previousMonthName = monthNames[previousMonthIndex];
                    //     previousMonths.push(previousMonthName);
                    // }
                }
                // chartPerbandinganOP();
                function chartPerbandinganOP(dataBulan,xresto,hotel,hiburan,parkir){
                    // var dataBulan = ['Jan', 'Feb', 'Mar', 'Apr', 'May'];
                    // console.log(resto);
                    // chart init perekaman data
                    // console.log(dataBulan);
                    var app = {};
                    var chartDom = document.getElementById('chart_op');
                    var myChart = echarts.init(chartDom);
                    var option;

                    const posList = [
                      'left',
                      'right',
                      'top',
                      'bottom',
                      'inside',
                      'insideTop',
                      'insideLeft',
                      'insideRight',
                      'insideBottom',
                      'insideTopLeft',
                      'insideTopRight',
                      'insideBottomLeft',
                      'insideBottomRight'
                    ];
                    app.configParameters = {
                      rotate: {
                        min: -90,
                        max: 90
                      },
                      align: {
                        options: {
                          left: 'left',
                          center: 'center',
                          right: 'right'
                        }
                      },
                      verticalAlign: {
                        options: {
                          top: 'top',
                          middle: 'middle',
                          bottom: 'bottom'
                        }
                      },
                      position: {
                        options: posList.reduce(function (map, pos) {
                          map[pos] = pos;
                          return map;
                        }, {})
                      },
                      distance: {
                        min: 0,
                        max: 100
                      }
                    };
                    app.config = {
                      rotate: 90,
                      align: 'left',
                      verticalAlign: 'middle',
                      position: 'insideBottom',
                      distance: 15,
                      onChange: function () {
                        const labelOption = {
                          rotate: app.config.rotate,
                          align: app.config.align,
                          verticalAlign: app.config.verticalAlign,
                          position: app.config.position,
                          distance: app.config.distance
                        };
                        myChart.setOption({
                          series: [
                            {
                              label: labelOption
                            },
                            {
                              label: labelOption
                            },
                            {
                              label: labelOption
                            },
                            {
                              label: labelOption
                            }
                          ]
                        });
                      }
                    };
                    const labelOption = {
                      show: true,
                      position: app.config.position,
                      distance: app.config.distance,
                      align: app.config.align,
                      verticalAlign: app.config.verticalAlign,
                      rotate: app.config.rotate,
                      formatter: '{c}  {name|{a}}',
                      fontSize: 16,
                      rich: {
                        name: {}
                      }
                    };
                    option = {
                      tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                          type: 'shadow'
                        }
                      },
                      legend: {
                        data: ['Restoran', 'Hiburan', 'Parkir', 'Hotel']
                      },
                      toolbox: {
                        show: true,
                        orient: 'vertical',
                        left: 'right',
                        top: 'center',
                        feature: {
                          mark: { show: true },
                          dataView: { show: true, readOnly: false },
                          magicType: { show: true, type: ['line', 'bar', 'stack'] },
                          restore: { show: true },
                          saveAsImage: { show: true }
                        }
                      },
                      xAxis: [
                        {
                          type: 'category',
                          axisTick: { show: false },
                          data: dataBulan
                        }
                      ],
                      yAxis: [
                        {
                          type: 'value'
                        }
                      ],
                      series: [
                        {
                          name: 'Restoran',
                          type: 'bar',
                          barGap: 0,
                          label: labelOption,
                          emphasis: {
                            focus: 'series'
                          },
                          // data: xresto
                          data: xresto
                        },
                        {
                          name: 'Hiburan',
                          type: 'bar',
                          label: labelOption,
                          emphasis: {
                            focus: 'series'
                          },
                          data: hiburan
                        },
                        {
                          name: 'Parkir',
                          type: 'bar',
                          label: labelOption,
                          emphasis: {
                            focus: 'series'
                          },
                          data: parkir
                        },
                        {
                          name: 'Hotel',
                          type: 'bar',
                          label: labelOption,
                          emphasis: {
                            focus: 'series'
                          },
                          data: hotel
                        }
                      ]
                    };

                    option && myChart.setOption(option);
                }

                function chartPerbandinganRealisasi(){

                    // chart init perbandingan
                    var app2 = {};

                    var chartDom2 = document.getElementById('bar_data_vs_realisasi');
                    var myChart2 = echarts.init(chartDom2);
                    var option2;

                    const posList2 = [
                      'left',
                      'right',
                      'top',
                      'bottom',
                      'inside',
                      'insideTop',
                      'insideLeft',
                      'insideRight',
                      'insideBottom',
                      'insideTopLeft',
                      'insideTopRight',
                      'insideBottomLeft',
                      'insideBottomRight'
                    ];
                    app2.configParameters = {
                      rotate: {
                        min: -90,
                        max: 90
                      },
                      align: {
                        options: {
                          left: 'left',
                          center: 'center',
                          right: 'right'
                        }
                      },
                      verticalAlign: {
                        options: {
                          top: 'top',
                          middle: 'middle',
                          bottom: 'bottom'
                        }
                      },
                      position: {
                        options: posList2.reduce(function (map, pos) {
                          map[pos] = pos;
                          return map;
                        }, {})
                      },
                      distance: {
                        min: 0,
                        max: 100
                      }
                    };
                    app2.config = {
                      rotate: 90,
                      align: 'left',
                      verticalAlign: 'middle',
                      position: 'insideBottom',
                      distance: 15,
                      onChange: function () {
                        const labelOption = {
                          rotate: app2.config.rotate,
                          align: app2.config.align,
                          verticalAlign: app2.config.verticalAlign,
                          position: app2.config.position,
                          distance: app2.config.distance
                        };
                        myChart2.setOption({
                          series: [
                            {
                              label: labelOption
                            },
                            {
                              label: labelOption
                            },
                            {
                              label: labelOption
                            },
                            {
                              label: labelOption
                            }
                          ]
                        });
                      }
                    };
                    const labelOption2 = {
                      show: true,
                      position: app2.config.position,
                      distance: app2.config.distance,
                      align: app2.config.align,
                      verticalAlign: app2.config.verticalAlign,
                      rotate: app2.config.rotate,
                      formatter: '{c}  {name|{a}}',
                      fontSize: 16,
                      rich: {
                        name: {}
                      }
                    };
                    option2 = {
                      tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                          type: 'shadow'
                        }
                      },
                      legend: {
                        data: ['Perekaman', 'Realisasi']
                      },
                      toolbox: {
                        show: true,
                        orient: 'vertical',
                        left: 'right',
                        top: 'center',
                        feature: {
                          mark: { show: true },
                          dataView: { show: true, readOnly: false },
                          magicType: { show: true, type: ['line', 'bar', 'stack'] },
                          restore: { show: true },
                          saveAsImage: { show: true }
                        }
                      },
                      xAxis: [
                        {
                          type: 'category',
                          axisTick: { show: false },
                          data: ['2012', '2013', '2014', '2015', '2016']
                        }
                      ],
                      yAxis: [
                        {
                          type: 'value'
                        }
                      ],
                      series: [
                        {
                          name: 'Perekaman',
                          type: 'bar',
                          barGap: 0,
                          label: labelOption2,
                          emphasis: {
                            focus: 'series'
                          },
                          data: [320, 332, 301, 334, 390]
                        },
                        {
                          name: 'Realisasi',
                          type: 'bar',
                          label: labelOption2,
                          emphasis: {
                            focus: 'series'
                          },
                          data: [220, 182, 191, 234, 290]
                        }
                      ]
                    };

                    option2 && myChart2.setOption(option2);
                }
                setTable();
                function setTable() {
                    var table = $('#datatable').dataTable({
                        "processing": true,
                        "serverSide": true,
                        'serverMethod': 'post',
                        "ajax": {
                            url: '../server/svr_user.php?act=readTable'
                        },

                        "columns": [{
                                "data": "no"
                            }, {
                                "data": "id_user"
                            }, {
                                "data": "full_name"
                            }, {
                                "data": "username"
                            }, {
                                "data": "level"
                            },
                        ],
                        rowId: function(a) {
                            return 'id_' + a.no;
                        },
                        "columnDefs": [{
                            "targets": 1,
                            "data": null,
                            "render": function(id, index, data, type, row) {
                                var id = "'" + data.id_user + "'";
                                var btn = '<div style="dsiplay:flex">';
                                // if (data.edit == 1) {
                                        btn += '<button type="button" onclick="detailData(' + "'update'" + ',' + id +
                                            ')" class="btn yellow btn-outline p-action">';
                                        btn += '<i class="fa fa-pencil"></i>';
                                        btn += '</button>';
                                         btn += '<button type="button" onclick="detailData(' + "'view'" + ',' + id +
                                            ')" class="btn btn-success btn-outline p-action">';
                                        btn += '<i class="fa fa-file-o"></i>';
                                        btn += '</button>';
                                    // }
                                // if (data.del == 1) {
                                    btn += '<button type="button" onclick="setIdDel(\'' + data.id_user +'\')" class="btn red btn-outlline p-action" data-toggle="modal" href="#deleteModal">';
                                    btn += '<i class="fa fa-trash" ></i>';
                                    btn += '</button>';
                                // }
                                // if(data.menu_id == null){
                                //     window.location.replace("403/ind");
                                // }
                                btn += '</div>';

                                return btn;
                            }
                        },
                        ],


                        buttons: [{
                                extend: 'print',
                                className: 'btn dark btn-outline'
                            },
                            {
                                extend: 'copy',
                                className: 'btn red btn-outline'
                            },
                            {
                                extend: 'pdf',
                                className: 'btn green btn-outline'
                            },
                            {
                                extend: 'excel',
                                className: 'btn yellow btn-outline '
                            },
                            {
                                extend: 'csv',
                                className: 'btn purple btn-outline '
                            },
                            {
                                extend: 'colvis',
                                className: 'btn dark btn-outline',
                                text: 'Columns'
                            }
                        ],
                        responsive: false,
                        "order": [
                            [2, 'desc']
                        ],

                        "lengthMenu": [
                            [5, 10, 15, 20, -1],
                            [5, 10, 15, 20, "All"] // change per page values here
                        ],
                        // set the initial value
                        "pageLength": 10,
                        "destroy": true

                    });

                    // handle datatable custom tools
                    $('#sample_3_tools > li > a.tool-action').on('click', function() {
                        var action = $(this).attr('data-action');
                        table.DataTable().button(action).trigger();
                    });
                }


                function setIdDel(id_user_del){
                    $('#id_user_del').val(id_user_del);
                }

                function deleteData(){
                    var id_user_del = $('#id_user_del').val();
                    var reason = $('#reason').val();
                    if($('#reason').val() == ""){
                    swal("Maaf!", "Reason harus di isi!", "warning");
                    return false;
                    }

                    $.ajax({
                        url: "../server/svr_user.php",
                        method: 'post',
                        data: {
                            act: 'delete',
                            id_user_del: id_user_del,
                            reason: reason
                        },
                        success: function (result) {
                            if (result == 'success') {
                                setTable();
                                swal("Data Berhasil dihapus!", {
                                    icon: "success"
                                });
                                $('#reason').val('');
                                $('#id_user_del').val('');
                            }else{
                                swal("Terjadi kesalahan Pada !"+result, {
                                    icon: "warning"
                                });
                            }
                        }
                    });
                }

                function detailData(tipe,id_user) {
                  $('.form-table').show();
                  $('.panel-table').hide();
                  $('#act').val(tipe);
                  if(tipe == 'view'){
                    $('#btn-save').hide;
                  }else{
                    $('#btn-save').css('display','block');
                  }
                  $.ajax({
                     url: '../server/svr_user.php',
                     method: 'POST',
                     data: {
                        act: "read",
                        id_user: id_user
                     },

                     complete: function (res) {
                        var data = res.responseJSON.data[0];
                        if (data != "") {
                           $('#id_user').val(res.responseJSON.xid_user);
                           $('#username').val(data.username);
                           $('#full_name').val(data.full_name);
                           $('#level').val(data.level);
                        }
                     }
                  });

               }

        

      function saveData() {
        var act = $('#act').val();
        var id_user = $('#id_user').val();
        var username = $('#username').val();
        var full_name = $('#full_name').val();
        var password = $('#password').val();
        var level = $('#level').val();


        var formData = new FormData();
        formData.append('act',act);
        formData.append('id_user',id_user);
        formData.append('username',username);
        formData.append('password',password);
        formData.append('full_name',full_name);
        formData.append('level',level);

        $.ajax({
        url: "../server/svr_user.php",
        data: formData,
        processData: false,
        contentType: false,
        type: 'POST',
        success: function(res) {
            if (res == "success") {
                swal("Berhasil!", "Data telah ditambahkan!", "success");
                $('.form-table').hide();
                $('.panel-table').fadeIn(400);
                setTable();
                resetData();
                $('.btn-action').attr('disabled', false);
                $('.btn-action').text('Simpan');
            } else {
                swal("Error!", "Terjadi Kesalahan!. Error code"+res, "warning");
                $('.btn-action').attr('disabled', false);
                $('.btn-action').text('Simpan');
            }
        }
    });

    }

     
        function resetData(){
            // $('#form-data')[0].reset();
            $('#imgphoto').css('background-image', 'url(assets/images/employees/no_image.png)');
            $('#full_name').val('');
            $('#nip').val('');
            $('#level_id').val('');
            $('#level_id').select2().trigger('change');
            $('#username').val('');
            $('#imgphoto').css('background-image', 'url(assets/images/employees/)');
            $('#password').val("");
        }
        
      

    </script>
</body>

</html>