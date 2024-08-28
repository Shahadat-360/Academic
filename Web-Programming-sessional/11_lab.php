

<?php
    $sum = null;
    $opa = null;
    $x   = 0;
    $y   = 0;

    if ( isset( $_POST["ADD"] ) ) {
        $x   = $_POST['fnum'];
        $y   = $_POST['snum'];
        $opa = $_POST["ADD"];
        $sum = $x + $y;
    } else if ( isset( $_POST["SUB"] ) ) {
        $x   = $_POST['fnum'];
        $y   = $_POST['snum'];
        $opa = $_POST["SUB"];
        $sum = $x - $y;
    } else if ( isset( $_POST["MUL"] ) ) {
        $x   = $_POST['fnum'];
        $y   = $_POST['snum'];
        $opa = $_POST["MUL"];
        $sum = $x * $y;
    } else if ( isset( $_POST["DIV"] ) ) {
        $x   = $_POST['fnum'];
        $y   = $_POST['snum'];
        $opa = $_POST["DIV"];
        $sum = $x / $y;
        $sum = number_format( $sum, 3 ); //this method will show only 3 number after float point
    }
?>
<html>
<head>
 <title>O<i class="fa fa-krw" aria-hidden="true"></i></title>
</head>
<body>
<div class="cal">
<center>
    Calculator
</center>
<hr/>
</div>
<div class="div1">

  <label>Result </label> <hr/>

  <textarea rows="3"cols="33">
  <?php
      if ( $sum == null ) {
          echo "$sum";
      } else {
          echo " $x $opa $y=$sum";
      }
5 6
  ?>
  </textarea>
 </div>
 <div class="div2">
 <div class="vl">
<form method="post" action="">
<label>Input </label> <hr/>
Enter 1st number <input type="text" name="fnum" required/><br/><br/>
Enter 2nd number <input type="text" name="snum" required/><hr/>
<input type="submit" name="ADD" value="ADD"/>
<input type="submit" name="SUB" value="SUB"/>
<input type="submit" name="MUL" value="MUL"/>
<input type="submit" name="DIV" value="DIV"/>
</form>
</div>
</div>
</body>
</html>