<html>

<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css.css">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../dist/css/css.css">
</head>

<body>
  <div class="wrapper">
    <div class="sidebar">
      <div class="profile">
        <img src="../dist/img/logo.png">
      </div>
      <!--menu-->
      <ul>
        <!-- Tasks Menu -->
        <li class="">
          <!-- Menu Toggle Button -->
          <a href="home.php" class="" style="font-size:16px;">
            <i class="glyphicon glyphicon-calendar"></i> Scheduling

          </a>
        </li>
        <!-- Tasks Menu -->
        <li class="dropdown notifications-menu">
          <!-- Menu toggle button -->
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="glyphicon glyphicon-file"></i> New Entry
          </a>
          <ul class="dropdown-menu">
            <li>
              <!-- Inner Menu: contains the notifications -->
              <ul class="menu">
                <li>
                  <!-- start notification -->
                  <a href="class.php" style="color: black;">
                    <i class="glyphicon glyphicon-book text-red"></i> Class
                  </a>
                </li><!-- end notification -->


                <li>
                  <!-- start notification -->
                  <a href="subject.php" style="color: black;">
                    <i class="glyphicon glyphicon-education text-red"></i> Subject
                  </a>
                </li><!-- end notification -->

                <li>
                  <!-- start notification -->
                  <a href="room.php" style="color: black;">
                    <i class="glyphicon glyphicon-education text-red"></i> Room
                  </a>
                </li><!-- end notification -->

                <li>
                  <!-- start notification -->
                  <a href="teacher.php" style="color: black;">
                    <i class="glyphicon glyphicon-user text-red"></i> Professor
                  </a>
                </li><!-- end notification -->
                <li>
                  <!-- start notification -->
                  <a href="signatories.php" style="color: black;">
                    <i class="glyphicon glyphicon-bookmark text-red"></i> Signatories
                  </a>
                </li><!-- end notification -->
                <li>
                  <a href="curriculum.php" style="color: black;">
                    <i class="glyphicon glyphicon-education text-red"></i> Curriculum
                  </a>
                </li>
              </ul>
            </li>

          </ul>
        </li>
        <li class="dropdown notifications-menu">
          <!-- Menu toggle button -->
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="glyphicon glyphicon-wrench" style="color:white;"></i> Maintenance

          </a>
          <ul class="dropdown-menu">
            <li>
              <!-- Inner Menu: contains the notifications -->
              <ul class="menu">

                <li>
                  <!-- start notification -->
                  <a href="department.php" style="color: black;">
                    <i class="glyphicon glyphicon-home text-red"></i> Department
                  </a>
                </li><!-- end notification -->
                <li>
                  <!-- start notification -->
                  <a href="designation.php" style="color: black;">
                    <i class="glyphicon glyphicon-tag text-red"></i> Designation
                  </a>
                </li><!-- end notification -->
                <li>
                  <!-- start notification -->
                  <a href="program.php" style="color: black;">
                    <i class="glyphicon glyphicon-list text-red"></i> Program
                  </a>
                </li><!-- end notification -->

                <li>
                  <!-- start notification -->
                  <a href="salut.php" style="color: black;">
                    <i class="glyphicon glyphicon-pencil text-red"></i> Salutation
                  </a>
                </li><!-- end notification -->

                <li>
                  <!-- start notification -->
                  <a href="sy.php" style="color: black;">
                    <i class="glyphicon glyphicon-education text-red"></i> School Year
                  </a>
                </li><!-- end notification -->

                <li>
                  <!-- start notification -->
                  <a href="time.php" style="color: black;">
                    <i class="glyphicon glyphicon-calendar text-red"></i> Time
                  </a>
                </li><!-- end notification -->

              </ul>
            </li>

          </ul>
        </li>
        <li class="">
          <!-- Menu Toggle Button -->
          <a href="settings.php" style="color:#fff;" class="dropdown-toggle">
            <i class="glyphicon glyphicon-cog "></i>School Status

          </a>
        </li>
        <!-- Tasks Menu -->
        <li class="">
          <!-- Menu Toggle Button -->
          <a href="profile.php" class="dropdown-toggle">
            <i class="glyphicon glyphicon-user"></i>
            <?php echo $_SESSION['name']; ?>
          </a>
        </li>
        <li class="">
          <!-- Menu Toggle Button -->
          <a href="logout.php" class="dropdown-toggle">
            <i class="glyphicon glyphicon-off"></i> Logout

          </a>
        </li>

      </ul>
    </div><!-- /.navbar-custom-menu -->
  </div><!-- /.container-fluid -->
  </nav>

  </div>
  </div>

</html>