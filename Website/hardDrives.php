<table class="table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Size</th>
                  <th>Price</th>
                  <th>PPT</th>
                  <th>Date</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $sizemin = 1;
                $sizemax = 14;
                $pricelow = 0;
                $pricehigh = 1000;
                $pricetotallow = 10;
                $pricetotalhigh = 50;
                $datestart = 20180901;
                $dateend = 20191230;


                $result = mysqli_query($con,"SELECT * FROM hdd WHERE size BETWEEN $sizemin AND $sizemax AND
                                                                    price BETWEEN $pricelow AND $pricehigh AND
                                                                    priceTB BETWEEN $pricetotallow AND $pricetotalhigh AND
                                                                    date BETWEEN $datestart AND $dateend
                                                                    ");
                while($row = mysqli_fetch_array($result))
                {
                ?>
                <tr>
                  <td><a href="<?php echo $row['href'];?>" target="_blank"><?php echo $row['name'] ?></a></td>
                  <td><?php echo $row['size'] ?> TB</td>
                  <td><?php echo $row['price'] ?> €</td>
                  <td><?php echo $row['priceTB']?> €/TB</td>
                  <td><?php echo $row['date'] ?></td>
                </tr>
             <?php
           }
           mysqli_close($con);
           ?>
           </tbody>
             </table>