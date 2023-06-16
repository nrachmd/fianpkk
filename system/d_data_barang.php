<?php
error_reporting(~E_NOTICE);
session_start();
$target="1";
require_once("../server/controllers/class.CtrlGlobal.php");
$objCtrl = new CtrlGlobal();
include 'main.php';
if ($_GET['msg'] != "") {
    $msg = $_GET['msg'];
} else {
    $msg = "";
}
//letaknya di bawah
include 'left_panel.php';
// $access = explode('#', $objCtrl->getAccessFile('2'));

?>
<div class="page-content-wrapper form-table" id="xform">
    <div class="page-content bg-transparent p-content" style="min-height: 12px;">
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <form action="" id="form-data">
                        <div class="row">
                            <div class="col-md-12">
                                <h5><strong id="form-title">Tambah Barang</strong></h5>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-6 m-t-20">
                                    <span>Nama Barang</span>
                                    <div class="m-t-10">
                                        <select class="select2 form-control m-t-10" id="id_barang" name="id_barang">
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6 m-t-20">
                                    <span>Jumlah Barang</span>
                                    <input type="number" name="jumlah_barang" id="jumlah_barang"
                                    class="form-control m-t-10" value="">
                                </div>
                            </div>
                            <div class="col-md-12 m-t-20" align="right">
                                <input type="hidden" name="id_inventaris" id="id_inventaris">
                                <input type="hidden" name="act" id="act" value="create">
                                <button type="button" class="btn default cencel">Close</button>
                                <button type="button" class="btn blue btn-action" id="btn-save" onclick="saveData();">SIMPAN</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


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
                                        <a href="#">Inventaris</a>
                                        <i class="fa fa-circle"></i>
                                    </li>
                                    <li>
                                        <a href="#">Data Barang</a>&nbsp;&nbsp;&nbsp;
                                    </li>
                                    <li>
                                        <button class="btn btn-primary blue add" onclick="$('#act').val('create');"> <i class="fa fa-plus"></i>Add</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="actions">
                            <div class="btn-group">
                                <a class="btn red btn-danger btn-circle" href="javascript:;" data-toggle="dropdown">
                                    <span class="hidden-xs"> Tools </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu pull-right" id="sample_3_tools">
                                    <li>
                                        <a href="javascript:;" data-action="0" class="tool-action">
                                            <i class="icon-printer"></i> Print</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-action="1" class="tool-action">
                                            <i class="icon-check"></i> Copy</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-action="2" class="tool-action">
                                            <i class="icon-doc"></i> PDF</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-action="3" class="tool-action">
                                            <i class="icon-paper-clip"></i> Excel</a>
                                    </li>
                                    <li>
                                        <a href="javascript:;" data-action="4" class="tool-action">
                                            <i class="icon-cloud-upload"></i> CSV</a>
                                    </li>
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="javascript:;" data-action="5" class="tool-action">
                                            <i class="icon-refresh"></i> Reload</a>
                                    </li>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                   <div class="portlet-body"> 
                        <table class="table table-striped table-bordered table-hover" id="datatable">
                            <thead>
                                <tr>
                                    <th width="2%">No</th>
                                    <th width="15%">Action</th>
                                    <th>Nama Barang</th>
                                    <th>Jumlah Barang</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- END CONTAINER -->

            <div class="modal fade bs-modal-md" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">

                <div class="modal-dialog modal-md">

                    <div class="modal-content">

                        <div class="modal-body">
                            <h5 style="text-align:center;">Apakah anda yakin?</h5>
                            <input type="text" name="reason" id="reason" class="form-control m-t-10" value="" placeholder="Alasan">
                            <input type="hidden" name="id_inventaris_del" id="id_inventaris_del" class="form-control m-t-10" value="" placeholder="id_inventaris">
                        </div>

                        <div class="modal-footer">

                            <button type="button" class="btn btn-outline" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn red btn-outline" data-dismiss="modal" onclick="deleteData()">Delete</button>

                        </div>

                    </div>

                    <!-- /.modal-content -->

                </div>

                <!-- /.modal-dialog -->

            </div>
            <?php include 'footer.php'?>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('.form-table').hide();
                    $('[data-toggle="tooltip"]').tooltip()
                    $("#li-head-1").addClass("active open");
                    $("#arrow-1").addClass("open");
                    $("#li-12").addClass("active");
                })
                getSelectOption();
                function getSelectOption() {
                    $.ajax({
                        url: "../server/svr_data_barang.php?act=listBarang",
                        method: 'GET',
                        success: function (res) {
                            var akun = '<option value="">Pilih Jenis Barang</option>';
                            for (var i = 0; i < res.data.length; i++) {
                                akun += '<option value="' + res.data[i].id_barang + '">' + res.data[i]
                                    .jenis_barang +
                                    '</option>';
                            }

                            $('#id_barang').append(akun);
                        }
                    });

                }
                setTable();
                function setTable() {
                    var table = $('#datatable').dataTable({
                        "processing": true,
                        "serverSide": true,
                        'serverMethod': 'post',
                        "ajax": {
                            url: '../server/svr_data_barang.php?act=readTable'
                        },

                        "columns": [{
                                "data": "no"
                            }, {
                                "data": "id_inventaris"
                            }, {
                                "data": "jenis_barang"
                            }, {
                                "data": "jumlah_barang"
                            },
                        ],
                        rowId: function(a) {
                            return 'id_' + a.no;
                        },
                        "columnDefs": [{
                            "targets": 1,
                            "data": null,
                            "render": function(id, index, data, type, row) {
                                var id = "'" + data.id_inventaris + "'";
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
                                    btn += '<button type="button" onclick="setIdDel(\'' + data.id_inventaris +'\')" class="btn red btn-outlline p-action" data-toggle="modal" href="#deleteModal">';
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
                            [5, 10, 15, 20, 100],
                            [5, 10, 15, 20, 100] // change per page values here
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


                function setIdDel(id_inventaris_del){
                    $('#id_inventaris_del').val(id_inventaris_del);
                }

                function deleteData(){
                    var id_inventaris_del = $('#id_inventaris_del').val();
                    var reason = $('#reason').val();
                    if($('#reason').val() == ""){
                    swal("Maaf!", "Reason harus di isi!", "warning");
                    return false;
                    }

                    $.ajax({
                        url: "../server/svr_data_barang.php",
                        method: 'post',
                        data: {
                            act: 'delete',
                            id_inventaris_del: id_inventaris_del,
                            reason: reason
                        },
                        success: function (result) {
                            if (result == 'success') {
                                setTable();
                                swal("Data Berhasil dihapus!", {
                                    icon: "success"
                                });
                                $('#reason').val('');
                                $('#id_inventaris_del').val('');
                            }else{
                                swal("Terjadi kesalahan Pada !"+result, {
                                    icon: "warning"
                                });
                            }
                        }
                    });
                }

                function detailData(tipe,id_inventaris) {
                  $('.form-table').show();
                  $('.panel-table').hide();
                  $('#act').val(tipe);
                  if(tipe == 'view'){
                    $('#btn-save').hide();
                  }else{
                    $('#btn-save').css('display','block');
                  }
                  $.ajax({
                     url: '../server/svr_data_barang.php',
                     method: 'POST',
                     data: {
                        act: "read",
                        id_inventaris: id_inventaris
                     },

                     complete: function (res) {
                        var data = res.responseJSON.data[0];
                        if (data != "") {
                           $('#id_inventaris').val(res.responseJSON.xid_inventaris);
                           $('#jumlah_barang').val(data.jumlah_barang);
                           $('#price').val(data.price);
                           $('#kondisi').val(data.kondisi);
                           $('#kondisi').select2().trigger('change');
                           $('#id_barang').val(data.id_barang);
                           $('#id_barang').select2().trigger('change');

                        }
                     }
                  });

               }

        

      function saveData() {
        var act = $('#act').val();
        var id_inventaris = $('#id_inventaris').val();
        var jumlah_barang = $('#jumlah_barang').val();
        var price = $('#price').val();
        var id_barang = $('#id_barang').val();
        var kondisi = $('#kondisi').val();


        var formData = new FormData();
        formData.append('act',act);
        formData.append('id_inventaris',id_inventaris);
        formData.append('jumlah_barang',jumlah_barang);
        formData.append('id_barang',id_barang);
        formData.append('price',price);
        formData.append('kondisi',kondisi);

        $.ajax({
        url: "../server/svr_data_barang.php",
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
            $('#price').val('');
            $('#nip').val('');
            $('#kondisi').val('');
            $('#kondisi').select2().trigger('change');
            $('#jumlah_barang').val('');
            $('#imgphoto').css('background-image', 'url(assets/images/employees/)');
            $('#id_barang').val('');
            $('#kondisi').select2().trigger('change');
        }
        
      

    </script>
</body>

</html>