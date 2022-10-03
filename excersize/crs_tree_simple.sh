#!/bin/bash

makePyramid()
{
  n=$1;

  for((i=1;i<=n - 5;i++))
  do
      for((k=i;k<=n + 2;k++))
      do
        echo -ne "  ";
      done
      echo -ne " ";
      for((j=1;j<=2*i - 1;j++))
      do
      echo -ne "*";
      done
      for((z=2;z<2*i;z++))
      do
      echo -ne "*";
      done
      echo;
  done
  
  for((i=1;i<=n - 3;i++))
  do
      for((k=i;k<=n + 1;k++))
      do
        echo -ne "  ";
      done
      for((j=0;j<=2*i + 2;j++))
      do
      echo -ne "*";
      done
      for((z=0;z<2*i;z++))
      do
      echo -ne "*";
      done
      echo;
  done

  for((i=1;i<=n;i++))
  do
      for((k=i;k<=n + 1;k++))
      do
        echo -ne "  ";
      done
      echo -ne "";
      for((j=0;j<=2*i - 1;j++))
      do
      echo -ne "*";
      done
      for((z=-5;z<2*i;z++))
      do
      echo -ne "*";
      done
      echo;
  done

  for((i=1;i<=n - 5;i++))
  do
      for((k=1;k<=n + 2;k++))
      do
        echo -ne "  ";
      done
      for((j=0;j<=5;j++))
      do
      echo -ne "*";
      done
      echo -ne "  ";
      echo;
  done

  
}

makePyramid 10
