        <!-- BEGIN FOOTER -->

        <div class="page-footer">

            <div class="copyright text-center my-auto">

                <a target="_blank" href="greatcode.id">Copyright</a> &nbsp;&copy; &nbsp;

                <a href="greatcode.id" target="_blank">PUGO</a>

            </div>

            <div class="scroll-to-top">

                <i class="icon-arrow-up"></i>

            </div>

        </div>

        <!-- END FOOTER -->

    </div>



        <script src="assets/js/jquery.min.js" type="text/javascript"></script>

        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="assets/js/popper.js" type="text/javascript"></script>

        <script src="assets/js/js.cookie.min.js" type="text/javascript"></script>

        <script src="assets/js/icheck.min.js" type="text/javascript"></script>

        <script src="assets/js/jquery.slimscroll.min.js" type="text/javascript"></script>

        <script src="assets/js/jquery.blockui.min.js" type="text/javascript"></script>

        <script src="assets/js/bootstrap-switch.min.js" type="text/javascript"></script>

        <script src="assets/js/scanner.js" type="text/javascript"></script>

        

        <!-- <script src="assets/global/plugins/bootstrap-select/js/bootstrap-select.min.js" type="text/javascript"></script> -->

        <!-- <script src="assets/pages/scripts/components-bootstrap-select.min.js" type="text/javascript"></script> -->

        <script src="assets/js/select2.full.min.js" type="text/javascript"></script>

        <script src="assets/js/jquery.validate.min.js" type="text/javascript"></script>

        <script src="assets/js/datatable.js" type="text/javascript"></script>

        <script src="assets/js/datatables.min.js" type="text/javascript"></script>

        <script src="assets/js/datatables.bootstrap.js" type="text/javascript"></script>

        <script src="assets/js/bootstrap-datepicker.min.js" type="text/javascript"></script>

        <!-- <script src="assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script> -->

        <!-- <script src="assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script> -->

        <script src="assets/js/app.min.js" type="text/javascript"></script>

        <script src="assets/js/table-datatables-buttons.min.js" type="text/javascript"></script>

        <script src="assets/js/form-validation.min.js" type="text/javascript"></script>

        <script src="assets/js/layout.min.js" type="text/javascript"></script>

        <script src="assets/js/demo.min.js" type="text/javascript"></script>

        <script src="assets/js/quick-sidebar.min.js" type="text/javascript"></script>

        <script src="assets/js/quick-nav.min.js" type="text/javascript"></script>

        <script src="assets/js/sweetalert.min.js"></script>

        <script src="assets/js/bootstrap-select.min.js"></script> 

        



        <script>

            $(document).ready(function()

            {

                // $('input[class=date-picker]').datepicker({

                //     dateFormat: 'dd-mm-yy'

                // });



                $('#clickmewow').click(function()

                {

                    $('#radio1003').attr('checked', 'checked');

                });

            })

        </script>



        <script type="text/javascript">

            $(document).ready(function(){

                 $('.add').on("click", function(){

                    // $('.btn-action').val('save');

                    $('.form-table').fadeIn(400);

                    $('.panel-table').hide();

                    resetData();

                });

                $('.cencel').on("click", function(){

                    $('.btn-action').val('save');

                    $('.form-table').hide();

                    $('.panel-table').fadeIn(400);

                    $('#btn-save').attr('disabled', false);  

                    $('#btn-save').text('SIMPAN');  

                    resetData();

                })

            })

        </script>