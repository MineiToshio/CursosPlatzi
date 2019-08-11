<?php

$file = fopen("../files/twitter.out", "r");

$ok = 0;
$no = 1;

while(!feof($file)) {
  $line = fgets($file);
  if(preg_match('/^(\d+)\t(\w+)\t(.+?)\t(20\d\d\-\d\d\-\d\d)\s(\d\d:\d\d:\d\d)\t(\d+)\t(\d+).*$/', $line, $m)) {
    echo printf("%s, %s\n", $m[1], $m[0]);
  } else {
    echo printf("NO: %s\n", $line);
  }
}
fclose($file);

fwrite(STDOUT, fprintf("ok: %d\nno: $d\ntime: %ds\nEND", $ok, $no, 10));
