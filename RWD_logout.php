<?php
session_start();

// 清除某個 session 變數
unset($_SESSION['member']);

// session_destroy(); // 清除所有的 session

header('Location: RWD_index.php');




