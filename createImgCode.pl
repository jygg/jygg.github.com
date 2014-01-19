
	print "<!-- 由createImgCode.pl脚本自动创建(开始) -->\n";
	chdir "imgs\\products";
foreach $dirname(@ARGV){
	chdir $dirname or die "cannot chdir $dirname!"; #把当前目录设为实参所指的目录
	my @all_imgs=glob '*.jpg';                    #把当前目录的文件和子目录传入数组

	
	print "<div class=\"listbar\">\n";
	print "<span>$dirname</span>\n";
	print "</div>\n";

	foreach $file(@all_imgs) {
	my $title=substr($file,0,length($file)-4);
	print "<div class=\"imgbox\">\n";
	print "<div class=\"imgbox_img\"><img alt=\"$title\" src=\"imgs/products/$dirname/$file\"/></div>\n";
	print "<div class=\"imgbox_title\">$title</div>\n";
	print "</div>\n";
	}
	print "\n";
	chdir "..";
}
	print "<!-- 由createImgCode.pl脚本自动创建(结束) -->\n";