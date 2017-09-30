<?php
/**
*	index.php
*
*	For documentation see index.md file
*/

/*
	Check if SSL

if ($_SERVER['HTTPS'] != "on") {
    $url = "https://". $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI'];
    header("Location: $url");
    exit;
}
*/

require_once "settings/config.inc";

//require_once "lib/model-base.class.inc";

$pages  = array();

if (isset($_GET['param'])) {
	$paramArray = explode("/", $_GET['param']);

	$param = $paramArray[0];
} else {
	$param = 'home';
}

/*
if ($param == "clean") {
	foreach($_COOKIE as $key => $value) {
		setcookie($key, $value, time()-10000, "/");
	}
	//echo "Cleaning Done"; die("Clean");
	header("Location: http://dev.bappnet.se/dm");
	die();
}

if (strpos($param, '@', 1) > 1) {
	$email = $param;
	$param = 'group-signin';
	// Log out
	foreach($_COOKIE as $key => $value) {
		setcookie($key, $value, time()-10000, "/");
	}
}
*/

/*
Class Seo2 extends ModelBase {
	public function getPage($seo_url) {
		return $this->get("SELECT * FROM page WHERE seo_url='" . $seo_url . "'");
	}

}
//echo 'url:' . $param; die('');

$seo2Obj = new SEO2(DB_HOST, DB_NAME, DB_USER, DB_PASS);
$page = $seo2Obj->getPage($param);
*/

/*
if ($page == false) {
	$param = "home";
}
*/

ob_start();

require_once "header.inc";
require_once "templates/" . $param . ".tpl"; ?>


</div>
</body>

</html>

<?php
    ob_end_flush();
?>
