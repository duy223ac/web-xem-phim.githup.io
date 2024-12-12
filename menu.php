<?php
include('module/admin/modules/config.php'); // Kết nối đến cơ sở dữ liệu
$sql = "SELECT * FROM loaiphim"; // Truy vấn tất cả thể loại phim
$query = mysqli_query($connect, $sql);

if (!$query) {
    die("Query failed: " . mysqli_error($connect)); // Thêm xử lý lỗi
}
?>

<div class="menu-ngang">	
	<div class="container-fluid cf-content">
		<div class="container">
			<div class="row ds-menu">
				<div class="col-md-12 col-xs-12 col-sm-12 hidden-xs hidden-sm">
					<div id="menu">
						<ul data-spy="affix" data-offset-top="30">
							<li id="home"><a href="index.php"><i class="fas fa-home"></i></a></li>
							<li>
								<a><i class="far fa-clone"></i> Thể loại</a>
								<ul class="sub-menu">
									<?php while ($array = mysqli_fetch_assoc($query)) { ?> <!-- Sử dụng mysqli_fetch_assoc -->
										<li><a href="index.php?xem=pagephim&id_loaiphim=<?php echo $array['id_loaiphim']; ?>"><?php echo $array['tênloai_phim']; ?></a></li>
									<?php } ?>
								</ul>
							</li>
							<!-- Các mục menu khác -->
						</ul>
					</div>
				</div>	
			</div>	
		</div>
	</div>
</div> <!-- kết thúc menu -->