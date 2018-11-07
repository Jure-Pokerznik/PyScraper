<?php
include "head.php";
include "navbar.php";
include "connect.php";
//include "content_small.php";


$test = "SELECT * FROM cpu WHERE date = CURDATE()";

print $test; 


?>
<div class="container">
    <div class="row justify-content-md-center justify-content-sm-center justify-content-lg-center justify-content-xs-center">
        <div class="col-sm-12 col-md-12 col-lg-9">
            <h1 align="center"> Processors</h1>
            <h2>AMD 2 Thread</h2>
              <div id="amd2" style="height: 250px;"></div>
              <?php print $amd2 ?>
            <h2> 2TB</h2>
              <div id="hdd2tb" style="height: 250px;"></div>
            <h2> 3TB</h2>
              <div id="hdd3tb" style="height: 250px;"></div>
            <h2> 4TB</h2>
              <div id="hdd4tb" style="height: 250px;"></div>
            <h2> 5TB</h2>
              <div id="hdd5tb" style="height: 250px;"></div>
            <h2> 6TB</h2>
              <div id="hdd6tb" style="height: 250px;"></div>
            <h2> 8TB</h2>
              <div id="hdd8tb" style="height: 250px;"></div>
            <h2> 10TB</h2>
              <div id="hdd10tb" style="height: 250px;"></div>
            <h2> 12TB</h2>
              <div id="hdd12tb" style="height: 250px;"></div>
        </div>
    </div>
</div>

<?php
include "footer.php";
?>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<script>
new Morris.Line({

  element: 'amd2',
  data: [
      <?php echo $amd2 ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
<script>
new Morris.Line({

  element: 'hdd2tb',
  data: [
      <?php echo $hdd2tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd3tb',
  data: [
      <?php echo $hdd3tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd4tb',
  data: [
      <?php echo $hdd4tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd5tb',
  data: [
      <?php echo $hdd5tb ?>
  ],
  
  xkey: 'date',
  ykeys: ['price', 'price2'],
  labels: ['Price', 'Price2']
});

new Morris.Line({

  element: 'hdd6tb',
  data: [
      <?php echo $hdd6tb ?>
  ],
  
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd8tb',
  data: [
      <?php echo $hdd8tb ?>
  ],
  
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd10tb',
  data: [
      <?php echo $hdd10tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});

new Morris.Line({

  element: 'hdd12tb',
  data: [
      <?php echo $hdd12tb ?>
  ],
  xkey: 'date',
  ykeys: ['price'],
  labels: ['Price']
});
</script>
  </body>
</html>