<?php 
require __DIR__. "/_connect_db.php";

$qs = []; // query string

$perPage = 12;
$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$cate = isset($_GET['cate']) ? intval($_GET['cate']) : 0;
$colorChose = isset($_GET['colorChose']) ? intval($_GET['colorChose']) : 0;
$style = isset($_GET['style']) ? intval($_GET['style']) : 0;
$prices = isset($_GET['prices']) ? $_GET['prices'] : ',';
$prices = explode(',', $prices );

$orderBy = isset($_GET['orderBy']) ? $_GET['orderBy'] : '';

$output = [
    'perPage' => $perPage,
    'page' => $page,
    'totalRows' => 0,
    'totalPages' => 0,
    'rows' => [], // 該頁的資料
    'pageBtns' => [],
];



$where = ' WHERE 1 ';

if(!empty($cate)){
    $where .= " AND `category`=$cate ";
}
if(!empty($colorChose)){
    $where .= " AND `color`=$colorChose ";
}
if(!empty($style)){
    $where .= " AND `style`=$style ";
}
if(!empty($prices[1])){
    $minPrice = intval($prices[0]);
    $maxPrice = intval($prices[1]);

    $where .= " AND `price` >= $minPrice AND `price` <= $maxPrice ";

}


switch($orderBy){
    case 'timeNew':
        $orderBy1 = ' ORDER BY `time` DESC ';
    break;
    case 'timeOld':
        $orderBy1 = ' ORDER BY `time` ASC ';
    break;
}


$rows = [];
$totalPages = 0;
$t_sql = "SELECT COUNT(sid) FROM `product` $where ";
$totalRows = $pdo->query($t_sql)->fetch(PDO::FETCH_NUM)[0];

// echo $t_sql;
// echo "\n";

$output =[
    'perPage' => $perPage,
    'page' => $page,
    'totalRows' => 0,
    'totalPages' => 0,
    'rows' =>[], // 該頁的資料
    'pagesBtns' => [],
];

if($totalRows>0) {
    $totalPages = ceil($totalRows / $perPage);
    if ($page < 1) $page = 1;



    if ($page > $totalPages) {
        $page = $totalPages;
    }if($totalPages<=5){
        for($i=1; $i<=$totalPages; $i++){
            $pageBtns[] = $i;
        }
    } else {
        $tmpAr1 = [];
        for($i=$page-2; $i<=$totalPages; $i++){
            if($i>=1) {
                $tmpAr1[] = $i;
            }
            if(count($tmpAr1)>=5){
                break;
            }
        }
        $tmpAr2 = [];
        for ($i = $page + 2; $i >= 1; $i--) {
            if ($i <= $totalPages) {
                array_unshift($tmpAr2, $i);
            }
            if (count($tmpAr2) >= 5) {
                break;
            }
        }
        $pageBtns = count($tmpAr1) > count($tmpAr2) ? $tmpAr1 : $tmpAr2;
    }
    
    $sql = sprintf("SELECT * FROM product $where LIMIT %s, %s" , ($page-1)*$perPage, $perPage);
    // echo $sql;
    // exit;
    $stmt = $pdo->query($sql);

    $output['page'] = $page;
    $output['totalRows'] = $totalRows;
    $output['totalPages'] = $totalPages;
    $output['rows'] = $stmt->fetchAll();
    $output['pageBtns'] = $pageBtns;
    
}
header('Content-Type: application/json');
echo json_encode($output, JSON_UNESCAPED_UNICODE);
