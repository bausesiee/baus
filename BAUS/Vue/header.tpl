
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link	rel="stylesheet"
		type="text/css"
		href="./vue/styleCSS/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> <!-- remplacer utf-8 par iso-8859-1 pour un codage plus latin -->
<title>BAUS consulting</title>
 <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu > li > ul'),
	           menu_a  = $('.menu > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>

</head>

<body>
<?php
	$session;
	?>

		<div id="banniere">
			<div id="titre"><a href="index.php">BAUS</a></div>
				<div id="categorie">
					<ul class="menu">
						<li class="item1"><a href="#">Categories</a>
							<ul>
								<li class="subitem1"><a href="#">Annonces</A></LI>
								<li class="subitem2"><a href="#">CVs</A></LI>
							</ul>
						</li>
					</ul>
				</div>
				
                 
				
				 <div id="compte">
				 <?php
					if (!isset($_SESSION['idu'])){
				 ?>
				 <FORM METHOD="POST" ACTION="index.php?ctrl=utilisateur&action=affconnexion">
					<INPUT TYPE="submit" VALUE="Mon compte">
					</FORM>
				
				<?php
				}
				else{?>
					<FORM METHOD="POST" ACTION="index.php?ctrl=utilisateur&action=gestion">
					<INPUT TYPE="submit" VALUE="Mon compte">
					</FORM>
					
				<?php
				}
				?>
				</div><!-- fin div compte -->
				
				<div id="rechercher">
				 <form action="/ecommerce/Servlet" method="POST">
					<input type="search" placeholder="Rechercher une annonce, un cv">
					<input type="submit" name="action" value="Rechercher">
				</form>
				</div>
				
                

                

		</div>
		
			
		