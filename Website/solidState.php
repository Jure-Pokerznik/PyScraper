<table class="table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Size</th>
                  <th>Price</th>
                  <th>PPG</th>
                  <th>Date</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $sizemin = 120;
                $sizemax = 8000;
                $pricelow = 0;
                $pricehigh = 4000;
                $pricetotallow = 0.05;
                $pricetotalhigh = 0.50;
                $datestart = 20180901;
                $dateend = 20191230;


                $result = mysqli_query($con,"SELECT * FROM ssd WHERE size BETWEEN $sizemin AND $sizemax AND 
                                                                    price BETWEEN $pricelow AND $pricehigh AND 
                                                                    priceGB BETWEEN $pricetotallow AND $pricetotalhigh AND 
                                                                    date BETWEEN $datestart AND $dateend
                                                                    ");
                while($row = mysqli_fetch_array($result))
                {
                ?>
                <tr>
                  <td><?php echo $row['name'] ?></td>
                  <td><?php echo $row['size'] ?> GB</td>
                  <td><?php echo $row['price'] ?> €</td>
                  <td><?php echo $row['priceGB']?> €/GB</td>
                  <td><?php echo $row['date'] ?></td>
                </tr>
             <?php
           }
           mysqli_close($con);
           ?>
           </tbody>
             </table>