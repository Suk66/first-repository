<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에어비앤비 | 휴가지 숙소, 통나무집, 해변가 주택 등<</title>
<link rel="shortcut icon" sizes="76x76" type="image/png" href="https://a0.muscache.com/im/pictures/airbnb-platform-assets/AirbnbPlatformAssets-Favicons/original/0d189acb-3f82-4b2c-b95f-ad1d6a803d13.png?im_w=240">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Bundle JS (includes Popper.js) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery (requires Bootstrap's JavaScript components) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

	@import url('https://fonts.googleapis.com/css2?family=Jersey+15&family=Oswald:wght@200..700&display=swap');

	* {
	
		padding: 0px;
		margin: 0px;
		box-sizing: border-box;
	
	}

	nav {
		display: grid;
		grid-template-columns: auto auto;
		justify-content: space-between;
		
		}
	
	.logo {
		margin: 10px 0px 0px 20px;
		font-size: 35px;
		font-weight: 800px;
		
	
	
	}
	
	.menu ul {
	
		margin: 30px 0px 0px 20px;
		
		display: grid;
		grid-template-columns: auto auto auto auto;
		grid-gap: 30px;
		list-style-type: none;
		margin-right: 20px;
	
	}
	
	.menu ul a {
	
	 text-decoration: none;
	 color: black;
	 font-weight: 800px;
	}
	
	header {
    height: 880px;
    background-size: 100% 100%;
    background-image: url('<%= request.getContextPath() %>/images/background.jpg');
   
   
	}

	.search__box{
	
		width: 430px;
		
		background-color: white;
		
		display: inline-block;
		padding: 20px 30px;
		position: relative;
		top: 50px;
		left: 50px;
		
		border-radius: 6px;
		bax-shadow: 0 2px 2px 0 rgb(214, 214, 214)
	
	}
	
	.search__title{
		
		font-family: "Jersey 15", serif;
		padding: 10px 0px;
		font-size: 30px;
		font-weight: 800px;
		color: rgb(75, 75, 75);
	
	}
	
	table {
	
	width: 100%;

	}
	
	.search__sub__title{
	
		padding: 10px; 0;
		font-size: 12px;
		font-weight: 600;
		
		font-family: "Jersey 15", serif;
	
	}
	
	.search__button {
	
		display: grid;
		justify-content: end;
		padding: 15px 0;
	
	}
	
	
	.search__input {
	
		height: 45px;
		width: 100%;
		color: rgb(100, 98, 98);
		font-size: 15px;
		border: 1px solid rgb(230, 227, 227);
		
		font-family: "Jersey 15", serif;
	
	}
	
	.search__button button {
	
		cursor: pointer;
		
	
	}
	
	main {
		margin: 30px 80px; /* 세로 가로 */
	}
	
	section {
	
		margin: 30px 0;
	
	}
	
	
	
	
	.sec__title {
	
		font-size: 25px;
		font-weight: 800;
		color: rgb(66, 66, 66);
		margin-bottom: 20px;
	
	}
	
	.sec__title6 {
		
		font-size: 25px;
		font-weight: 800;
		color: rgb(66, 66, 66);
	
	}
	
	.sec__title7 {
		
		font-size: 25px;
		font-weight: 800;
		color: rgb(66, 66, 66);
	
	}
	
	.card__box {
	
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr;
		grid-column-gap: 10px;
		
	}
	
	.card__img1 {
	
		background-image: url('<%=request.getContextPath() %>/images/card1.jpg');
		height: 70px;
		background-size: 100% 100%;
	
	}
	
	.card1 {
	
		display: grid;
		grid-template-columns: 1fr 2fr;
		border: 1px solid rgb(210, 210, 210);
		border-radius: 6px;
		box-shadow: 0px 3px 3px 0px rgb(170, 170, 170);
		
	}
	.card1__content {
		display: grid;
		justify-content: center;
		align-items: center;
		margin-left: 10px;
		font-weight: 600;
	}
	
	.card__img2 {
	
		background-image: url('<%=request.getContextPath() %>/images/card2.jpg');
		height: 70px;
		background-size: 100% 100%;
	
	}
	
	.card2 {
	
		display: grid;
		grid-template-columns: 1fr 2fr;
		border: 1px solid rgb(210, 210, 210);
		border-radius: 6px;
		box-shadow: 0px 3px 3px 0px rgb(170, 170, 170);
		
	}
	.card2__content {
		display: grid;
		justify-content: center;
		align-items: center;
		margin-left: 10px;
		font-weight: 600;
	}
	
	.card__img3 {
	
		background-image: url('<%=request.getContextPath() %>/images/card3.jpg');
		height: 70px;
		background-size: 100% 100%;
	
	}
	
	.card3 {
	
		display: grid;
		grid-template-columns: 1fr 2fr;
		border: 1px solid rgb(210, 210, 210);
		border-radius: 6px;
		box-shadow: 0px 3px 3px 0px rgb(170, 170, 170);
		
	}
	.card3__content {
		display: grid;
		justify-content: center;
		align-items: center;
		margin-left: 10px;
		font-weight: 600;
	}
	
	.card__img4 {
	
		background-image: url('<%=request.getContextPath() %>/images/card4.jpg');
		height: 70px;
		background-size: 100% 100%;
	
	}
	
	.card4 {
	
		display: grid;
		grid-template-columns: 1fr 2fr;
		border: 1px solid rgb(210, 210, 210);
		border-radius: 6px;
		box-shadow: 0px 3px 3px 0px rgb(170, 170, 170);
		
	}
	.card4__content {
		display: grid;
		justify-content: center;
		align-items: center;
		margin-left: 10px;
		font-weight: 600;
	}
	
	.ad1 {
	
		background-image: url('<%=request.getContextPath() %>/images/ad1.jpg');
		height: 350px;
		background-size: 100% 100%;
		border-radius: 20px;
	}
	
	.ad2 {
		
		background-image: url('<%=request.getContextPath() %>/images/ad2.png');
		height: 300px;
		background-size: 100% 100%;
		margin-top: 20px;
		
	
	}
	
	
	.choo__box {
	
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
		grid-column-gap: 10px;
	
	}
	
	.choo__img1 {
	
		background-image: url('<%=request.getContextPath() %>/images/choo1.png');
		background-size: 100% 100%;
		height: 250px;
	}
	
	.choo__img2 {
	
		background-image: url('<%=request.getContextPath() %>/images/choo2.png');
		background-size: 100% 100%;
		height: 250px;
	}
	
	.choo__img3 {
	
		background-image: url('<%=request.getContextPath() %>/images/choo3.png');
		background-size: 100% 100%;
		height: 250px;
	}
	
	.choo__img4 {
	
		background-image: url('<%=request.getContextPath() %>/images/choo4.png');
		background-size: 100% 100%;
		height: 250px;
	}
	
	.choo__img5 {
	
		background-image: url('<%=request.getContextPath() %>/images/choo5.png');
		background-size: 100% 100%;
		height: 250px;
	}
	
	.home__box {
		display: grid;
		grid-template-columns: 1fr 1fr 1fr 1fr;
		grid-gap: 10px;
		
		margin-top: 20px;
		
	
	}
	
	.home__img1 {
	
		background-image: url('<%=request.getContextPath() %>/images/home1.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img2 {
	
		background-image: url('<%=request.getContextPath() %>/images/home2.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img3 {
	
		background-image: url('<%=request.getContextPath() %>/images/home3.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img4 {
	
		background-image: url('<%=request.getContextPath() %>/images/home4.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img5 {
	
		background-image: url('<%=request.getContextPath() %>/images/home5.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img6 {
	
		background-image: url('<%=request.getContextPath() %>/images/home6.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img7 {
	
		background-image: url('<%=request.getContextPath() %>/images/home7.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.home__img8 {
	
		background-image: url('<%=request.getContextPath() %>/images/home8.png');
		height: 180px;
		background-size: 100% 100%;
	}
	
	.info1 {
	
		margin: 5px 0;
		font-size: 13px;
		color: gray;
	}
	
	.info2 {
	
		font-size: 18px;
		font-weight: 600;
		color: rgb(60, 60, 60);
	}
	
	.count, .type {
	
		font-size: 12px;
	
	}
	
	
	
	



</style>




</head>
<body>

	<header>
		<nav>
		<div class="logo">
		<svg width="102" height="32" color="red" style="display: inline-block;"><path d="M29.3864 22.7101C29.2429 22.3073 29.0752 21.9176 28.9157 21.5565C28.6701 21.0011 28.4129 20.4446 28.1641 19.9067L28.1444 19.864C25.9255 15.0589 23.5439 10.1881 21.0659 5.38701L20.9607 5.18316C20.7079 4.69289 20.4466 4.18596 20.1784 3.68786C19.8604 3.0575 19.4745 2.4636 19.0276 1.91668C18.5245 1.31651 17.8956 0.833822 17.1853 0.502654C16.475 0.171486 15.7005 -9.83959e-05 14.9165 4.23317e-08C14.1325 9.84805e-05 13.3581 0.171877 12.6478 0.503224C11.9376 0.834571 11.3088 1.31742 10.8059 1.91771C10.3595 2.46476 9.97383 3.05853 9.65572 3.68858C9.38521 4.19115 9.12145 4.70278 8.8664 5.19757L8.76872 5.38696C6.29061 10.1884 3.90903 15.0592 1.69015 19.8639L1.65782 19.9338C1.41334 20.463 1.16057 21.0102 0.919073 21.5563C0.75949 21.9171 0.592009 22.3065 0.448355 22.7103C0.0369063 23.8104 -0.094204 24.9953 0.0668098 26.1585C0.237562 27.334 0.713008 28.4447 1.44606 29.3804C2.17911 30.3161 3.14434 31.0444 4.24614 31.4932C5.07835 31.8299 5.96818 32.002 6.86616 32C7.14824 31.9999 7.43008 31.9835 7.71027 31.9509C8.846 31.8062 9.94136 31.4366 10.9321 30.8639C12.2317 30.1338 13.5152 29.0638 14.9173 27.5348C16.3194 29.0638 17.6029 30.1338 18.9025 30.8639C19.8932 31.4367 20.9886 31.8062 22.1243 31.9509C22.4045 31.9835 22.6864 31.9999 22.9685 32C23.8664 32.002 24.7561 31.8299 25.5883 31.4932C26.6901 31.0444 27.6554 30.3161 28.3885 29.3804C29.1216 28.4447 29.5971 27.3341 29.7679 26.1585C29.9287 24.9952 29.7976 23.8103 29.3864 22.7101ZM14.9173 24.377C13.1816 22.1769 12.0678 20.1338 11.677 18.421C11.5169 17.7792 11.4791 17.1131 11.5656 16.4573C11.6339 15.9766 11.8105 15.5176 12.0821 15.1148C12.4163 14.6814 12.8458 14.3304 13.3374 14.0889C13.829 13.8475 14.3696 13.7219 14.9175 13.7219C15.4655 13.722 16.006 13.8476 16.4976 14.0892C16.9892 14.3307 17.4186 14.6817 17.7528 15.1151C18.0244 15.5181 18.201 15.9771 18.2693 16.4579C18.3556 17.114 18.3177 17.7803 18.1573 18.4223C17.7661 20.1349 16.6526 22.1774 14.9173 24.377ZM27.7406 25.8689C27.6212 26.6908 27.2887 27.4674 26.7762 28.1216C26.2636 28.7759 25.5887 29.2852 24.8183 29.599C24.0393 29.9111 23.1939 30.0217 22.3607 29.9205C21.4946 29.8089 20.6599 29.5239 19.9069 29.0824C18.7501 28.4325 17.5791 27.4348 16.2614 25.9712C18.3591 23.3846 19.669 21.0005 20.154 18.877C20.3723 17.984 20.4196 17.0579 20.2935 16.1475C20.1791 15.3632 19.8879 14.615 19.4419 13.9593C18.9194 13.2519 18.2378 12.6768 17.452 12.2805C16.6661 11.8842 15.798 11.6777 14.9175 11.6777C14.0371 11.6777 13.1689 11.8841 12.383 12.2803C11.5971 12.6765 10.9155 13.2515 10.393 13.9589C9.94707 14.6144 9.65591 15.3624 9.5414 16.1465C9.41524 17.0566 9.4623 17.9822 9.68011 18.8749C10.1648 20.9993 11.4748 23.384 13.5732 25.9714C12.2555 27.4348 11.0845 28.4325 9.92769 29.0825C9.17468 29.5239 8.34007 29.809 7.47395 29.9205C6.64065 30.0217 5.79525 29.9111 5.0162 29.599C4.24581 29.2852 3.57092 28.7759 3.05838 28.1217C2.54585 27.4674 2.21345 26.6908 2.09411 25.8689C1.97932 25.0334 2.07701 24.1825 2.37818 23.3946C2.49266 23.0728 2.62663 22.757 2.7926 22.3818C3.0274 21.851 3.27657 21.3115 3.51759 20.7898L3.54996 20.7197C5.75643 15.9419 8.12481 11.0982 10.5894 6.32294L10.6875 6.13283C10.9384 5.64601 11.1979 5.14267 11.4597 4.6563C11.7101 4.15501 12.0132 3.68171 12.3639 3.2444C12.6746 2.86903 13.0646 2.56681 13.5059 2.35934C13.9473 2.15186 14.4291 2.04426 14.9169 2.04422C15.4047 2.04418 15.8866 2.15171 16.3279 2.35911C16.7693 2.56651 17.1593 2.86867 17.4701 3.24399C17.821 3.68097 18.1242 4.15411 18.3744 4.65538C18.6338 5.13742 18.891 5.63623 19.1398 6.11858L19.2452 6.32315C21.7097 11.0979 24.078 15.9415 26.2847 20.7201L26.3046 20.7631C26.5498 21.2936 26.8033 21.8419 27.042 22.382C27.2082 22.7577 27.3424 23.0738 27.4566 23.3944C27.7576 24.1824 27.8553 25.0333 27.7406 25.8689Z" fill="currentcolor"></path><path d="M41.6847 24.1196C40.8856 24.1196 40.1505 23.9594 39.4792 23.6391C38.808 23.3188 38.2327 22.8703 37.7212 22.2937C37.2098 21.7172 36.8263 21.0445 36.5386 20.3078C36.2509 19.539 36.123 18.7062 36.123 17.8093C36.123 16.9124 36.2829 16.0475 36.5705 15.2787C36.8582 14.51 37.2737 13.8373 37.7852 13.2287C38.2966 12.6521 38.9039 12.1716 39.6071 11.8513C40.3103 11.531 41.0455 11.3708 41.8765 11.3708C42.6756 11.3708 43.3788 11.531 44.0181 11.8833C44.6574 12.2037 45.1688 12.6841 45.5843 13.2927L45.6802 11.7232H48.6209V23.7992H45.6802L45.5843 22.0375C45.1688 22.6781 44.6254 23.1906 43.9222 23.575C43.2829 23.9274 42.5158 24.1196 41.6847 24.1196ZM42.4519 21.2367C43.0272 21.2367 43.5386 21.0765 44.0181 20.7882C44.4656 20.4679 44.8172 20.0515 45.1049 19.539C45.3606 19.0265 45.4884 18.4179 45.4884 17.7452C45.4884 17.0725 45.3606 16.4639 45.1049 15.9514C44.8492 15.4389 44.4656 15.0225 44.0181 14.7022C43.5706 14.3818 43.0272 14.2537 42.4519 14.2537C41.8765 14.2537 41.3651 14.4139 40.8856 14.7022C40.4382 15.0225 40.0866 15.4389 39.7989 15.9514C39.5432 16.4639 39.4153 17.0725 39.4153 17.7452C39.4153 18.4179 39.5432 19.0265 39.7989 19.539C40.0546 20.0515 40.4382 20.4679 40.8856 20.7882C41.3651 21.0765 41.8765 21.2367 42.4519 21.2367ZM53.6392 8.4559C53.6392 8.80825 53.5753 9.12858 53.4154 9.38483C53.2556 9.64109 53.0319 9.86531 52.7442 10.0255C52.4565 10.1856 52.1369 10.2497 51.8173 10.2497C51.4976 10.2497 51.178 10.1856 50.8903 10.0255C50.6026 9.86531 50.3789 9.64109 50.2191 9.38483C50.0592 9.09654 49.9953 8.80825 49.9953 8.4559C49.9953 8.10355 50.0592 7.78323 50.2191 7.52697C50.3789 7.23868 50.6026 7.04649 50.8903 6.88633C51.178 6.72617 51.4976 6.66211 51.8173 6.66211C52.1369 6.66211 52.4565 6.72617 52.7442 6.88633C53.0319 7.04649 53.2556 7.27072 53.4154 7.52697C53.5433 7.78323 53.6392 8.07152 53.6392 8.4559ZM50.2191 23.7672V11.6911H53.4154V23.7672H50.2191V23.7672ZM61.9498 14.8623V14.8943C61.79 14.8303 61.5982 14.7982 61.4383 14.7662C61.2466 14.7342 61.0867 14.7342 60.895 14.7342C60 14.7342 59.3287 14.9904 58.8812 15.535C58.4018 16.0795 58.178 16.8483 58.178 17.8413V23.7672H54.9817V11.6911H57.9223L58.0182 13.517C58.3379 12.8763 58.7214 12.3958 59.2648 12.0435C59.7762 11.6911 60.3835 11.531 61.0867 11.531C61.3105 11.531 61.5342 11.563 61.726 11.595C61.8219 11.6271 61.8858 11.6271 61.9498 11.6591V14.8623ZM63.2283 23.7672V6.72617H66.4247V13.2287C66.8722 12.6521 67.3836 12.2036 68.0229 11.8513C68.6622 11.531 69.3654 11.3388 70.1645 11.3388C70.9635 11.3388 71.6987 11.4989 72.3699 11.8193C73.0412 12.1396 73.6165 12.588 74.128 13.1646C74.6394 13.7412 75.0229 14.4139 75.3106 15.1506C75.5983 15.9194 75.7261 16.7522 75.7261 17.6491C75.7261 18.546 75.5663 19.4109 75.2787 20.1796C74.991 20.9484 74.5755 21.6211 74.064 22.2297C73.5526 22.8063 72.9453 23.2867 72.2421 23.6071C71.5389 23.9274 70.8037 24.0875 69.9727 24.0875C69.1736 24.0875 68.4704 23.9274 67.8311 23.575C67.1918 23.2547 66.6804 22.7742 66.2649 22.1656L66.169 23.7352L63.2283 23.7672ZM69.3973 21.2367C69.9727 21.2367 70.4841 21.0765 70.9635 20.7882C71.411 20.4679 71.7626 20.0515 72.0503 19.539C72.306 19.0265 72.4339 18.4179 72.4339 17.7452C72.4339 17.0725 72.306 16.4639 72.0503 15.9514C71.7626 15.4389 71.411 15.0225 70.9635 14.7022C70.5161 14.3818 69.9727 14.2537 69.3973 14.2537C68.822 14.2537 68.3106 14.4139 67.8311 14.7022C67.3836 15.0225 67.032 15.4389 66.7443 15.9514C66.4886 16.4639 66.3608 17.0725 66.3608 17.7452C66.3608 18.4179 66.4886 19.0265 66.7443 19.539C67 20.0515 67.3836 20.4679 67.8311 20.7882C68.3106 21.0765 68.822 21.2367 69.3973 21.2367ZM76.9408 23.7672V11.6911H79.8814L79.9773 13.2607C80.3289 12.6841 80.8084 12.2357 81.4157 11.8833C82.023 11.531 82.7262 11.3708 83.5253 11.3708C84.4203 11.3708 85.1874 11.595 85.8267 12.0115C86.4979 12.4279 87.0094 13.0365 87.361 13.8053C87.7126 14.574 87.9043 15.5029 87.9043 16.56V23.7992H84.708V16.9764C84.708 16.1436 84.5162 15.4709 84.1326 14.9904C83.7491 14.51 83.2376 14.2537 82.5664 14.2537C82.0869 14.2537 81.6714 14.3498 81.2878 14.574C80.9362 14.7982 80.6486 15.0865 80.4248 15.503C80.2011 15.8873 80.1052 16.3678 80.1052 16.8483V23.7672H76.9408V23.7672ZM89.5025 23.7672V6.72617H92.6989V13.2287C93.1464 12.6521 93.6578 12.2036 94.2971 11.8513C94.9364 11.531 95.6396 11.3388 96.4387 11.3388C97.2378 11.3388 97.9729 11.4989 98.6442 11.8193C99.3154 12.1396 99.8907 12.588 100.402 13.1646C100.914 13.7412 101.297 14.4139 101.585 15.1506C101.873 15.9194 102 16.7522 102 17.6491C102 18.546 101.841 19.4109 101.553 20.1796C101.265 20.9484 100.85 21.6211 100.338 22.2297C99.8268 22.8063 99.2195 23.2867 98.5163 23.6071C97.8131 23.9274 97.0779 24.0875 96.2469 24.0875C95.4478 24.0875 94.7446 23.9274 94.1053 23.575C93.466 23.2547 92.9546 22.7742 92.5391 22.1656L92.4432 23.7352L89.5025 23.7672ZM95.7035 21.2367C96.2788 21.2367 96.7903 21.0765 97.2697 20.7882C97.7172 20.4679 98.0688 20.0515 98.3565 19.539C98.6122 19.0265 98.7401 18.4179 98.7401 17.7452C98.7401 17.0725 98.6122 16.4639 98.3565 15.9514C98.1008 15.4389 97.7172 15.0225 97.2697 14.7022C96.8222 14.3818 96.2788 14.2537 95.7035 14.2537C95.1281 14.2537 94.6167 14.4139 94.1373 14.7022C93.6898 15.0225 93.3382 15.4389 93.0505 15.9514C92.7628 16.4639 92.6669 17.0725 92.6669 17.7452C92.6669 18.4179 92.7948 19.0265 93.0505 19.539C93.3062 20.0515 93.6898 20.4679 94.1373 20.7882C94.6167 21.0765 95.0962 21.2367 95.7035 21.2367Z" fill="currentcolor" color="red"></path></svg>
		</div>
		<div class="menu">
			<ul>
				<li><a href="#">호스트가 되어 보세요.</a></li>
				<li><a href="#">도움말</a></li>
				<li><a href="#">회원가입</a></li>
				<li><a href="<%=request.getContextPath() %>/admin_login.go">로그인</a></li>
			</ul>
		
		</div>
		</nav>
		<section>
		<div class="search__box">
			<div class="search__title">
				특색 있는 숙소와 즐길<br /> 거리를 예약하세요.
			</div>
			<table>
				<tr>
					<td colspan="2" class="search__sub__title">목적지</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input class="search__input" type="text" placeholder="  모든 위치" />
					
					</td>
				</tr>
				
				<tr>
					<td class="search__sub__title">체크인</td>
					<td class="search__sub__title">체크아웃</td>	
				</tr>
				
				<tr>
					<td> <input class="search__input" type="date" /></td>
					<td> <input class="search__input" type="date" /></td>
				</tr>
				
				<tr>
					<td colspan="2" class="search__sub__title">인원</td>
				
				</tr>
				
				<tr>
					<td colspan="2">
						<select class="search__input">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						</select>
					</td>
				</tr>
			</table>
			
			<div class="search__button">
				<button type="button" class="btn btn-danger">검색</button>
			</div>
			
			
		
		</div>
		
		
		</section>
	
	</header>
	
	
	<main>
		<section>
		<div class="sec__title">에어비앤비 둘러보기</div>
		
		<div class="card__box">
			<div class="card1">
				<div class="card__img1"></div>
				<div class="card1__content">숙소 및 부티크 호텔</div>
			</div>
				
			<div class="card2">
				<div class="card__img2"></div>
				<div class="card2__content">트립</div>
			</div>
				
			<div class="card3">
				<div class="card__img3"></div>
				<div class="card3__content">어드벤쳐</div>
			</div>
			
			<div class="card4">
				<div class="card__img4"></div>
				<div class="card4__content">레스토랑</div>
			</div>
		
		</div>
		
		</section>
		
		<section>
			<div class="ad1"></div>
		
		</section>
	
		<section>
			<div class="sec__title">추천 여행지</div>
			<div class="choo__box">
				<div class="choo__img1"></div>
				<div class="choo__img2"></div>
				<div class="choo__img3"></div>
				<div class="choo__img4"></div>
				<div class="choo__img5"></div>
			</div>
		</section>
		
		<section>
			<div class="sec__title6">에어비앤비 플러스를 만나보세요!</div>
			<div class="sec__content">&nbsp;퀄리티와 인테리어 디자인이 검증된 숙소 컬렉션</div>
			<div class="ad2"></div>
		</section>
		
		<section>
			<div class="sec__title7">전세계 숙소</div>
			<div class="home__box">
			
				<div class="home">
					<div class="home__img1"></div>
					<div class="home__info">
						<div class="info1">오두막 ・ BALIAN BEACH, BALI</div>
						<div class="info2">BALIAN TREEHOUSE w beautifull pool</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">185</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img2"></div>
					<div class="home__info">
						<div class="info1">키클라데스 주택 ・ 이아(OIA)</div>
						<div class="info2">Unique Architecture Cave House</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">188</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img3"></div>
					<div class="home__info">
						<div class="info1">성 ・ 트웬티나인 팜스(TWENTYNINE PALMS)</div>
						<div class="info2">Tile House</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">367</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img4"></div>
					<div class="home__info">
						<div class="info1">검증됨 ・ 케이프타운</div>
						<div class="info2">Modern, Chic Penthouse with Moutain, City & Sea Views</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">177</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img5"></div>
					<div class="home__info">
						<div class="info1">아파트 전체 ・ 마드리드(MADRID)</div>
						<div class="info2">솔광장에 위치한 개인 스튜디오</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">459</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img6"></div>
					<div class="home__info">
						<div class="info1">집 전체 ・ HUMAC</div>
						<div class="info2">Vacation house in etno-eco village Humac</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">119</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img7"></div>
					<div class="home__info">
						<div class="info1">개인실 ・ 마라케시</div>
						<div class="info2">The Cozy Palace</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">559</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
				
				<div class="home">
					<div class="home__img8"></div>
					<div class="home__info">
						<div class="info1">게스트용 별채 전체 ・ 로스엔젤레스</div>
						<div class="info2">Private Pool House with Amaging Views!</div>
						<div class="info3">
							<span class="star">⭐︎⭐︎⭐︎⭐︎⭐︎</span>
							<span class="count">170</span>
							<span class="type">슈퍼호스트</span>
						</div>
					</div>
				</div>
			
			</div>
		
		</section>
	
	
	</main>
	
	</body>
	</html>
	
	
