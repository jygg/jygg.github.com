
	print "<!-- ��createImgCode.pl�ű��Զ�����(��ʼ) -->\n";
	chdir "imgs\\products";
foreach $dirname(@ARGV){
	chdir $dirname or die "cannot chdir $dirname!"; #�ѵ�ǰĿ¼��Ϊʵ����ָ��Ŀ¼
	my @all_imgs=glob '*.jpg';                    #�ѵ�ǰĿ¼���ļ�����Ŀ¼��������

	
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
	print "<!-- ��createImgCode.pl�ű��Զ�����(����) -->\n";