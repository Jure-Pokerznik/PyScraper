<?php
include "head.php";
include "navbar.php";
include "connect.php";
//include "content_small.php";
$sql1tb = "SELECT * FROM hdd WHERE size = '1TB'";
$sql2tb = "SELECT * FROM hdd WHERE size = '2TB'";
$sql3tb = "SELECT * FROM hdd WHERE size = '3TB'";
$sql4tb = "SELECT * FROM hdd WHERE size = '4TB'";
$sql5tb = "SELECT * FROM hdd WHERE size = '5TB'";
$sql6tb = "SELECT * FROM hdd WHERE size = '6TB'";
$sql8tb = "SELECT * FROM hdd WHERE size = '8TB'";
$sql10tb = "SELECT * FROM hdd WHERE size = '10TB'";
$sql12tb = "SELECT * FROM hdd WHERE size = '12TB'";
$result1tb = mysqli_query($con, $sql1tb);
$result2tb = mysqli_query($con, $sql2tb);
$result3tb = mysqli_query($con, $sql3tb);
$result4tb = mysqli_query($con, $sql4tb);
$result5tb = mysqli_query($con, $sql5tb);
$result6tb = mysqli_query($con, $sql6tb);
$result8tb = mysqli_query($con, $sql8tb);
$result10tb = mysqli_query($con, $sql10tb);
$result12tb = mysqli_query($con, $sql12tb);
$hdd1tb = "";
$hdd2tb = "";
$hdd3tb = "";
$hdd4tb = "";
$hdd5tb = "";
$hdd6tb = "";
$hdd8tb = "";
$hdd10tb = "";
$hdd12tb = "";

while ($row1 = mysqli_fetch_array($result1tb)){
  $hdd1tb .="{ date: '".$row1["date"]."', price:".$row1["price"]."}, ";
};
$hdd1tb = substr ($hdd1tb, 0, -2);


while ($row2 = mysqli_fetch_array($result2tb)){
  $hdd2tb .="{ date: '".$row2["date"]."', price:".$row2["price"]."}, ";
};
$hdd2tb = substr ($hdd2tb, 0, -2);


while ($row3 = mysqli_fetch_array($result3tb)){
  $hdd3tb .="{ date: '".$row3["date"]."', price:".$row3["price"]."}, ";
};
$hdd3tb = substr ($hdd3tb, 0, -2);


while ($row4 = mysqli_fetch_array($result4tb)){
  $hdd4tb .="{ date: '".$row4["date"]."', price:".$row4["price"]."}, ";
};
$hdd4tb = substr ($hdd4tb, 0, -2);


while ($row5 = mysqli_fetch_array($result5tb)){
  $hdd5tb .="{ date: '".$row5["date"]."', price:".$row5["price"]."}, ";
};
$hdd5tb = substr ($hdd5tb, 0, -2);


while ($row6 = mysqli_fetch_array($result6tb)){
  $hdd6tb .="{ date: '".$row6["date"]."', price:".$row6["price"]."}, ";
};
$hdd6tb = substr ($hdd6tb, 0, -2);


while ($row8 = mysqli_fetch_array($result8tb)){
  $hdd8tb .="{ date: '".$row8["date"]."', price:".$row8["price"]."}, ";
};
$hdd8tb = substr ($hdd8tb, 0, -2);


while ($row10 = mysqli_fetch_array($result10tb)){
  $hdd10tb .="{ date: '".$row10["date"]."', price:".$row10["price"]."}, ";
};
$hdd10tb = substr ($hdd10tb, 0, -2);


while ($row12 = mysqli_fetch_array($result12tb)){
  $hdd12tb .="{ date: '".$row12["date"]."', price:".$row12["price"]."}, ";
};
$hdd12tb = substr ($hdd12tb, 0, -2);
?>
<div class="container">
    <div class="row justify-content-md-center justify-content-sm-center justify-content-lg-center justify-content-xs-center">
        <div class="col-sm-12 col-md-12 col-lg-9">
            <h1 align="center"> Hard Drives</h1>
            <h2> 1TB</h2>
              <div id="hdd1tb" style="height: 250px;"></div>
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
include "connect.php";
//include "hardDrives.php";
?>


<?php
include "footer.php";
?>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<script>
new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd1tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd1tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd2tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd2tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd3tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd3tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd4tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd4tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd5tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd5tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd6tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd6tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd8tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd8tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd10tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd10tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});

new Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'hdd12tb',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [
      <?php echo $hdd12tb ?>
  ],
  // The name of the data record attribute that contains x-values.
  xkey: 'date',
  // A list of names of data record attributes that contain y-values.
  ykeys: ['price'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Price']
});
</script>
  
  </body>
</html>