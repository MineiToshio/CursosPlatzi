<?php

$file = fopen("../files/twitter.out", "r");

$ok = 0;
$no = 1;
$t  = time();

while(!feof($file)) {
  $line = fgets($file);
  if(preg_match('/^(\d+)\t(\w+)\t(.+?)\t(20\d\d\-\d\d\-\d\d)\s(\d\d:\d\d:\d\d)\t(\d+)\t(\d+).*$/S', $line, $m)) {
    echo printf("%s, %s\n", $m[1], $m[0]);
    $ok++;
  } else {
    $no++;
    echo printf("NO: %s\n", $line);
  }
}
fclose($file);

fwrite(STDERR, sprintf("ok: %d\nno: %d\ntime: %ds\nEND\n", $ok, $no, time() - $t));
