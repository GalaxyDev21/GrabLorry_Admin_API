<div class="footer">
    <div class="pull-right">
    </div>
    <div>
        <strong>Copyright</strong> Lorry Application &copy; 2018
    </div>
</div>

<!-- Mainly scripts -->
<script src="<?php print base_url(); ?>js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<?php print base_url(); ?>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<script src="<?php print base_url(); ?>js/plugins/dataTables/datatables.min.js"></script>

<!-- Flot -->
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.js"></script>
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.spline.js"></script>
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.resize.js"></script>
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.pie.js"></script>
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.symbol.js"></script>
<script src="<?php print base_url(); ?>js/plugins/flot/jquery.flot.time.js"></script>

<!-- Peity -->
<script src="<?php print base_url(); ?>js/plugins/peity/jquery.peity.min.js"></script>
<script src="<?php print base_url(); ?>js/demo/peity-demo.js"></script>

<!-- Custom and plugin javascript -->
<script src="<?php print base_url(); ?>js/inspinia.js"></script>
<script src="<?php print base_url(); ?>js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="<?php print base_url(); ?>js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- Jvectormap -->
<script src="<?php print base_url(); ?>js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="<?php print base_url(); ?>js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

<!-- EayPIE -->
<script src="<?php print base_url(); ?>js/plugins/easypiechart/jquery.easypiechart.js"></script>

<!-- Sparkline -->
<script src="<?php print base_url(); ?>js/plugins/sparkline/jquery.sparkline.min.js"></script>

<!-- Sparkline demo data  -->
<script src="<?php print base_url(); ?>js/demo/sparkline-demo.js"></script>

<!-- iCheck -->
<script src="<?php print base_url(); ?>js/plugins/iCheck/icheck.min.js"></script>

<script>
    $(document).ready(function() {
        $('.datatables').DataTable({
            pageLength: 25,
            responsive: true,
        });

        $('.i-checks').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
        });
    });
    
</script>
</body>
</html>
