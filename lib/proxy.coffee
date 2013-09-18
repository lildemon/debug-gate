###
`
var listen = ['192.168.206.17', 8086];
var FindProxyByRules = (function() {
	
	var rules = [
		[
			[
				[],
				[],
				['kineox.free.fr', '.freegao.com', '.liuhanyu.com', 'tw.myblog.yahoo.com', 'kyohk.net', '.gcpnews.com', '.gazotube.com', 'epochtimes.co.il', '.zhinengluyou.com', 'togetter.com', '.wikileaks.org', '.tacem.org', '%e6%b3%95%e8%bc%aa%e5%8a%9f', 'cn.dayabook.com', 'alexlur.org', '.tistory.com', '.de-sci.org', 'greatfirewallofchina.org', 'sokamonline.com', 'great-firewall.com', '.gamer.com.tw', '.metacafe.com', '.tnaflix.com', '.bbg.gov', '.inmediahk.net', '.readingtimes.com.tw', 'gospelherald.com', '.discuss.com.hk', '.nps.gov', 'robtex.com', '.sydneytoday.com', 'perfspot.com', 'djangosnippets.org', '.voachineseblog.com', '.allinfa.com', '.spankwire.com', '.dzze.com', 'erabaru.net', 'civilhrfront.org', '.identi.ca', 'zh.pokerstrategy.com', 'buzzurl.jp', 'twistar.cc', 'twbbs.tw', 'appledaily.com', 'youtu.be', 'nysingtao.com', 'prozz.net', '.suoluo.org', 'm.slandr.net', '.goodreads.com', 'freemorenews.com', '.taweet.com', '.sanmin.com.tw', 'fflick.com', 'www.supertweet.net', '.twitlonger.com', 'mail-archive.com', '%e6%b3%95%e8%bd%ae%e5%8a%9f', '.vanilla-jp.com', 'xanga.com', 'godfootsteps.org', '.speedpluss.org', 'dalailama.com', 'retweetist.com', '.civicparty.hk', '.chinainperspective.org', '.worldcat.org', '.uushare.com', '.dadi360.com', 'webshots.com', 'blogspot.jp', 'lsforum.net', 'xinsheng.net', 'bigfools.com', 'wiki.cnitter.com', 'shinychan.com', 'shenshou.org', '.lalulalu.com', '.pornbase.org', '.mlcool.com', '.files2me.com', '5i01.com', 'beijingspring.com', 'multiupload.com', 'ultravpn.fr', 'anti.anti.cnn.googlepages.com', 'twiffo.com', '.tibetanyouthcongress.org', '.stickam.com', 'molihua.org', '.kaiyuan.de', '.t66y.com', 'newlandmagazine.com.au', 'pioneer-worker.forums-free.com', '.jimoparty.com', '.sinonet.ca', '.pandora.tv', '.mingpaomonthly.com', 'sohcradio.com', '.rushbee.com', '.fgmtv.org', 'socialwhale.com', '.clipfish.de', '.twbbs.net.tw', 'peacehall.com', '.fireofliberty.org', '.amnestyusa.org', 'wukangrui.net', '.12bet.com', '.culture.tw', 'sthoo.com', 'mgoon.com', 'lagranepoca.com', 'ifjc.org', '.fring.com', '.recordhistory.org', '.vot.org', '.aboutgfw.com', 'latelinenews.com', 'hulu.com', '%e7%bd%a2%e8%af%be', '.soumo.info', 'twimbow.com', 'dupola.com', 'dupola.net', '.nrk.no', 'c1522.mooo.com', 'ngensis.com', 'old.nabble.com', 'zh.netlog.com', 'video.aol.com', '.cmule.com', '.ddc.com.tw', '.twyac.org', 'qxbbs.org', '.twit2d.com', 'v70.us', '.getsocialscope.com', 'chenpokong.com', 'luntan.zaobao.com', '.aboluowang.com', 'immigration.gov.tw', 'ieasynews.net', '.gamez.com.tw', '.thisav.com', 'blog.youthwant.com.tw', 'twicsy.com', 'wufi.org.tw', '.budaedu.org', 'chinese.engadget.com', 'amzs.me', 'lkcn.net', 'cn.calameo.com', 'savemedia.com', '123rf.com', 'bbs.sina.com%2f', 'badoo.com', '.twibble.de', 'forum.idsam.com', 'taiwan-sex.com', 'yegle.net', 'blog.sina.com.tw', 'bbsland.com', '.tibetonline.tv', '.jiehua.cz', 'sshtunnel.googlecode.com', '.dailidaili.com', '.kingstone.com.tw', 'savevid.com', 'internetfreedom.org', 'fc2.com', '.waiwaier.com', 'netme.cc', '.bebo.com', 'zhao.jinhai.de', 'squarespace.com', 'hkgolden.com', 'voatibetan.com', 'x.xcity.jp', '.0rz.tw', '.bbcchinese.com', 'www.wet123.com', '.scribd.com', '.tsctv.net', 'tw.news.yahoo.com', 'ac.jiruan.net', 'www.zaurus.org.uk', 'kusocity.com', '.315lz.com', 'twisternow.com', '.msguancha.com', 'backchina.com', 'blog.lester850.info', 'adultfriendfinder.com', 'woopie.tv', 'thespeeder.com', 'tuidang.net', 'uighurbiz.net', 'freeman2.com', 'mypaper.pchome.com.tw', '.twitstat.com', '.tokyo-247.com', 'daxa.cn', 'puffinbrowser.com', 'blogs.yahoo.co.jp', '.ezpeer.com', '.bullog.org', '.slideshare.net', '.twitpic.com', '.penchinese.net', 'middle-way.net', '.businesstimes.com.cn', 'shapeservices.com', 'video.google.com', '.ugo.com', 'youmaker.com', '.uni.cc', '.isaacmao.com', '.duihua.org', 'washeng.net', '.emory.edu', '.telecomspace.com', 'hkg.westkit.net', '.junefourth-20.net', '.boxun.tv', 'xizang-zhiye.org', '.velkaepocha.sk', '.bit.ly', '.appspot.com', '.sex.com', '.sexhuang.com', 'zgzcjj.net', 'dadazim.com', '.bignews.org', 'www.dwheeler.com', 'ultrareach', 'flickrhivemind.net', '.yi.org', 'api.supertweet.net', '.apetube.com', '.greenvpn.net', '.sitebro.tw', '.yogichen.org', '.2-hand.info', 'greatroc.org', 'plunder.com', '.porn2.com', 'kanzhongguo.com', '.googlevideo.com', 'networkedblogs.com', 'hahlo.com', 'twbbs.org', '.saiq.me', 'coolder.com', 'xinshijue.com', 'hk.news.yahoo.com', 'woopie.jp', '.google.com%2fmoderator', '.twitvid.com', 'freenewscn.com', '.mingpaony.com', 'holz.byethost8.com', 'old-cat.net', '.mingpaosf.com', 'memedia.cn', 'shadow.ma', 'gpass1.com', '.sex8.cc', 'home.sina.com', 'yx51.net', '.wefong.com', '.amoiist.com', '%e7%be%8e%e5%9b%bd%e4%b9%8b%e9%9f%b3', 'spinejs.com', 'tvants.com', 'tw.voa.mobi', 'smhric.org', 'falunart.org', '.freakshare.com', '.domain.club.tw', '.tianzhu.org', 'ifanqiang.com', '.linglingfa.com', '.chinaworker.info', 'zhonggtuotese.net', 'pulse.yahoo.com', 'openid.net', '.songjianjun.com', 'rangzen.org', '.jyxf.net', 'page2rss.com', '.wpoforum.com', '.sod.co.jp', '.bestvpnservice.com', 'footwiball.com', '.sourceforge.net', '.twittercounter.com', '.rsf-chinese.org', '.12vpn.com', 'hkjp.easyweb.hk', 'bannedbook.org', 'chinesenewsnet.com', '.power.com', 'wolfax.com', '.fawanghuihui.org', '.xiaohexie.com', 'corumcollege.com', 'www.wangruowang.org', 'njuice.com', '.xxbbx.com', '.bewww.net', 'yfrog.com', '.ifcss.org', '.farwestchina.com', 'share.youthwant.com.tw', 'whitebear.freebearblog.org', '.taipeisociety.org', 'chinatimes.com', 'bbs.tuitui.info', 'cdpwu.org', 'alliance.org.hk', 'tangben.com', 'q%3dtriangle', '.sytes.net', '.uwants.com', '.noypf.com', '.minzhuhua.net', 'qixianglu.cn', '.zengjinyan.org', '.szbbs.net', 'crackle.com', 'blogimg.jp', '.roodo.com', 'anontext.com', 'efcc.org.hk', '.tube.com', 'fulue.com', 'pbwiki.com', '.kechara.com', '.cafepress.com', 'fanqiangyakexi.net', '.geocities.co.jp', '.chinadigitaltimes.net', '.c-spanvideo.org', '.nowtorrents.com', 'wezhiyong.org', 'pwned.com', '.tv.com', '.taolun.info', 'zhenghui.org', '.dajiyuan.eu', 'merit-times.com.tw', '.wqlhw.com', 'itaboo.info', '.naol.ca', 'nintendium.com', '.newchen.com', 'xiezhua.com', '.blockcn.com', 'forum.sina.com.hk', '.wqyd.org', 'nanyang.com', '.888.com', 'lerosua.org', 'twitgoo.com', '.zuo.la', 'livestream.com', 'echofon.com', 'pdetails.com', 'chinese.rnw.nl', 'isohunt.com', 'meirixiaochao.com', 'rutube.ru', '%e7%8e%8b%e4%b8%b9', 'www.freetibet.org', '.redtube.com', '.hecaitou.net', 'chinasocialdemocraticparty.com', 'vocn.tv', '.zsrhao.com', '.e-gold.com', 'mayimayi.com', 'relaxbbs.com', 'kingdomsalvation.org', 'vpnbook.com', '.2008xianzhang.info', 'writer.zoho.com', '.crossthewall.net', '.qkshare.com', '.anonymizer.com', 'ntdtv.org', '.md-t.org', '.catholic.org.hk', '.hjclub.info', 'orientaldaily.com.my', 'winwhispers.info', '.piring.com', '.shaunthesheep.com', 'brizzly.com', 'uncyclopedia.info', '.breakingtweets.com', '.nytimes.com', '.onlylady.cn', '.makzhou.warehouse333.com', 'justfreevpn.com', 'whylover.com', '.twifan.com', 'cdp1998.org', '.diigo.com', '.getfreedur.com', 'hk.geocities.com', '.packetix.net', 'cpj.org', '.rxhj.net', '.fdc89.jp', '.bot.nu', 'soundofhope.org', 'news.sina.com.hk', '.bloglovin.com', '.blogger.com', '.tibet.com', 'unpo.org', '.twtkr.com', 'one.xthost.info', '.chrlawyers.hk', 'popyard.com', 'forum.baby-kingdom.com', '.changp.com', 'tor.updatestar.com', '.globalvoicesonline.org', '.zaozon.com', 'huaxia-news.com', '.fuckcnnic.net', '.porn.com', 'dowei.org', 'broadbook.com', '.businessweek.com', 'goagent.googlecode.com', 'wiki.moegirl.org', 'ebookee.com', 'myactimes.com', 'hutong9.net', '.betfair.com', 'gongminliliang.com', '.facebook.com', '.tpi.org.tw', 'cdjp.org', 'taiwannation.50webs.com', '.twitterkr.com', '.botanwang.com', '.danwei.org', 'youthbao.com', 'tagwalk.com', 'torrentcrazy.com', 'chinagfw.org', '.renyurenquan.org', 'wenxuecity.com', 'fangongheike.com', 'xjp.cc', 'xa.yimg.com', 'lizhizhuangbi.com', '.rfa.org', '.chinese-hermit.net', 'hk.myblog.yahoo.com', 'logbot.net', 'ibros.org', 'fangeming.com', 'gov.tw', 'a5.com.ru', 'biantailajiao.com', '.rapbull.net', '.lookatgame.com', 'philly.com', 'usinfo.state.gov', '.openleaks.org', 'jinbushe.org', 'laogai.org', '.ulike.net', 'mingpaonews.com', 'kun.im', 't.huhaitai.com', 'bbs.ecstart.com', '.newcenturymc.com', 'gamebase.com.tw', '.freelotto.com', 'postadult.com', 'tibetalk.com', 'falundafa.org', 'api.proxlet.com', 'allgirlsallowed.org', 'freenet', 'myboooks.googlepages.com', 'yilubbs.com', '.pornstarclub.com', 'tube8.com', '.sfileydy.com', '.yzzk.com', 'marguerite.su', 'pengyulong.com', '.hqcdp.org', '.sharebee.com', 'wetpussygames.com', '.higfw.com', 'dy24k.info', '.gyalwarinpoche.com', 'yasni.co.uk', 'xinqimeng.over-blog.com', 'webs-tv.net', 'wretch.cc', 'plm.org.hk', 'mihua.org', '.rileyguide.com', 'wallornot.org', 'plays.com.tw', '.peeasian.com', 'twapperkeeper.com', '.twitzap.com', 'blog.sogoo.org', '.imkev.com', 'bloomberg.de', 'thevivekspot.com', '.hkbf.org', '.hrw.org', 'twipple.jp', 'ladbrokes.com', 'www.macrovpn.com', '.ping.fm', '.panluan.net', 'hidden-advent.org', 'blog.foolsmountain.com', 'news.msn.com.tw', '.coolaler.com', 'chuizi.net', 'bbs.qmzdd.com', '.dabr.co.uk', '.palacemoon.com', 'bonbonme.com', 'wujie.net', 'rcinet.ca', 'bjzc.org', '.kenengba.com', '.rthk.org.hk', 'brightkite.com', '.emule-ed2k.com', 'app.heywire.com', 'xvedios.com', 'shenyunperformingarts.org', 'bwsj.hk', 'lists.debian.org', 'nccwatch.org.tw', '.hkhkhk.com', 'psblog.name', '.idouga.com', 'tuite.googlecode.com', 'www.voy.com', 'nexttv.com.tw', 'gdzf.org', 'bbs.kimy.com.tw', '%e8%83%a1%e6%b5%b7%e5%b3%b0', '.dojin.com', 'cdpweb.org', 'nuzcom.com', '89-64.org', '.zaobao.com.sg', '.sinoants.com', '.greatfirewallofchina.org', '.xing.com', 'cn.voa.mobi', '.173ng.com', '.fc2china.com', 'juziyue.com', '.diaoyuislands.org', '.chinesepen.org', 'blogspot.de', 'aiph.net', 'vansky.com', '.dontfilter.us', '.vpngate.net', 'megavideo.com', '.panoramio.com', 'qoos.com', 'forum.setty.com.tw', 'tibetfund.org', 'gtap.googlecode.com', 'support/youtube/bin/request.py?contact_type=abuse&', 'falundafamuseum.org', 'dajusha.baywords.com', '.ptt.cc', 'xpdo.net', 'gaeproxy.googlecode.com', 'twittertim.es', 'felixcat.net', '.revleft.com', '.islam.org.hk', '.olympicwatch.org', 'zh.wikinews.org', 'yam.com', 'fzh999.net', '.fengzhenghu.com', 'page.bid.yahoo.com', '.qanote.com', 'xuchao.net', 'vlog.xuite.net', 'us.to', '.hkreporter.com', 'epochtimes.fr', 'newcenturynews.com', 'globalmuseumoncommunism.org', 'veoh.com', 'hkptu.org', 'gigporno.ru', 'www.ned.org', 'm.oulove.org', '.wforum.com', '.gopetition.com', '.dw-world.de', '.idv.tw', '.apigee.com', 'gmbd.cn', 'cts.com.tw', 'xmovies.com', 'nicovideo.tw', '.dizhidizhi.com', '.tenacy.com', 'xhamster.com', '%2fsearch%3fq%3dcache', 'sesawe.net', '.pornrapidshare.com', 'securitykiss.com', '.hechaji.com', '.danke4china.net', 'funp.com', 'sinomontreal.ca', 'omgili.com', 'secretchina.com', 'blogspot.in', '.showtime.jp', 'meme.yahoo.com', 'weblagu.com', 'twitterfeed.com', 'voagd.com', 'nlfreevpn.com', 'atgfw.org', 'chinasoul.org', '.gun-world.net', '.amnesty.org', 'hrichina.org', '.dok-forum.net', '.dw.de', '.asahichinese.com', 'news.cnyes.com', 'chinatweeps.com', 'westca.com', 'jeanyim.com', '/search?q=cache', 'wow-life.net', 'letscorp.net', 'powerapple.com', 'dailynews.sina.com%2f', '.daolan.net', '.zuola.com', '.salvation.org.hk', '.t35.com', '.toodoc.com', '24smile.org', 'getiton.com', '.state168.com', '.new-akiba.com', 'friendfeed.com', 'q%3dfreedom', '.kzeng.info', '.bloomberg.com', '.bloomberg.cn', 'sexinsex.net', '.oopsforum.com', 'forum.omy.sg', '.ccdtr.org', 'tweetphoto.com', 'boxun.com', 'oizoblog.com', 'greatfire.org', 'tibetonline.com', 'orientaldaily.on.cc', 'dafagood.com', 'fail.hk', '.pacificpoker.com', 'mpfinance.com', 'gfw.org.ua', 'chengmingmag.com', '.92ccav.com', '.thumbzilla.com', 'dongde.com', '.sugarsync.com', 'blog.taragana.com', 'bayvoice.net', 'referer.us', '.mychinamyhome.com', 'trendsmap.com', 'favorious.com', 'trtc.com.tw', 'zyzc9.com', '.newsancai.com', 'tui.orzdream.com', 'freenet-china.org', 'creaders.net', 'greatfirewall.biz', 'picasaweb.google.com', 'epochtimes-romania.com', '.koornk.com', 'tiananmenmother.org', 'shenzhoufilm.com', '.myspace.com', '.starp2p.com', '.mmmca.com', '.chinamule.com', '.antiwave.net', 'chinageeks.org', 'dongtaiwang.com', '.twitturly.com', 'ch.shvoong.com', 'tv.on.cc', 'rconversation.blogs.com', '/search%3fq%3dcache', 'tiantibooks.org', 'isunaffairs.com', '.caobian.info', '.canyu.org', '.focusvpn.com', 'zinio.com', 'chinalawandpolicy.com', 'radioaustralia.net.au', '.penthouse.com', '.snaptu.com', '%e8%83%a1%e6%b5%b7%e6%b8%85', '.lipuman.com', '.fakku.net', '.nch.com.tw', 'huaglad.com', 'e-info.org.tw', '.helpeachpeople.com', 'eventful.com', 'yeeyi.com', 's.xiaod.in', 'chn.chosun.com', 'chinacomments.org', 'listorious.com', '.tweetbackup.com', 'bolin.netfirms.com', 'youversion.com', 'iask.bz', 'cyberghost.natado.com', '.mixx.com', 'tweetboard.com', '.pcdiscuss.com', '.wahas.com', 'en.favotter.net', '.lianyue.net', 'connectedchina.reuters.com', 'hootsuite.com', '.thechinabeat.org', '.bullogger.com', '.posterous.com', '67.220.91.18', 'favstar.fm', 'youpai.org', '.gongwt.com', '.wengewang.org', 'taiwanyes.ning.com', 'animecrazy.net', 'www.aolnews.com', 'tsunagarumon.com', '.democrats.org', '.gaoming.net', '.blogcatalog.com', 'picturesocial.com', '.slutload.com', 'mitbbs.com', 'offbeatchina.com', '.xinmiao.com.hk', '.unix100.com', 'news.pchome.com.tw', 'dwnews.com', 'forum.iset.com.tw', '.sharpdaily.hk', 'h1n1china.org', '.khmusic.com.tw', '.porntube.com', '.edubridge.com', '.lsd.org.hk', '.pk.com', 'wuerkaixi.com', 'hkreporter.loved.hk', 'tuidang.org', 'paperb.us', 'sino-monthly.com', 'twilog.org', 'oursteps.com.au', 'zh.uncyclopedia.wikia.com', 'openvpn.net', 'pastebin.com', 'ntdtv.ru', 'liansi.org', '6park.com', 'ameblo.jp', 'revver.com', 'findbook.tw', '.peopo.org', 'prisoner-state-secret-journal-premier', 'huaxin.ph', '.laoyang.info', '.livestation.com', '.dotplane.com', 'feedbooks.mobi', '.chenguangcheng.com', 'electionsmeter.com', '.puffstore.com', 'feedproxy.google.com', 'tsquare.tv', 'renminbao.com', 'sneakme.net', '.sexhu.com', 'vpnfire.com', '.bestforchina.org', 'edoors.com', '.plusbb.com', '.blip.tv', '.pmates.com', 'vimeo.com', 'etaiwannews.com', 'grandtrial.org', 'epochtimes.com', '.xcritic.com', '.dailymotion.com', 'yuming.flnet.org', 'webbang.net', 'unicode.org', '.vft.com.tw', 'nobodycanstop.us', 'summify.com', 'zomobo.net', 'cl.d0z.net', 'sammyjs.org', 'q=freedom', 'chinaaffairs.org', '.epochtimes.ie', 'ultrasurf', '.whatblocked.com', 'southnews.com.tw', '.sesawe.org', 'wexiaobo.org', 'citizensradio.org', '.fooooo.com', 'wujieliulan.com', 'twistory.net', 'paper.li', '.ftchinese.com', 'sejie.com', 'thepiratebay.org', '.wuala.com', '.pornoxo.com', '.liujianshu.com', 'tora.to', 'zmw.cn', 'xinhuanet.org', '.tsemtulku.com', '.sex-11.com', '.googlesile.com', 'blogspot.fr', '.atchinese.com', 'sohfrance.org', 'gongmeng.info', 'omnitalk.com', '.lupm.org', 'libertytimes.com.tw', '.freeoz.org', '.sinopitt.info', 'freemoren.com', '.berlintwitterwall.com', 'plurktop.mmdays.com', '.drtuber.com', 'times.hinet.net', 'fapdu.com', 't.orzdream.com', '.taiwandaily.net', 'sacom.hk', 'tweetmeme.com', 'feer.com', '.myforum.com.hk', '.shizhao.org', '.rfamobile.org', '.eltondisney.com', '.futurechinaforum.org', '.fsurf.com', 'neverforget8964.org', 'yong.hu', 'iask.ca', '/support/youtube/bin/static.py?page=start.cs&', 'disp.cc', 'thereallove.kr', '.womensrightsofchina.org', 'gfwinterceptor.googlecode.com', 'alwaysdata.com', 'taiwanus.net', 'blog.pilotmoon.com', 'sitetag.us', '.linkideo.com', 'yuanming.net', 'gardennetworks.com', '.cdnews.com.tw', 'ntdtv.co', 'actimes.com.au', 'guancha.org', 'zh.m.wikipedia.org', 'chinayuanmin.org', 'ntdtv.ca', '.liaowangxizang.net', 'wwitv.com', '.wtfpeople.com', 'privatetunnel.com', '.duoweitimes.com', '.python.com.tw', 'kinghost.com', 'subacme.rerouted.org', '.slinkset.com', '.clb.org.hk', 'simpleproductivityblog.com', '.img.ly', '.cecc.gov', '.mobypicture.com', '.arctosia.com', '.rsf.org', '.sopcast.org', 'zhuichaguoji.org', 'china101.com', '.vanemu.cn', '.extremetube.com', '.turbobit.net', 'www.pchome.com.tw', 'news.omy.sg', 'blogspot.co.uk', '.bet365.com', 'opendemocracy.net', 'bipic.net', 'hkbc.net', 'savetibet.org', 'internetdefenseleague.org', '.izles.net', 'mingjingnews.com', '.ruyiseek.com', '.freewebs.com', 'netcolony.com', '.shwchurch3.com', 'weijingsheng.org', 'doubleaf.com', 'tinychat.com', '.videomo.com', 'zhengjian', 'mp3ye.eu', '.oiktv.com', '.taa-usa.org', 'observechina.net', 'singtao.com', '.verizon.net', 'ithelp.ithome.com.tw', 'cytode.us', 'dpp.org.tw', 'topic.youthwant.com.tw', 'hnjhj.com', '.tunein.com', 'thkphoto.com', 'la-forum.org', 'weiquanwang.org', 'cn2.streetvoice.com', 'dl.box.net', '.wangjinbo.org', '.softether.co.jp', 'twiyia.com', '.chinainperspective.com', 'cclife.org', 'blogtd.net', 'zhenlibu.info', 'hkday.net', '1984bbs.com', '.weekmag.info', '.jyzj.waqn.com', '.so-ga.net', 'chinachannel.hk', 'woxinghuiguo.com', 'hen.bao.li', 'justtristan.com', '.uwants.net', '.rlwlw.com', 'minghui-school.org', 'stupidvideos.com', 'twurl.nl', 'twitbrowser.net', '.ggssl.com', 'bbs.skykiwi.com', '.fangbinxing.com', 'shifeike.blog125.fc2blog.net', 'china21.org', '.himemix.com', '.cao.im', 'chinayouth.org.hk', '.zoozle.net', 't.neolee.cn', 'twitiq.com', 'mysinablog.com', 'blog.pchome.com.tw', 'voacantonese.com', '.blogtd.org', 'liuxiaotong.com', 'artsy.net', 'mashable.com', '72.52.81.22', 'laomiu.com', 'wangruoshui.net', '.mingpaotor.com', '.youjizz.com', 'gongm.in', 'killwall.com', 'tchrd.org', 'chinamz.org', '.topshareware.com', '%e5%88%98%e6%99%93%e6%b3%a2', 'heqinglian.net', 'kwongwah.com.my', 'blinw.com', '.tweetboner.biz', 'showbiz.omy.sg', '%e6%b0%91%e8%bf%90', 'freevpn.nl', 'tw.streetvoice.com', '.imlive.com', '.kendincos.net', '.dongtaiwang.net', 'hk.rd.yahoo.com', 'feeds.feedburner.com', '.megaporn.com', 'epochtimes-bg.com', 'taiwankiss.com', 'hotpot.hk', 'provideocoalition.com', 'dphk.org', '%e5%8a%a8%e6%80%81%e7%bd%91', 'analyze-v.com', 'www.urbanoutfitters.com', 'cari.com.my', '.2shared.com', 'mingpao.com', 'uygur.org', 'minzhuzhongguo.org', '.asiaharvest.org', '.truveo.com', '.mingpaovan.com', 'sowers.org.hk', 'remembering_tiananmen_20_years', 'dalianmeng.org', '.so-news.com', 'epochtimes.co.kr', '.dongyangjing.com', '174.142.105.153', 'fb.me', '.pekingduck.org', 'chinaway.org', '.gzm.tv', 'twitreferral.com', '.wordpress.com', '.izaobao.us', 'asianews.it', '.stoptibetcrisis.net', 'ultraxs.com', '.helpzhuling.org', '.xbookcn.com', '.weiming.info', 'twa.sh', '.witopia.net', '.hidemyass.com', '.sobees.com', 'taiwannation.com.tw', '.rthk.hk', 'mefeedia.com', 'forum.pchome.com.tw', 'embr.in', '.break.com', 'newtalk.tw', 'qusi8.net', 'sharpdaily.com.hk', '.truth101.co.tv', 'python.com', '.yousendit.com', 'tubecao.com', 'x365x.com', 'touch99.com', '.tycool.com', 'great-roc.org', '.ccthere.com', 'lvhai.org', '.9001700.com', '.yyii.org', 'www.forum4hk.com', '.tibet.net', 'politicalchina.org', '.freechal.com', 'threatchaos.com', '.marxist.com', 'holyspiritspeaks.org', 'pcdvd.com.tw', '.mimivip.com', '.zonaeuropa.com', '.freeopenvpn.com', 'domainhelp.search.com', 'tvboxnow.com', '.yidio.com', '.whippedass.com', '%e6%b3%95%e8%bd%ae%e5%a4%a7%e6%b3%95', 'penchinese.com', '.chingcheong.com', '.pixnet.net', '.wenhui.ch', 'gs-discuss.com', 'boxunblog.com', 'news.singtao.ca', 'geocities.jp', 'forum.my903.com', 'toonel.net', 'city9x.com', '.1bao.org', '.fan-qiang.com', '.cuihua.org', 'ufreevpn.com', '.pokerstars.com', '.ck101.com', 'sinocism.com', '.upload4u.info', '.bowenpress.com', '.shopping.com', '.aiweiweiblog.com', 'tonyyan.net', '.wattpad.com', 'twitthat.com', 'ranyunfei.com', 'csdparty.com', '.pornvisit.com', '64memo', 'hkjc.com', 'theblemish.com', '.chinesen.de', '.ncn.org', 'want-daily.com', 'ganges.com', 'sapikachu.net', 'tweepmag.com', '.wenyunchao.com', 'brucewang.net', 'video.fdbox.com', '.google.com%2freader%2fview%2ffeed', 'fuckgfw.org', 'mcfog.com', 'zh.wikisource.org', 'sufeng.org', '.newscn.org', 'epochtimes.jp', 'open.com.hk', 'liu.lu', 'twtr2src.ogaoga.org', '.longhair.hk', 'tynsoe.org', 'ecministry.net', '.proxypy.net', '.pign.net', '64wiki.com', 'eyevio.jp', 'minghui.org', 'peacefire.org', '.kissbbao.cn', 'hongmeimei.com', 'proxy.org', 'huluim.com', '.goodreaders.com', '.free-ssh.com', 'greatzhonghua.org', '.shangfang.org', '.tuanzt.com', 'alvinalexander.com', '.dw-world.com', 'hua-yue.net', 'xys.org', 'epochtimes.se', 'tokyo-hot.com', '.blinkx.com', '.pastie.org', 'imageshack.us', 'ytht.net', '.zhanbin.net', 'twitoaster.com', 'seesmic.com', '.atlaspost.com', 'iredmail.org', '.xfm.pp.ru', 'fillthesquare.org', 'archive.org', 'inxian.com', 'xysblogs.org', 'heix.pp.ru', '.rfachina.com', 'avaaz.org', '.bettween.com', '%e6%b0%91%e8%bf%9b%e5%85%9a', '.dropbox.com', 'have8.com', '.livevideo.com', '.aisex.com', '.bloglines.com', 'hellotxt.com', 'hk.knowledge.yahoo.com', '.funf.tw', '.xvideos.com', 'cdp2006.org', 'ccue.com', 'wanglixiong.com', '.wearn.com', 'oursogo.com', '.dalailamaworld.com', 'xys.dxiong.com', 'canadameet.com', 'zh-tw.justin.tv', 'tweetymail.com', 'simplecd.org', '.plus28.com', '67.220.91.23', 'opml.radiotime.com', '.ydy.com', 'jbtalks.cc', 'privatepaste.com', '.dit-inc.us', 'www.eulam.com', '.1eew.com', '666kb.com', 'fleshbot.com', '.hkjp.org', 'jieshibaobao.com', '.change.org', 'news.sina.com.tw', 'twibbon.com', 'isuntv.com', '.hihiforum.com', 'tvider.com', '.freexinwen.com', '.rfi.fr', 'bbs.morbell.com', '.dayaarmongol.ning.com', 'tweetree.com', '.zkaip.com', 'blog.xuite.net', 'tibet.org.tw', 'caochangqing.com', 'mrtweet.com', 'psiphon.ca', '.picidae.net', '.youtube.com', 'ukliferadio.co.uk', 'qi-gong.me', 'multiproxy.org', '.hanunyi.com', 'wengewang.com', 'sinoquebec.com', 'forum.slime.com.tw', 'taiwanyes.com', '.chinagreenparty.org', 'jkforum.net', '.wisevid.com', 'sis001.us', '.sevenload.com', '.mk5000.com', '.softether.org', 'topsy.com', 'mpinews.com', 'cdpusa.org', '.myfreshnet.com', '.cuiweiping.net', 'blogspot.com', '.google.com.hk%2fwenda', '.qvodzy.org', '.itweet.net', '.citizenlab.org', 'zacebook.com', 'bbs.ozchinese.com', 'dabr.mobi', '.twreg.info', 'worldjournal.com', '.china-week.com', '.trialofccp.org', 'www.orchidbbs.com', '.sopcast.com', 'hk.yahoo.com', '.twittergadget.com', 'chinaaid.us', '.nakido.com', 'beta.usejump.com', '.okayfreedom.com', '.askynz.net', '.ozyoyo.com', '.5maodang.com', 'comefromchina.com', 'chinese.soifind.com', '.youtubecn.com', '.pornhub.com', 'finler.net', 'the-sun.on.cc', '.iu45.com', 'uhrp.org', '.sexandsubmission.com', 'fzh999.com', 'ipobar.com', 'psiphon.civisec.org', '.read100.com', 'here4news.com', 'mixpod.com', 'www.owind.com', 'epochtimes.ru', 'video.foxbusiness.com', '.youporn.com', '.freedomhouse.org', 'voachinese.com', 'chinaaid.net', 'video.yahoo.com', 'guishan.org', 'new-3lunch.net', 'news100.com.tw', '.kagyuoffice.org.tw', '.chinahush.com', 'm.tweete.net', '199.59.148.20', 'x1949x.com', '.dajiyuan.com', '.greenparty.org.tw', '.cnd.org', 'mhradio.org', 'webworkerdaily.com', '.erepublik.com', 'foxtang.com', 'aliengu.com', 'thehousenews.com', 'duping.net', '.1984bbs.org', '.newgrounds.com', '.huanghuagang.org', '.van698.com', '.yorkbbs.ca', '.mixero.com', 'taiwannation.com', 'catholic.org.tw', '.rapidsharedata.com', '.nanyangpost.com', '.udn.com', 'ccue.ca', 'rti.org.tw', '.planetsuzy.org', 'taipei.gov.tw', '.pin6.com', 'chubun.com', 'proxyroad.com', '.tweetdeck.com', 'xuzhiyong.net', 'newsforums.bbc.co.uk', 'sysresccd.org', '.torproject.org', 'cn.uncyclopedia.wikia.com', 'jbtalks.com', 'twitter.com', 'chinese-memorial.org', '.cactusvpn.com', '.percy.in', 'dafahao.com', '.yipub.com', 'epochtimes.de', 'crd-net.org', '.realraptalk.com', '.pidown.com', 'uncyclomedia.org', '.gaopi.net', '.bcchinese.net', '.falsefire.com', 'soh.tw', 'tor.blingblingsquad.net', '.hrcir.com', 'jbtalks.my', 'wozy.in', 'dtiserv2.com', 'mirrorbooks.com', 'myopenid.com', '.qienkuen.org', '.tianhuayuan.com', '.waigaobu.com', 'christianstudy.com', '.atnext.com', 'ebookbrowse.com', '.tweepml.org', '.your-freedom.net', 'upcoming.yahoo.com', 'twtrland.com', '.chinaeweekly.com', '.xiaochuncnjp.com', 'forum.palmislife.com', 'blog.jackjia.com', 'tabtter.jp', 'kanzhongguo.eu', '69.65.19.160', 'tw.yahoo.com', '.tttan.com', 'twibase.com', '.topnews.in', 'edicypages.com', '.hk32168.com', 'forum.mymaji.com', 'jingpin.org', 'perfectvpn.net', '.ustream.tv', '.rhcloud.com', '.ied2k.net', '.centurys.net', 'jpopforum.net', '.mobile01.com', 'babynet.com.hk', 'epochtimestr.com', 'seapuff.com', 'oyax.com', '64tianwang.com', '.twaud.io', 'newyorktimes.com', '.rssmeme.com', 'limiao.net', 'sites.google.com', 'q=triangle', '.maiio.net', '1-apple.com.tw', '.wo.tc', 'videobam.com'],
				{}, {
					'klccab': [/^https?:\/+(?:[^\/]+\.)?klccab\.gov\.tw\//],
					'jwmusic': [/^https?:\/+(?:[^\/]+\.)?music\.jwmusic\.org\//],
					'sogou': [/^https?:\/+(?:[^\/]+\.)?sogou\.com\//],
					'gsn-cert': [/^https?:\/+(?:[^\/]+\.)?gsn\-cert\.nat\.gov\.tw\//],
					'khcc': [/^https?:\/+(?:[^\/]+\.)?khcc\.gov\.tw\//],
					'ntsec': [/^https?:\/+(?:[^\/]+\.)?ntsec\.gov\.tw\//],
					'zhongsou': [/^https?:\/+(?:[^\/]+\.)?zhongsou\.com\//],
					'khms': [/^https?:\/+(?:[^\/]+\.)?khms\.gov\.tw\//],
					'nerch': [/^https?:\/+(?:[^\/]+\.)?nerch\.gov\.tw\//],
					'patehr': [/^https?:\/+(?:[^\/]+\.)?patehr\.gov\.tw\//],
					'nvri': [/^https?:\/+(?:[^\/]+\.)?nvri\.gov\.tw\//],
					'baidu': [/(?:^https?:\/+(?:[^\/]+\.)?baidu\.com\/)|(?:^http\:\/\/ime\.baidu\.jp)/],
					'ntuh': [/^https?:\/+(?:[^\/]+\.)?ntuh\.gov\.tw\//],
					'lungtanhr': [/^https?:\/+(?:[^\/]+\.)?lungtanhr\.gov\.tw\//],
					'duckduckgo': [/^https?:\/+(?:[^\/]+\.)?duckduckgo\.com\//],
					'tncsec': [/^https?:\/+(?:[^\/]+\.)?tncsec\.gov\.tw\//],
					'tcsac': [/^https?:\/+(?:[^\/]+\.)?tcsac\.gov\.tw\//],
					'nhri': [/^https?:\/+(?:[^\/]+\.)?nhri\.gov\.tw\//],
					'facebook': [/^https?:\/+(?:[^\/]+\.)?.*v6\.facebook\.com\//],
					'aliyun': [/^https?:\/+(?:[^\/]+\.)?aliyun\.com\//],
					'moe': [/^https?:\/+(?:[^\/]+\.)?moe\.gov\.tw\//],
					'cwb': [/^https?:\/+(?:[^\/]+\.)?cwb\.gov\.tw\//],
					'jike': [/^https?:\/+(?:[^\/]+\.)?jike\.com\//],
					'nmvttc': [/^https?:\/+(?:[^\/]+\.)?nmvttc\.gov\.tw\//],
					'aec': [/^https?:\/+(?:[^\/]+\.)?aec\.gov\.tw\//],
					'921': [/^https?:\/+(?:[^\/]+\.)?921\.gov\.tw\//],
					'nspo': [/^https?:\/+(?:[^\/]+\.)?nspo\.gov\.tw\//],
					'hchcc': [/^https?:\/+(?:[^\/]+\.)?hchcc\.gov\.tw\//],
					'kodingen': [/^https?:\/+(?:[^\/]+\.)?www\.kodingen\.com\//],
					'matsu-news': [/^https?:\/+(?:[^\/]+\.)?matsu\-news\.gov\.tw\//],
					'google': [/^https?:\/+(?:[^\/]+\.)?ipv6\.google\.com\//],
					'wanfang': [/^https?:\/+(?:[^\/]+\.)?wanfang\.gov\.tw\//],
					'vghks': [/^https?:\/+(?:[^\/]+\.)?vghks\.gov\.tw\//],
					'aide': [/^https?:\/+(?:[^\/]+\.)?aide\.gov\.tw\//],
					'static': [/^https?:\/+(?:[^\/]+\.)?static\.soup\.io\//],
					'ncree': [/^https?:\/+(?:[^\/]+\.)?ncree\.gov\.tw\//],
					'comnews': [/^https?:\/+(?:[^\/]+\.)?comnews\.gio\.gov\.tw\//],
					'pet': [/^https?:\/+(?:[^\/]+\.)?pet\.gov\.tw\//],
					'panguso': [/^https?:\/+(?:[^\/]+\.)?panguso\.com\//],
					'nertt': [/^https?:\/+(?:[^\/]+\.)?nertt\.gov\.tw\//],
					'kmh': [/^https?:\/+(?:[^\/]+\.)?kmh\.gov\.tw\//],
					'hcc': [/^https?:\/+(?:[^\/]+\.)?hcc\.gov\.tw\//],
					'taitung-house': [/^https?:\/+(?:[^\/]+\.)?taitung\-house\.gov\.tw\//],
					'klsio': [/^https?:\/+(?:[^\/]+\.)?klsio\.gov\.tw\//],
					'hsinchu-cc': [/^https?:\/+(?:[^\/]+\.)?hsinchu\-cc\.gov\.tw\//],
					'gov': [/(?:^https?:\/+(?:[^\/]+\.)?kk\.gov\.tw\/)|(?:^https?:\/+(?:[^\/]+\.)?df\.gov\.tw\/)/],
					'ner': [/^https?:\/+(?:[^\/]+\.)?ner\.gov\.tw\//],
					'nmp': [/^https?:\/+(?:[^\/]+\.)?nmp\.gov\.tw\//],
					'exblog': [/^https?:\/+(?:[^\/]+\.)?www\.exblog\.jp\//],
					'youdao': [/^https?:\/+(?:[^\/]+\.)?youdao\.com\//],
					'aftygh': [/^https?:\/+(?:[^\/]+\.)?aftygh\.gov\.tw\//],
					'ntl': [/^https?:\/+(?:[^\/]+\.)?ntl\.gov\.tw\//],
					'itrc': [/^https?:\/+(?:[^\/]+\.)?itrc\.gov\.tw\//],
					'nmh': [/^https?:\/+(?:[^\/]+\.)?nmh\.gov\.tw\//],
					'sina': [/(?:^https?:\/+(?:[^\/]+\.)?sina\.com\.cn\/)|(?:^https?:\/+(?:[^\/]+\.)?sina\.cn\/)/],
					'vghtc': [/^https?:\/+(?:[^\/]+\.)?vghtc\.gov\.tw\//],
					'stdtime': [/^https?:\/+(?:[^\/]+\.)?stdtime\.gov\.tw\//],
					'nmtl': [/^https?:\/+(?:[^\/]+\.)?nmtl\.gov\.tw\//],
					'locql': [/^https?:\/+(?:[^\/]+\.)?site\.locql\.com\//],
					'kmseh': [/^https?:\/+(?:[^\/]+\.)?kmseh\.gov\.tw\//],
					'cycab': [/^https?:\/+(?:[^\/]+\.)?cycab\.gov\.tw\//],
					'simplecd': [/^https?:\/+(?:[^\/]+\.)?simplecd\.me\//],
					'haygo': [/^https?:\/+(?:[^\/]+\.)?haygo\.com\//],
					'myvlog': [/^https?:\/+(?:[^\/]+\.)?myvlog\.im\.tv\//],
					'cl': [/^https?:\/+(?:[^\/]+\.)?f\.cl\.ly\//],
					'taoyuan': [/^https?:\/+(?:[^\/]+\.)?taoyuan\.gov\.tw\//],
					'mvdis': [/^https?:\/+(?:[^\/]+\.)?mvdis\.gov\.tw\//],
					'soso': [/^https?:\/+(?:[^\/]+\.)?soso\.com\//],
					'tchb': [/^https?:\/+(?:[^\/]+\.)?tchb\.gov\.tw\//],
					'4pppc': [/^https?:\/+(?:[^\/]+\.)?4pppc\.gov\.tw\//],
					'pabp': [/^https?:\/+(?:[^\/]+\.)?pabp\.gov\.tw\//],
					'thbstc': [/^https?:\/+(?:[^\/]+\.)?thbstc\.gov\.tw\//],
					'arte': [/^https?:\/+(?:[^\/]+\.)?arte\.gov\.tw\//],
					'iner': [/^https?:\/+(?:[^\/]+\.)?iner\.gov\.tw\//],
					'cromotc': [/^https?:\/+(?:[^\/]+\.)?cromotc\.nat\.gov\.tw\//],
					'imagesblog': [/^https?:\/+(?:[^\/]+\.)?imagesblog\.gio\.gov\.tw\//],
					'ntdmh': [/^https?:\/+(?:[^\/]+\.)?ntdmh\.gov\.tw\//],
					'yahoo': [/^https?:\/+(?:[^\/]+\.)?yahoo\.cn\//],
					'tripod': [/^https?:\/+(?:[^\/]+\.)?www\.tripod\.com\//],
					'nmmba': [/^https?:\/+(?:[^\/]+\.)?nmmba\.gov\.tw\//],
					'yatsen': [/^https?:\/+(?:[^\/]+\.)?yatsen\.gov\.tw\//],
					'nstm': [/^https?:\/+(?:[^\/]+\.)?nstm\.gov\.tw\//],
					'cp-house': [/^https?:\/+(?:[^\/]+\.)?cp\-house\.gov\.tw\//],
					'tax': [/^https?:\/+(?:[^\/]+\.)?tax\.nat\.gov\.tw\//],
					'dmtip': [/^https?:\/+(?:[^\/]+\.)?dmtip\.gov\.tw\//],
					'nerhl': [/^https?:\/+(?:[^\/]+\.)?nerhl\.gov\.tw\//],
					'typepad': [/(?:^https?:\/+(?:[^\/]+\.)?static\.typepad\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?www\.typepad\.com\/)/],
					'chukuang': [/^https?:\/+(?:[^\/]+\.)?chukuang\.gov\.tw\//],
					'gysd': [/^https?:\/+(?:[^\/]+\.)?gysd\.nyc\.gov\.tw\//],
					'womenbusiness': [/^https?:\/+(?:[^\/]+\.)?womenbusiness\.nyc\.gov\.tw\//],
					'ncdr': [/^https?:\/+(?:[^\/]+\.)?ncdr\.nat\.gov\.tw\//],
					'nict': [/^https?:\/+(?:[^\/]+\.)?nict\.gov\.tw\//],
					'chccc': [/^https?:\/+(?:[^\/]+\.)?chccc\.gov\.tw\//],
					'syniumsoftware': [/^https?:\/+(?:[^\/]+\.)?download\.syniumsoftware\.com\//],
					'etraining': [/^https?:\/+(?:[^\/]+\.)?etraining\.gov\.tw\//],
					'nici': [/^https?:\/+(?:[^\/]+\.)?nici\.nat\.gov\.tw\//],
					'grb': [/^https?:\/+(?:[^\/]+\.)?grb\.gov\.tw\//],
					'npm': [/^https?:\/+(?:[^\/]+\.)?npm\.gov\.tw\//],
					'tpde': [/^https?:\/+(?:[^\/]+\.)?tpde\.aide\.gov\.tw\//],
					'autoproxy': [/^https\:\/\/autoproxy\.org/],
					'hengchuen': [/^https?:\/+(?:[^\/]+\.)?hengchuen\.gov\.tw\//],
					'stag': [/^https?:\/+(?:[^\/]+\.)?stag\.gov\.tw\//],
					'tphcc': [/^https?:\/+(?:[^\/]+\.)?tphcc\.gov\.tw\//],
					'yvtc': [/^https?:\/+(?:[^\/]+\.)?yvtc\.gov\.tw\//],
					'vghtpe': [/^https?:\/+(?:[^\/]+\.)?vghtpe\.gov\.tw\//],
					'dapu-house': [/^https?:\/+(?:[^\/]+\.)?dapu\-house\.gov\.tw\//],
					'so': [/^https?:\/+(?:[^\/]+\.)?so\.com\//],
					'klra': [/^https?:\/+(?:[^\/]+\.)?klra\.gov\.tw\//],
					'bdhr': [/^https?:\/+(?:[^\/]+\.)?bdhr\.gov\.tw\//]
				}, {
					'bobulate': [/^https?:\/+(?:[^\/]+\.)?bobulate\.com\//],
					'zillionk': [/^https?:\/+(?:[^\/]+\.)?zillionk\.com\//],
					'files2me': [/^http\:\/\/files2me\.com/],
					'workatruna': [/^https?:\/+(?:[^\/]+\.)?workatruna\.com\//],
					'theatrum-belli': [/^https?:\/+(?:[^\/]+\.)?theatrum\-belli\.com\//],
					'junauza': [/^https?:\/+(?:[^\/]+\.)?junauza\.com\//],
					'taipeisociety': [/^https?:\/+(?:[^\/]+\.)?taipeisociety\.org\//],
					'foxsub': [/^https?:\/+(?:[^\/]+\.)?foxsub\.com\//],
					'favorious': [/^https?:\/+(?:[^\/]+\.)?favorious\.com\//],
					'twittertim': [/^https?:\/+(?:[^\/]+\.)?twittertim\.es\//],
					'budaedu': [/^https?:\/+(?:[^\/]+\.)?budaedu\.org\//],
					'nownews': [/^https?:\/+(?:[^\/]+\.)?nownews\.com\//],
					'verybs': [/^https?:\/+(?:[^\/]+\.)?verybs\.com\//],
					'wangafu': [/^https?:\/+(?:[^\/]+\.)?wangafu\.net\//],
					'aculo': [/^https?:\/+(?:[^\/]+\.)?aculo\.us\//],
					'cms': [/^https?:\/+(?:[^\/]+\.)?cms\.gov\//],
					'ifan': [/^https?:\/+(?:[^\/]+\.)?ifan\.cz\.cc\//],
					'xiaohexie': [/^https?:\/+(?:[^\/]+\.)?xiaohexie\.com\//],
					'martincartoons': [/^https?:\/+(?:[^\/]+\.)?martincartoons\.com\//],
					'felixcat': [/^https?:\/+(?:[^\/]+\.)?felixcat\.net\//],
					'redren': [/blog\.redren\.com\/2009\/01\/jap\-let\-you\-use\-online\-stealth/],
					'cenci': [/^https?:\/+(?:[^\/]+\.)?cenci\.tk\//],
					'mmaaxx': [/^https?:\/+(?:[^\/]+\.)?mmaaxx\.com\//],
					'thedailywh': [/^https?:\/+(?:[^\/]+\.)?thedailywh\.at\//],
					'sorting-algorithms': [/^https?:\/+(?:[^\/]+\.)?sorting\-algorithms\.com\//],
					'dadazim': [/^https?:\/+(?:[^\/]+\.)?dadazim\.com\//],
					'pts': [/^https?:\/+(?:[^\/]+\.)?pts\.org\.tw\//],
					'mycould': [/^https?:\/+(?:[^\/]+\.)?www\.mycould\.com\//],
					'hakkatv': [/^https?:\/+(?:[^\/]+\.)?hakkatv\.org\.tw\//],
					'kun': [/^https?:\/+(?:[^\/]+\.)?t\.kun\.im\//],
					'tibetonline': [/(?:^https?:\/+(?:[^\/]+\.)?tibetonline\.tv\/)|(?:^https?:\/+(?:[^\/]+\.)?tibetonline\.com\/)/],
					'twaud': [/^https?:\/+(?:[^\/]+\.)?twaud\.io\//],
					'twttr': [/^https?:\/+(?:[^\/]+\.)?twttr\.com\//],
					'epochweekly': [/^https?:\/+(?:[^\/]+\.)?epochweekly\.com\//],
					'get-digital-help': [/^https?:\/+(?:[^\/]+\.)?get\-digital\-help\.com\//],
					'topify': [/^https?:\/+(?:[^\/]+\.)?blog\.topify\.com\//],
					'cochina': [/^https?:\/+(?:[^\/]+\.)?cochina\.org\//],
					'cherrysave': [/^https?:\/+(?:[^\/]+\.)?cherrysave\.com\//],
					'forum': [/forum\.tvb\.com\//],
					'wallpapercasa': [/^https?:\/+(?:[^\/]+\.)?wallpapercasa\.com\//],
					'itunes': [/(?:itunes\.apple\..*375584677)|(?:itunes\.apple\..*358801284)|(?:itunes\.apple\..*285688934)|(?:itunes\.apple\..*319295332)|(?:itunes\.apple\..*383949089)|(?:itunes\.apple\..*418987775)|(?:itunes\.apple\.com\/us.*id447119634)/],
					'sugarsync': [/^https?:\/+(?:[^\/]+\.)?sugarsync\.com\//],
					'michaelmarketl': [/^https?:\/+(?:[^\/]+\.)?michaelmarketl\.com\//],
					'centurys': [/^http\:\/\/centurys\.net/],
					'tagwalk': [/^https?:\/+(?:[^\/]+\.)?tagwalk\.com\//],
					'googlecode': [/^https?:\/+(?:[^\/]+\.)?googlecode\.com\//],
					'wikimedia': [/(?:^https\:\/\/upload\.wikimedia\.org)|(?:^https?:\/+(?:[^\/]+\.)?wikimedia\.org\.mo\/)|(?:^https?:\/+(?:[^\/]+\.)?secure\.wikimedia\.org\/)/],
					'jayparkinsonmd': [/^https?:\/+(?:[^\/]+\.)?jayparkinsonmd\.com\//],
					'tafaward': [/^https?:\/+(?:[^\/]+\.)?tafaward\.com\//],
					'dfanning': [/^http\:\/\/www\.dfanning\.com/],
					'wenku': [/^https?:\/+(?:[^\/]+\.)?wenku\.com\//],
					'morningsun': [/^https?:\/+(?:[^\/]+\.)?morningsun\.org\//],
					'ihakka': [/^https?:\/+(?:[^\/]+\.)?ihakka\.net\//],
					'twblogger': [/^https?:\/+(?:[^\/]+\.)?twblogger\.com\//],
					'epochtimes-bg': [/^https?:\/+(?:[^\/]+\.)?epochtimes\-bg\.com\//],
					'army': [/^https?:\/+(?:[^\/]+\.)?army\.mil\//],
					'calameo': [/(?:\.calameo\.com\/books)|(?:^http\:\/\/cn\.calameo\.com)/],
					'popyard': [/^https?:\/+(?:[^\/]+\.)?popyard\.org\//],
					'hutianyi': [/^https?:\/+(?:[^\/]+\.)?hutianyi\.net\//],
					'catcatbox': [/^http\:\/\/catcatbox\.com\/forum\.php/],
					'juziyue': [/^https?:\/+(?:[^\/]+\.)?juziyue\.com\//],
					'illusionfactory': [/^https?:\/+(?:[^\/]+\.)?illusionfactory\.com\//],
					'gimpshop': [/^https?:\/+(?:[^\/]+\.)?gimpshop\.com\//],
					'md-t': [/^https?:\/+(?:[^\/]+\.)?md\-t\.org\//],
					'playboy': [/^https?:\/+(?:[^\/]+\.)?playboy\.com\//],
					'365singles': [/^https?:\/+(?:[^\/]+\.)?365singles\.com\.ar\//],
					'chenguangcheng': [/^https?:\/+(?:[^\/]+\.)?chenguangcheng\.com\//],
					'xmusic': [/^https?:\/+(?:[^\/]+\.)?xmusic\.fm\//],
					'yousendit': [/^https?:\/+(?:[^\/]+\.)?yousendit\.com\//],
					'qoos': [/^https?:\/+(?:[^\/]+\.)?qoos\.com\//],
					'faststone': [/^https?:\/+(?:[^\/]+\.)?faststone\.org\//],
					'tvunetworks': [/^https?:\/+(?:[^\/]+\.)?tvunetworks\.com\//],
					'gazotube': [/^https?:\/+(?:[^\/]+\.)?gazotube\.com\//],
					'mp': [/^https?:\/+(?:[^\/]+\.)?j\.mp\//],
					'sinica': [/^https?:\/+(?:[^\/]+\.)?cdp\.sinica\.edu\.tw\//],
					'chinaxchina': [/chinaxchina\.com\/howto/],
					'trialofccp': [/^https?:\/+(?:[^\/]+\.)?trialofccp\.org\//],
					'cantonese': [/(?:^http\:\/\/bbs\.cantonese\.asia\/)|(?:^http\:\/\/www\.cantonese\.asia\/action\-bbs\.html)/],
					'zhanbin': [/^https?:\/+(?:[^\/]+\.)?zhanbin\.net\//],
					'vpncup': [/^https?:\/+(?:[^\/]+\.)?www\.vpncup\.com\//],
					'zuola': [/^https?:\/+(?:[^\/]+\.)?zuola\.com\//],
					'fscked': [/^https?:\/+(?:[^\/]+\.)?fscked\.org\//],
					'twibs': [/^https?:\/+(?:[^\/]+\.)?twibs\.com\//],
					'lastfm': [/^https?:\/+(?:[^\/]+\.)?lastfm\.es\//],
					'civicparty': [/^https?:\/+(?:[^\/]+\.)?civicparty\.hk\//],
					'tumblweed': [/^https?:\/+(?:[^\/]+\.)?tumblweed\.org\//],
					'gopetition': [/^https?:\/+(?:[^\/]+\.)?gopetition\.com\//],
					'areca-backup': [/^https?:\/+(?:[^\/]+\.)?areca\-backup\.org\//],
					'tweetmylast': [/^https?:\/+(?:[^\/]+\.)?tweetmylast\.fm\//],
					'freakshare': [/^http\:\/\/freakshare\.com/],
					'toutfr': [/^https?:\/+(?:[^\/]+\.)?toutfr\.com\//],
					'imagezilla': [/^https?:\/+(?:[^\/]+\.)?imagezilla\.net\//],
					'--isaacmao': [/^https?:\/+(?:[^\/]+\.)?\!\-\-isaacmao\.com\//],
					'geohot': [/^https?:\/+(?:[^\/]+\.)?geohot\.com\//],
					'cenews': [/^https?:\/+(?:[^\/]+\.)?cenews\.eu\//],
					'fotop': [/^https?:\/+(?:[^\/]+\.)?fotop\.net\//],
					'youporn': [/^https?:\/+(?:[^\/]+\.)?youporn\.com\//],
					'vcf-online': [/^https?:\/+(?:[^\/]+\.)?vcf\-online\.org\//],
					'zhreader': [/^https?:\/+(?:[^\/]+\.)?zhreader\.com\//],
					'chandoo': [/^https?:\/+(?:[^\/]+\.)?chandoo\.org\//],
					'dailidaili': [/^https?:\/+(?:[^\/]+\.)?dailidaili\.com\//],
					'dotplane': [/^https?:\/+(?:[^\/]+\.)?dotplane\.com\//],
					'deck': [/^http\:\/\/deck\.ly/],
					'wikiwiki': [/^https?:\/+(?:[^\/]+\.)?wikiwiki\.jp\//],
					'designerol': [/^https?:\/+(?:[^\/]+\.)?designerol\.com\//],
					'gtricks': [/^https?:\/+(?:[^\/]+\.)?gtricks\.com\//],
					'gmhz': [/^https?:\/+(?:[^\/]+\.)?gmhz\.org\//],
					'andfaraway': [/^https?:\/+(?:[^\/]+\.)?andfaraway\.net\//],
					'img': [/^https?:\/+(?:[^\/]+\.)?img\.ly\//],
					'fofg': [/^https?:\/+(?:[^\/]+\.)?fofg\.org\//],
					'navigeaters': [/^https?:\/+(?:[^\/]+\.)?navigeaters\.com\//],
					'blogger': [/^https?:\/+(?:[^\/]+\.)?blogger\.com\//],
					'meteorshowersonline': [/^https?:\/+(?:[^\/]+\.)?meteorshowersonline\.com\//],
					'break': [/^https?:\/+(?:[^\/]+\.)?break\.com\//],
					'christusrex': [/christusrex\.org\/www1\/sdc/],
					'taolun': [/^https?:\/+(?:[^\/]+\.)?taolun\.info\//],
					'ifttt': [/^https?:\/+(?:[^\/]+\.)?blog\.ifttt\.com\//],
					'moviefap': [/^https?:\/+(?:[^\/]+\.)?moviefap\.com\//],
					'erights': [/^https?:\/+(?:[^\/]+\.)?erights\.net\//],
					'hellotxt': [/^https?:\/+(?:[^\/]+\.)?hellotxt\.com\//],
					'hellouk': [/\.hellouk\.org\/forum\/lofiversion/],
					'billypan': [/billypan\.com\/wiki\/\%e9\%a6\%96\%e9\%a0\%81/],
					'junefourth-20': [/^https?:\/+(?:[^\/]+\.)?junefourth\-20\.net\//],
					'orientaldaily': [/^https?:\/+(?:[^\/]+\.)?orientaldaily\.com\.my\//],
					'laogai': [/^https?:\/+(?:[^\/]+\.)?laogai\.org\//],
					'navy': [/^https?:\/+(?:[^\/]+\.)?navy\.mil\//],
					'juliereyc': [/^https?:\/+(?:[^\/]+\.)?juliereyc\.com\//],
					'ironbigfools': [/^https?:\/+(?:[^\/]+\.)?ironbigfools\.compython\.net\//],
					'twapperkeeper': [/^https?:\/+(?:[^\/]+\.)?twapperkeeper\.com\//],
					'brizzly': [/^https?:\/+(?:[^\/]+\.)?brizzly\.com\//],
					'mx981': [/^https?:\/+(?:[^\/]+\.)?mx981\.com\//],
					'hougaige': [/^https?:\/+(?:[^\/]+\.)?hougaige\.com\//],
					'hootsuite': [/^https?:\/+(?:[^\/]+\.)?hootsuite\.com\//],
					'liujianshu': [/^https?:\/+(?:[^\/]+\.)?liujianshu\.com\//],
					'anobii': [/^https?:\/+(?:[^\/]+\.)?anobii\.com\//],
					'nodesnoop': [/^https?:\/+(?:[^\/]+\.)?fourface\.nodesnoop\.com\//],
					'throughnightsfire': [/^https?:\/+(?:[^\/]+\.)?throughnightsfire\.com\//],
					'eyevio': [/^https?:\/+(?:[^\/]+\.)?eyevio\.jp\//],
					'free': [/\.free\.fr\/adsl/],
					'popularpages': [/^https?:\/+(?:[^\/]+\.)?popularpages\.net\//],
					'retweetrank': [/^https?:\/+(?:[^\/]+\.)?retweetrank\.com\//],
					'fring': [/^https?:\/+(?:[^\/]+\.)?fring\.com\//],
					'soundcloud': [/(?:soundcloud\.com\/punkgod)|(?:^https\:\/\/soundcloud\.com\/punkgod)/],
					'latimesblogs': [/^https?:\/+(?:[^\/]+\.)?latimesblogs\.latimes\.com\//],
					'myaudiocast': [/^https?:\/+(?:[^\/]+\.)?myaudiocast\.com\//],
					'heiyo': [/^https?:\/+(?:[^\/]+\.)?heiyo\.info\//],
					'hdtvb': [/^https?:\/+(?:[^\/]+\.)?hdtvb\.net\//],
					'akiba-online': [/^https?:\/+(?:[^\/]+\.)?akiba\-online\.com\//],
					'atj': [/^https?:\/+(?:[^\/]+\.)?atj\.org\.tw\//],
					'fourthinternational': [/^https?:\/+(?:[^\/]+\.)?fourthinternational\.org\//],
					'drewolanoff': [/^https?:\/+(?:[^\/]+\.)?drewolanoff\.com\//],
					'feedzshare': [/^https?:\/+(?:[^\/]+\.)?feedzshare\.com\//],
					'techparaiso': [/^https?:\/+(?:[^\/]+\.)?techparaiso\.com\//],
					'art-or-porn': [/^https?:\/+(?:[^\/]+\.)?art\-or\-porn\.com\//],
					'delicious': [/delicious\.com\/gfwbookmark/],
					'advertfan': [/^https?:\/+(?:[^\/]+\.)?advertfan\.com\//],
					'hidden-advent': [/^https?:\/+(?:[^\/]+\.)?hidden\-advent\.org\//],
					'syx86': [/(?:blog\.syx86\.com\/2009\/09\/puff)|(?:blog\.syx86\.cn\/2009\/09\/puff)/],
					'lenwhite': [/^https?:\/+(?:[^\/]+\.)?lenwhite\.com\//],
					'beijing1989': [/^https?:\/+(?:[^\/]+\.)?beijing1989\.com\//],
					'yunchao': [/^https?:\/+(?:[^\/]+\.)?yunchao\.net\//],
					'noypf': [/^https?:\/+(?:[^\/]+\.)?noypf\.com\//],
					'fredwilson': [/^https?:\/+(?:[^\/]+\.)?fredwilson\.vc\//],
					'freedomhouse': [/^https?:\/+(?:[^\/]+\.)?freedomhouse\.org\//],
					'pure18': [/^https?:\/+(?:[^\/]+\.)?pure18\.com\//],
					'dontmovetochina': [/^https?:\/+(?:[^\/]+\.)?dontmovetochina\.com\//],
					'myparagliding': [/^https?:\/+(?:[^\/]+\.)?myparagliding\.com\//],
					'instapaper': [/^https?:\/+(?:[^\/]+\.)?blog\.instapaper\.com\//],
					'twibble': [/^https?:\/+(?:[^\/]+\.)?twibble\.de\//],
					'mrtweet': [/^https?:\/+(?:[^\/]+\.)?mrtweet\.com\//],
					'tokyocn': [/^https?:\/+(?:[^\/]+\.)?tokyocn\.com\//],
					'bebo': [/^https?:\/+(?:[^\/]+\.)?bebo\.com\//],
					'brightkite': [/^https?:\/+(?:[^\/]+\.)?brightkite\.com\//],
					'franklc': [/^https?:\/+(?:[^\/]+\.)?franklc\.com\//],
					'twitvid': [/^https?:\/+(?:[^\/]+\.)?twitvid\.com\//],
					'dotheyfolloweachother': [/^https?:\/+(?:[^\/]+\.)?dotheyfolloweachother\.com\//],
					'bayvoice': [/^https?:\/+(?:[^\/]+\.)?bayvoice\.net\//],
					'soundofhope': [/^https?:\/+(?:[^\/]+\.)?soundofhope\.org\//],
					'falunhr': [/^https?:\/+(?:[^\/]+\.)?falunhr\.org\//],
					'fangbinxing': [/^https?:\/+(?:[^\/]+\.)?fangbinxing\.com\//],
					'itshidden': [/^https?:\/+(?:[^\/]+\.)?itshidden\.com\//],
					'ggssl': [/^https?:\/+(?:[^\/]+\.)?ggssl\.com\//],
					'dalailamaworld': [/^https?:\/+(?:[^\/]+\.)?dalailamaworld\.com\//],
					'prayforchina': [/^https?:\/+(?:[^\/]+\.)?prayforchina\.net\//],
					'pbxes': [/(?:^https?:\/+(?:[^\/]+\.)?pbxes\.org\/)|(?:^https?:\/+(?:[^\/]+\.)?pbxes\.com\/)/],
					'szetowah': [/^https?:\/+(?:[^\/]+\.)?szetowah\.org\.hk\//],
					'tiandixing': [/^https?:\/+(?:[^\/]+\.)?tiandixing\.org\//],
					'boxcar': [/^https?:\/+(?:[^\/]+\.)?blog\.boxcar\.io\//],
					'naitik': [/^https?:\/+(?:[^\/]+\.)?naitik\.net\//],
					'ignitedetroit': [/^https?:\/+(?:[^\/]+\.)?ignitedetroit\.net\//],
					'metrolife': [/^https?:\/+(?:[^\/]+\.)?metrolife\.ca\//],
					'aboluowang': [/^https?:\/+(?:[^\/]+\.)?aboluowang\.com\//],
					'melon-peach': [/^https?:\/+(?:[^\/]+\.)?melon\-peach\.com\//],
					'neighborhoodr': [/^https?:\/+(?:[^\/]+\.)?london\.neighborhoodr\.com\//],
					'cams': [/^https?:\/+(?:[^\/]+\.)?cams\.com\//],
					'mixx': [/^https?:\/+(?:[^\/]+\.)?mixx\.com\//],
					'davidziegler': [/^https?:\/+(?:[^\/]+\.)?blog\.davidziegler\.net\//],
					'anchorfree': [/^https?:\/+(?:[^\/]+\.)?anchorfree\.com\//],
					'geek-art': [/^https?:\/+(?:[^\/]+\.)?geek\-art\.net\//],
					'teck': [/^https?:\/+(?:[^\/]+\.)?teck\.in\//],
					'hidemyass': [/^https?:\/+(?:[^\/]+\.)?hidemyass\.com\//],
					'fuckgfw': [/^https?:\/+(?:[^\/]+\.)?fuckgfw\.com\//],
					'9city': [/\.9city\.me\/archiver.*308578\.html/],
					'nakido': [/^https?:\/+(?:[^\/]+\.)?nakido\.com\//],
					'e-spacy': [/^https?:\/+(?:[^\/]+\.)?chaos\.e\-spacy\.com\//],
					'china101': [/^https?:\/+(?:[^\/]+\.)?china101\.com\//],
					'fengzhenghu': [/^https?:\/+(?:[^\/]+\.)?fengzhenghu\.com\//],
					'fizzik': [/^https?:\/+(?:[^\/]+\.)?blog\.fizzik\.com\//],
					'chinaaffairs': [/^https?:\/+(?:[^\/]+\.)?chinaaffairs\.org\//],
					'asiaharvest': [/^https?:\/+(?:[^\/]+\.)?asiaharvest\.org\//],
					'whatblocked': [/^https?:\/+(?:[^\/]+\.)?whatblocked\.com\//],
					'kui': [/\.kui\.name\/event/],
					'koolsolutions': [/^https?:\/+(?:[^\/]+\.)?koolsolutions\.com\//],
					'photofocus': [/^https?:\/+(?:[^\/]+\.)?photofocus\.com\//],
					'amazon': [/amazon\.com\/prisoner\-state\-secret\-journal\-premier/],
					'dw': [/^http\:\/\/dw\.de/],
					'bfnn': [/^https?:\/+(?:[^\/]+\.)?bfnn\.org\//],
					'internationalrivers': [/^https?:\/+(?:[^\/]+\.)?internationalrivers\.org\//],
					'robustnessiskey': [/^https?:\/+(?:[^\/]+\.)?robustnessiskey\.com\//],
					'wenyunchao': [/^https?:\/+(?:[^\/]+\.)?wenyunchao\.com\//],
					'helloandroid': [/^https?:\/+(?:[^\/]+\.)?helloandroid\.com\//],
					'hotspotshield': [/^https?:\/+(?:[^\/]+\.)?hotspotshield\.com\//],
					'proxypy': [/^https?:\/+(?:[^\/]+\.)?proxypy\.net\//],
					'all-that-is-interesting': [/^https?:\/+(?:[^\/]+\.)?all\-that\-is\-interesting\.com\//],
					'youthnetradio': [/\.youthnetradio\.org\/tmit\/forum/],
					'helloqueer': [/^https?:\/+(?:[^\/]+\.)?helloqueer\.com\//],
					'tcno': [/tcno\.net.*doc.*tor/],
					'twifan': [/^http\:\/\/twifan\.com/],
					'ajaxplorer': [/^https?:\/+(?:[^\/]+\.)?ajaxplorer\.info\//],
					'qstatus': [/^https?:\/+(?:[^\/]+\.)?qstatus\.com\//],
					'chinaeweekly': [/^https?:\/+(?:[^\/]+\.)?chinaeweekly\.com\//],
					'wikipedia': [/(?:zh\.wikipedia\.org\/wiki\/wikipedia\:\%e9\%a0\%81\%e9\%9d\%a2\%e5\%ad\%98\%e5\%bb\%a2\%e8\%a8\%8e\%e8\%ab\%96)|(?:en\.wikipedia\.org\/wiki\/liu_xiaobo)|(?:en\.wikipedia\.org\/wiki\/golden_shield_project)|(?:zh\.wikipedia\.org\/zh\-cn\/tor)|(?:en\.wikipedia\.org\/wiki\/huang_qi)|(?:zh\.wikipedia\.org\/wiki\/\%e5\%b9\%bf\%e5\%b7\%9e\%e5\%b8\%82\%e6\%96\%b0\%e5\%a1\%98\%e4\%ba\%8b\%e4\%bb\%b6)|(?:en\.wikipedia\.org\/wiki\/charter_08)|(?:zh\.wikipedia\.org\/wiki\/\%e8\%b0\%b7\%e6\%ad\%8c\%e9\%80\%80\%e5\%87\%ba\%e4\%b8\%ad\%e5\%9b\%bd\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\-yue\.wikipedia\.org\/wiki\/\%e5\%8a\%89\%e6\%9b\%89\%e6\%b3\%a2)|(?:zh\.wikipedia\.org\/wiki\/\%e7\%8e\%8b\%e5\%a7\%93)|(?:en\.wikipedia\.org\/wiki\/deep_packet_inspection)|(?:en\.wikipedia\.org\/wiki\/tibetan_independence_movement)|(?:zh\.wikipedia\.org\/zh\/\%e9\%99\%b6\%e9\%a9\%b7\%e9\%a9\%b9)|(?:en\.wikipedia\.org\/wiki\/tank_man)|(?:zh\.wikipedia\.org\/zh\-tw\/\%e5\%86\%85\%e8\%92\%99\%e5\%8f\%a4\%e6\%8a\%97\%e8\%ae\%ae)|(?:\.wikipedia\.org\/wiki\/dalai_lama)|(?:en\.wikipedia\.org\/wiki\/book_burning)|(?:zh\.wikipedia\.org\/zh\-hk\/\%e5\%86\%85\%e8\%92\%99\%e5\%8f\%a4\%e6\%8a\%97\%e8\%ae\%ae)|(?:zh\.wikipedia\.org\/wiki\/\%e6\%96\%87\%e5\%ad\%97\%e7\%8b\%b1)|(?:zh\.wikipedia\.org\/zh\-cn\/\%e8\%b0\%b7\%e6\%ad\%8c\%e9\%80\%80\%e5\%87\%ba\%e4\%b8\%ad\%e5\%9b\%bd\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org\/wiki\/\%e6\%96\%87\%e5\%ad\%97\%e7\%8d\%84)|(?:en\.wikipedia\.org\/wiki\/freegate)|(?:en\.wikipedia\.org\/wiki\/chen_guangcheng)|(?:zh\.wikipedia\.org\/zh\-hk\/twitter)|(?:en\.wikipedia\.org\/wiki\/internet_censorship)|(?:en\.wikipedia\.org\/wiki\/tiananmen_papers)|(?:zh\.wikipedia\.org\/wiki\/\%e5\%86\%85\%e8\%92\%99\%e5\%8f\%a4\%e6\%8a\%97\%e8\%ae\%ae)|(?:en\.wikipedia\.org\/wiki\/hong_kong)|(?:en\.wikipedia\.org\/wiki\/shi_tao)|(?:\.wikipedia\.org\/wiki\/dalai\-lama)|(?:en\.wikipedia\.org\/wiki\/anti\-communism)|(?:en\.wikipedia\.org\/wiki\/censorship_in_the_people\%27s_republic_of_china)|(?:^https\:\/\/.*\.wikipedia\.org)|(?:zh\.wikipedia\.org\/zh\-cn\/\%e5\%a4\%aa\%e5\%ad\%90\%e5\%85\%9a)|(?:en\.wikipedia\.org\/wiki\/tiananmen_square_protests_of_1989)|(?:zh\.wikipedia\.org\/zh\-cn\/\%e4\%b8\%96\%e7\%95\%8c\%e5\%90\%84\%e6\%94\%bf\%e6\%9d\%83\%e5\%8f\%97\%e6\%89\%bf\%e8\%ae\%a4\%e7\%8a\%b6\%e5\%86\%b5\%e5\%88\%97\%e8\%a1\%a8)|(?:zh\.wikipedia\.org\/wiki\/\%e4\%b8\%ad\%e5\%9b\%bd)|(?:zh\.wikipedia\.org\/wiki\/\%e7\%bb\%bf\%e5\%9d\%9d\%e5\%a8\%98)|(?:en\.wikipedia\.org\/wiki\/java_anon_proxy)/],
					'mizzmona': [/^https?:\/+(?:[^\/]+\.)?mizzmona\.com\//],
					'tv-intros': [/^https?:\/+(?:[^\/]+\.)?tv\-intros\.com\//],
					'benjaminste': [/^https?:\/+(?:[^\/]+\.)?benjaminste\.in\//],
					'weeewooo': [/weeewooo\.net\/hss\/hotspot_cn/],
					'saiq': [/^https?:\/+(?:[^\/]+\.)?saiq\.me\//],
					'thelius': [/^https?:\/+(?:[^\/]+\.)?thelius\.org\//],
					'daxa': [/^https?:\/+(?:[^\/]+\.)?daxa\.cn\//],
					'ipicture': [/^https?:\/+(?:[^\/]+\.)?ipicture\.ru\//],
					'lupm': [/^https?:\/+(?:[^\/]+\.)?lupm\.org\//],
					'tuxtraining': [/^https?:\/+(?:[^\/]+\.)?tuxtraining\.com\//],
					'wearn': [/^https?:\/+(?:[^\/]+\.)?wearn\.com\//],
					'news': [/news\.bbc\.co\.uk\/onthisday.*newsid_2496000\/2496277/],
					'packages': [/packages\.debian\.org\/zh\-cn\/lenny\/gpass/],
					'myforum': [/(?:^https?:\/+(?:[^\/]+\.)?myforum\.com\.uk\/)|(?:^https?:\/+(?:[^\/]+\.)?myforum\.com\.hk\/)/],
					'twitterkr': [/^https?:\/+(?:[^\/]+\.)?twitterkr\.com\//],
					'expatshield': [/^https?:\/+(?:[^\/]+\.)?expatshield\.com\//],
					'unknownspace': [/^https?:\/+(?:[^\/]+\.)?unknownspace\.org\//],
					'gamer': [/^https?:\/+(?:[^\/]+\.)?gamer\.com\.tw\//],
					'qtrac': [/^https?:\/+(?:[^\/]+\.)?qtrac\.eu\//],
					'gamez': [/^https?:\/+(?:[^\/]+\.)?gamez\.com\.tw\//],
					'sinoants': [/^https?:\/+(?:[^\/]+\.)?sinoants\.com\//],
					'naacoalition': [/^https?:\/+(?:[^\/]+\.)?naacoalition\.org\//],
					'globalvoicesonline': [/^https?:\/+(?:[^\/]+\.)?globalvoicesonline\.org\//],
					'novelasia': [/^https?:\/+(?:[^\/]+\.)?novelasia\.com\//],
					'pornrapidshare': [/^https?:\/+(?:[^\/]+\.)?pornrapidshare\.com\//],
					'bnrmetal': [/^https?:\/+(?:[^\/]+\.)?bnrmetal\.com\//],
					'ialmostlaugh': [/^https?:\/+(?:[^\/]+\.)?ialmostlaugh\.com\//],
					'hugoroy': [/^https?:\/+(?:[^\/]+\.)?hugoroy\.eu\//],
					'10musume': [/^https?:\/+(?:[^\/]+\.)?10musume\.com\//],
					'lidecheng': [/\.lidecheng\.com\/blog\/fucking\-gfw/],
					'ait': [/^https?:\/+(?:[^\/]+\.)?ait\.org\.tw\//],
					'zlib': [/^https?:\/+(?:[^\/]+\.)?zlib\.net\//],
					'theampfactory': [/^https?:\/+(?:[^\/]+\.)?theampfactory\.com\//],
					'feedburner': [/feeds2\.feedburner\.com\/chinagfwblog/],
					'icl-fi': [/^https?:\/+(?:[^\/]+\.)?icl\-fi\.org\//],
					'yegle': [/^https?:\/+(?:[^\/]+\.)?yegle\.net\//],
					'killwall': [/^https?:\/+(?:[^\/]+\.)?killwall\.com\//],
					'bbcchinese': [/^https?:\/+(?:[^\/]+\.)?bbcchinese\.com\//],
					'girlbanker': [/^https?:\/+(?:[^\/]+\.)?girlbanker\.com\//],
					'im': [/^https?:\/+(?:[^\/]+\.)?im\.tv\//],
					'blockcn': [/^https?:\/+(?:[^\/]+\.)?blockcn\.com\//],
					'posterous': [/^http\:\/\/posterous\.com/],
					'allaboutalpha': [/^https?:\/+(?:[^\/]+\.)?allaboutalpha\.com\//],
					'greatfire': [/^https?:\/+(?:[^\/]+\.)?greatfire\.org\//],
					'meetup': [/^https?:\/+(?:[^\/]+\.)?meetup\.com\//],
					'livevideo': [/^https?:\/+(?:[^\/]+\.)?livevideo\.com\//],
					'2000fun': [/\.2000fun\.com\/bbs/],
					'getjetso': [/\.getjetso\.com\/forum/],
					'i1': [/^https?:\/+(?:[^\/]+\.)?i1\.hk\//],
					'nic': [/^https?:\/+(?:[^\/]+\.)?nic\.cz\.cc\//],
					'boxunblog': [/^https?:\/+(?:[^\/]+\.)?boxunblog\.com\//],
					'zaobao': [/^https?:\/+(?:[^\/]+\.)?zaobao\.com\.sg\//],
					'bloomberg': [/(?:^https?:\/+(?:[^\/]+\.)?bloomberg\.cn\/)|(?:^https?:\/+(?:[^\/]+\.)?bloomberg\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?bloomberg\.de\/)/],
					'slavasoft': [/^https?:\/+(?:[^\/]+\.)?slavasoft\.com\//],
					'maxgif': [/^https?:\/+(?:[^\/]+\.)?maxgif\.com\//],
					'myshare': [/myshare\.url\.com\.tw\//],
					'getcloudapp': [/^https?:\/+(?:[^\/]+\.)?getcloudapp\.com\//],
					'xjp': [/^https?:\/+(?:[^\/]+\.)?xjp\.cc\//],
					'pandora': [/^https?:\/+(?:[^\/]+\.)?pandora\.com\//],
					'goofind': [/^https?:\/+(?:[^\/]+\.)?goofind\.com\//],
					'deutsche-welle': [/^https?:\/+(?:[^\/]+\.)?deutsche\-welle\.de\//],
					'cctongbao': [/\.cctongbao\.com\/article\/2078732/],
					'photo': [/^https?:\/+(?:[^\/]+\.)?photo\.utom\.us\//],
					'larsgeorge': [/^https?:\/+(?:[^\/]+\.)?larsgeorge\.com\//],
					'1-apple': [/^https?:\/+(?:[^\/]+\.)?1\-apple\.com\.tw\//],
					'tiscali': [/video\.tiscali\.it\/canali\/truveo/],
					'eyespirit': [/^https?:\/+(?:[^\/]+\.)?eyespirit\.info\//],
					'zinio': [/^https?:\/+(?:[^\/]+\.)?zinio\.com\//],
					'dalailama': [/^https?:\/+(?:[^\/]+\.)?dalailama\.ru\//],
					'cuhkacs': [/\.cuhkacs\.org\/\~benng/],
					'sankaizok': [/^https?:\/+(?:[^\/]+\.)?sankaizok\.com\//],
					'dl-laby': [/^https?:\/+(?:[^\/]+\.)?dl\-laby\.jp\//],
					'vpnpronet': [/^https?:\/+(?:[^\/]+\.)?vpnpronet\.com\//],
					'sis001': [/^https?:\/+(?:[^\/]+\.)?sis001\.com\//],
					'pixnet': [/(?:^https?:\/+(?:[^\/]+\.)?css\.pixnet\.in\/)|(?:^https?:\/+(?:[^\/]+\.)?pixnet\.net\/)/],
					'videobam': [/^https?:\/+(?:[^\/]+\.)?videobam\.com\//],
					'leecheukyan': [/^https?:\/+(?:[^\/]+\.)?leecheukyan\.org\//],
					'51': [/^https?:\/+(?:[^\/]+\.)?51\.ca\//],
					'dit-inc': [/^https?:\/+(?:[^\/]+\.)?dit\-inc\.us\//],
					'kenengba': [/^https?:\/+(?:[^\/]+\.)?kenengba\.com\//],
					'boardreader': [/(?:boardreader\.com\/thread)|(?:^https?:\/+(?:[^\/]+\.)?boardreader\.com\/)/],
					'kodingen': [/^https?:\/+(?:[^\/]+\.)?kodingen\.com\//],
					'oxid': [/^http\:\/\/www\.oxid\.it/],
					'contests': [/^https?:\/+(?:[^\/]+\.)?contests\.twilio\.com\//],
					'vatn': [/^https?:\/+(?:[^\/]+\.)?vatn\.org\//],
					'filefactory': [/\.filefactory\.com\/file/],
					'lockdown': [/^https?:\/+(?:[^\/]+\.)?lockdown\.com\//],
					'cnd': [/^https?:\/+(?:[^\/]+\.)?cnd\.org\//],
					'favstar': [/^https?:\/+(?:[^\/]+\.)?favstar\.fm\//],
					'cna': [/^https?:\/+(?:[^\/]+\.)?cna\.com\.tw\//],
					'cnn': [/\.cnn\.com\/video/],
					'fuckcnnic': [/^https?:\/+(?:[^\/]+\.)?fuckcnnic\.net\//],
					'pose': [/^https?:\/+(?:[^\/]+\.)?pose\.com\//],
					'exblog': [/(?:^https?:\/+(?:[^\/]+\.)?exblog\.jp\/)|(?:^https?:\/+(?:[^\/]+\.)?blog\.exblog\.co\.jp\/)/],
					'mychinamyhome': [/^https?:\/+(?:[^\/]+\.)?mychinamyhome\.com\//],
					'post': [/(?:^http\:\/\/post\.ly)|(?:^https?:\/+(?:[^\/]+\.)?post\.anyu\.org\/)/],
					'logiqx': [/^https?:\/+(?:[^\/]+\.)?logiqx\.com\//],
					'incredibox': [/^https?:\/+(?:[^\/]+\.)?incredibox\.fr\//],
					'lightbox': [/^https?:\/+(?:[^\/]+\.)?blog\.lightbox\.com\//],
					'rocmp': [/^https?:\/+(?:[^\/]+\.)?rocmp\.org\//],
					'beta': [/(?:^http\:\/\/beta\.iset\.com\.tw\/forum)|(?:\.beta\.iset\.com\.tw\/forum)/],
					'tweepml': [/^https?:\/+(?:[^\/]+\.)?tweepml\.org\//],
					'wepn': [/^https?:\/+(?:[^\/]+\.)?wepn\.info\//],
					'zuo': [/^https?:\/+(?:[^\/]+\.)?zuo\.la\//],
					'soc': [/^https?:\/+(?:[^\/]+\.)?soc\.mil\//],
					'koornk': [/^https?:\/+(?:[^\/]+\.)?koornk\.com\//],
					'soh': [/^https?:\/+(?:[^\/]+\.)?soh\.tw\//],
					'chinacomments': [/^https?:\/+(?:[^\/]+\.)?chinacomments\.org\//],
					'www': [/(?:^https?:\/+(?:[^\/]+\.)?www\.tv\.com\/)|(?:www\.rnw\.nl\/chinese)/],
					'usacn': [/^https?:\/+(?:[^\/]+\.)?usacn\.com\//],
					'magazines': [/^https?:\/+(?:[^\/]+\.)?magazines\.sina\.com\.tw\//],
					'sendoid': [/^https?:\/+(?:[^\/]+\.)?sendoid\.com\//],
					'efksoft': [/^https?:\/+(?:[^\/]+\.)?efksoft\.com\//],
					'singtao': [/^https?:\/+(?:[^\/]+\.)?singtao\.com\//],
					'ibiblio': [/ibiblio\.org\/pub\/packages\/ccic/],
					'wordpress': [/^https?:\/+(?:[^\/]+\.)?wordpress\.com\//],
					'vinniev': [/^https?:\/+(?:[^\/]+\.)?vinniev\.com\//],
					'addictedtocoffee': [/^https?:\/+(?:[^\/]+\.)?addictedtocoffee\.de\//],
					'vevo': [/^https?:\/+(?:[^\/]+\.)?vevo\.com\//],
					'ventureswell': [/^https?:\/+(?:[^\/]+\.)?ventureswell\.com\//],
					'sockslist': [/^https?:\/+(?:[^\/]+\.)?sockslist\.net\//],
					'mpettis': [/^https?:\/+(?:[^\/]+\.)?mpettis\.com\//],
					'jitouch': [/^https?:\/+(?:[^\/]+\.)?jitouch\.com\//],
					'catch22': [/^https?:\/+(?:[^\/]+\.)?catch22\.net\//],
					'ourdearamy': [/^https?:\/+(?:[^\/]+\.)?ourdearamy\.com\//],
					'twiffo': [/^https?:\/+(?:[^\/]+\.)?twiffo\.com\//],
					'allinfa': [/^http\:\/\/allinfa\.com/],
					'whyx': [/^https?:\/+(?:[^\/]+\.)?whyx\.org\//],
					'ccavtop10': [/^https?:\/+(?:[^\/]+\.)?ccavtop10\.com\//],
					'mtw': [/^https?:\/+(?:[^\/]+\.)?mtw\.tl\//],
					'taa-usa': [/^http\:\/\/taa\-usa\.org/],
					'liberal': [/^https?:\/+(?:[^\/]+\.)?liberal\.org\.hk\//],
					'logmike': [/^https?:\/+(?:[^\/]+\.)?logmike\.com\//],
					'golang': [/^https?:\/+(?:[^\/]+\.)?golang\.org\//],
					'chinayuanmin': [/^https?:\/+(?:[^\/]+\.)?chinayuanmin\.org\//],
					'marxists': [/\.marxists\.org\/chinese/],
					'streetvoice': [/(?:cn\.streetvoice\.com\/diary)|(?:cn\.streetvoice\.com\/article)/],
					'pinoy-n': [/^https?:\/+(?:[^\/]+\.)?pinoy\-n\.com\//],
					'furl': [/^https?:\/+(?:[^\/]+\.)?furl\.net\//],
					'lsmchinese': [/^https?:\/+(?:[^\/]+\.)?lsmchinese\.org\//],
					'aiph': [/^https?:\/+(?:[^\/]+\.)?aiph\.net\//],
					'zhong': [/^https?:\/+(?:[^\/]+\.)?bill\.zhong\.pp\.ru\//],
					'nf': [/^https?:\/+(?:[^\/]+\.)?nf\.id\.au\//],
					'uploadstation': [/\.uploadstation\.com\/file/],
					'crossthewall': [/^https?:\/+(?:[^\/]+\.)?crossthewall\.net\//],
					'livingonline': [/^https?:\/+(?:[^\/]+\.)?livingonline\.us\//],
					'journalofdemocracy': [/^https?:\/+(?:[^\/]+\.)?journalofdemocracy\.org\//],
					'tweetbackup': [/^https?:\/+(?:[^\/]+\.)?tweetbackup\.com\//],
					'developers': [/^https?:\/+(?:[^\/]+\.)?developers\.box\.net\//],
					'cdpweb': [/^https?:\/+(?:[^\/]+\.)?cdpweb\.org\//],
					'hyperrate': [/^https?:\/+(?:[^\/]+\.)?hyperrate\.com\//],
					'unholyknight': [/^https?:\/+(?:[^\/]+\.)?unholyknight\.com\//],
					'thesartorialist': [/^https?:\/+(?:[^\/]+\.)?thesartorialist\.com\//],
					'yahoo': [/(?:buy\.yahoo\.com\.tw\/gdsale)|(?:^https?:\/+(?:[^\/]+\.)?yahoo\.com\.hk\/)/],
					'youxu': [/(?:blog\.youxu\.info\/2010\/03\/14\/west\-chamber)|(?:^https?:\/+(?:[^\/]+\.)?youxu\.info\/)/],
					'usmc': [/^https?:\/+(?:[^\/]+\.)?usmc\.mil\//],
					'bitbucket': [/^https?:\/+(?:[^\/]+\.)?bitbucket\.org\//],
					'karayou': [/^https?:\/+(?:[^\/]+\.)?karayou\.com\//],
					'tech2': [/^http\:\/\/tech2\.in\.com\/video\//],
					'time': [/(?:\.time\.com\/time\/specials\/packages\/article\/0\,28804)|(?:\.time\.com\/time\/time100\/leaders\/profile\/rebel)/],
					'zonaeuropa': [/^https?:\/+(?:[^\/]+\.)?zonaeuropa\.com\//],
					'renyurenquan': [/^https?:\/+(?:[^\/]+\.)?renyurenquan\.org\//],
					'badassjs': [/^https?:\/+(?:[^\/]+\.)?badassjs\.com\//],
					'geometrictools': [/^https?:\/+(?:[^\/]+\.)?geometrictools\.com\//],
					'global': [/global\.hkepc\.com.*forum/],
					'myopenid': [/^https?:\/+(?:[^\/]+\.)?myopenid\.com\//],
					'gaoming': [/^https?:\/+(?:[^\/]+\.)?gaoming\.net\//],
					'turbobit': [/^http\:\/\/turbobit\.net/],
					'trustedbi': [/^https?:\/+(?:[^\/]+\.)?trustedbi\.com\//],
					'bt95': [/^https?:\/+(?:[^\/]+\.)?bt95\.com\//],
					'pchome': [/^https?:\/+(?:[^\/]+\.)?blog\.pchome\.com\.tw\//],
					'wolfax': [/^https?:\/+(?:[^\/]+\.)?wolfax\.com\//],
					'howtoforge': [/^https?:\/+(?:[^\/]+\.)?howtoforge\.com\//],
					'nzchinese': [/^https?:\/+(?:[^\/]+\.)?nzchinese\.net\.nz\//],
					'skybet': [/^https?:\/+(?:[^\/]+\.)?skybet\.com\//],
					'free-ssh': [/^https?:\/+(?:[^\/]+\.)?free\-ssh\.com\//],
					'briefdream': [/\.briefdream\.com\/\%e7\%b4\%a0\%e6\%a3\%ba/],
					'bignews': [/^https?:\/+(?:[^\/]+\.)?bignews\.org\//],
					'ironicsoftware': [/^https?:\/+(?:[^\/]+\.)?ironicsoftware\.com\//],
					'megabyet': [/lich355\.megabyet\.net\/\%e7\%bd\%91\%e7\%bb\%9c\%e7\%a5\%9e\%e5\%85\%bd\%e5\%8f\%a4\%e9\%b8\%bd\%e8\%bf\%81\%e7\%a7\%bb\%e8\%ae\%b0/],
					'ht': [/^http\:\/\/ht\.ly/],
					'dvorak': [/^https?:\/+(?:[^\/]+\.)?dvorak\.org\//],
					'shwchurch3': [/^http\:\/\/shwchurch3\.com/],
					'twitturly': [/^https?:\/+(?:[^\/]+\.)?twitturly\.com\//],
					'snaptu': [/^https?:\/+(?:[^\/]+\.)?snaptu\.com\//],
					'chromeadblock': [/^https?:\/+(?:[^\/]+\.)?chromeadblock\.com\//],
					'comefromchina': [/^https?:\/+(?:[^\/]+\.)?comefromchina\.com\//],
					'yvesgeleyn': [/^https?:\/+(?:[^\/]+\.)?yvesgeleyn\.com\//],
					'xbookcn': [/^https?:\/+(?:[^\/]+\.)?xbookcn\.com\//],
					'ziddu': [/\.ziddu\.com\/download/],
					'itweet': [/^http\:\/\/itweet\.net/],
					'gartlive': [/^https?:\/+(?:[^\/]+\.)?gartlive\.com\//],
					'mondex': [/^https?:\/+(?:[^\/]+\.)?mondex\.org\//],
					'say2': [/^https?:\/+(?:[^\/]+\.)?say2\.info\//],
					'tibet': [/(?:^https?:\/+(?:[^\/]+\.)?tibet\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?tibet\.net\/)/],
					'changp': [/^https?:\/+(?:[^\/]+\.)?changp\.com\//],
					'chinesedailynews': [/^https?:\/+(?:[^\/]+\.)?chinesedailynews\.com\//],
					'chinasoul': [/^https?:\/+(?:[^\/]+\.)?chinasoul\.org\//],
					'groups': [/(?:groups\.google\..*group)|(?:^https\:\/\/groups\.google\.com)/],
					'6-4': [/^https?:\/+(?:[^\/]+\.)?6\-4\.net\//],
					'earthquake': [/earthquake\.usgs\.gov\/eqcenter\/recenteqsww\/maps\/10\/105_30\.php/],
					'change': [/^http\:\/\/change\.org/],
					'box': [/^https?:\/+(?:[^\/]+\.)?dl\.box\.net\//],
					'173ng': [/^https?:\/+(?:[^\/]+\.)?173ng\.com\//],
					'cuiweiping': [/^https?:\/+(?:[^\/]+\.)?cuiweiping\.net\//],
					'freessh': [/^https?:\/+(?:[^\/]+\.)?freessh\.us\//],
					'fly4ever': [/^https?:\/+(?:[^\/]+\.)?life\.fly4ever\.me\//],
					'iphonix': [/^https?:\/+(?:[^\/]+\.)?iphonix\.fr\//],
					'atnext': [/^https?:\/+(?:[^\/]+\.)?atnext\.com\//],
					'stoweboyd': [/^https?:\/+(?:[^\/]+\.)?stoweboyd\.com\//],
					'keepandshare': [/\.keepandshare\.com\/visit\/visit_page\.php\?i\=688154/],
					'1pondo': [/^https?:\/+(?:[^\/]+\.)?1pondo\.tv\//],
					'geekmade': [/^https?:\/+(?:[^\/]+\.)?geekmade\.co\.uk\//],
					'atebits': [/^https?:\/+(?:[^\/]+\.)?news\.atebits\.com\//],
					'voachineseblog': [/^https?:\/+(?:[^\/]+\.)?voachineseblog\.com\//],
					'brandonhutchinson': [/^https?:\/+(?:[^\/]+\.)?brandonhutchinson\.com\//],
					'hongzhi': [/^https?:\/+(?:[^\/]+\.)?hongzhi\.li\//],
					'srcf': [/\.srcf\.ucam\.org\/salon\//],
					'entermap': [/^https?:\/+(?:[^\/]+\.)?entermap\.com\//],
					'peopo': [/^https?:\/+(?:[^\/]+\.)?peopo\.org\//],
					'6park': [/^https?:\/+(?:[^\/]+\.)?6park\.com\//],
					'greatfirewallofchina': [/(?:^https?:\/+(?:[^\/]+\.)?greatfirewallofchina\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?greatfirewallofchina\.org\/)/],
					'ukchinese': [/^http\:\/\/www\.ukchinese\.com\/www\/22\/2009\-03\/2842\.html/],
					'tiney': [/^https?:\/+(?:[^\/]+\.)?blog\.tiney\.com\//],
					'techlifeweb': [/^https?:\/+(?:[^\/]+\.)?techlifeweb\.com\//],
					'soup': [/^https?:\/+(?:[^\/]+\.)?soup\.io\//],
					'graphis': [/^https?:\/+(?:[^\/]+\.)?graphis\.ne\.jp\//],
					'truthcn': [/^https?:\/+(?:[^\/]+\.)?truthcn\.com\//],
					'frommel': [/^https?:\/+(?:[^\/]+\.)?frommel\.net\//],
					'torproject': [/^https?:\/+(?:[^\/]+\.)?torproject\.org\//],
					'ajsands': [/^https?:\/+(?:[^\/]+\.)?www\.ajsands\.com\//],
					'geocities': [/\.geocities\.com\/siliconvalley\/circuit\/5683\/download\.html/],
					'hideipvpn': [/^https?:\/+(?:[^\/]+\.)?hideipvpn\.com\//],
					'spb': [/(?:^http\:\/\/spb\.com\/blackberry\-software\/tv\/download)|(?:^http\:\/\/spb\.com\/symbian\-software\/tv\/download)|(?:\.spb\.com\/pocketpc\-software\/tv\/download)|(?:\.spb\.com\/symbian\-software\/tv\/download)|(?:\.spb\.com\/blackberry\-software\/tv\/download)|(?:^http\:\/\/spb\.com\/pocketpc\-software\/tv\/download)/],
					'm-team': [/m\-team\.cc\/forum/],
					'woopie': [/(?:^https?:\/+(?:[^\/]+\.)?woopie\.tv\/)|(?:^https?:\/+(?:[^\/]+\.)?woopie\.jp\/)/],
					'secureserver': [/^https?:\/+(?:[^\/]+\.)?default\.secureserver\.net\//],
					'ngs2': [/^https?:\/+(?:[^\/]+\.)?ngs2\.info\//],
					'ping': [/^https?:\/+(?:[^\/]+\.)?ping\.fm\//],
					'nyt': [/^https?:\/+(?:[^\/]+\.)?nyt\.com\//],
					'freeserve': [/^https?:\/+(?:[^\/]+\.)?www\.bulbous\.freeserve\.co\.uk\//],
					'eevpn': [/^https?:\/+(?:[^\/]+\.)?eevpn\.com\//],
					'date': [/^https?:\/+(?:[^\/]+\.)?date\.fm\//],
					'wikileaks': [/(?:^https?:\/+(?:[^\/]+\.)?wikileaks\.pl\/)|(?:^https?:\/+(?:[^\/]+\.)?wikileaks\.ch\/)|(?:^https?:\/+(?:[^\/]+\.)?wikileaks\.de\/)|(?:^https?:\/+(?:[^\/]+\.)?wikileaks\.eu\/)|(?:^https?:\/+(?:[^\/]+\.)?wikileaks\.lu\/)|(?:^https?:\/+(?:[^\/]+\.)?wikileaks\.org\/)/],
					'blogtd': [/^http\:\/\/blogtd\.org/],
					'aiweiweiblog': [/^https?:\/+(?:[^\/]+\.)?aiweiweiblog\.com\//],
					'hihistory': [/^https?:\/+(?:[^\/]+\.)?hihistory\.net\//],
					'hkreporter': [/^https?:\/+(?:[^\/]+\.)?hkreporter\.com\//],
					'vpngate': [/^https?:\/+(?:[^\/]+\.)?vpngate\.net\//],
					'viki': [/^https?:\/+(?:[^\/]+\.)?viki\.com\//],
					'tamiaode': [/^https?:\/+(?:[^\/]+\.)?tamiaode\.tk\//],
					'pin6': [/^https?:\/+(?:[^\/]+\.)?pin6\.com\//],
					'141hongkong': [/141hongkong\.com\/forum/],
					'lsd': [/^https?:\/+(?:[^\/]+\.)?lsd\.org\.hk\//],
					'yidio': [/^https?:\/+(?:[^\/]+\.)?yidio\.com\//],
					'lsm': [/^https?:\/+(?:[^\/]+\.)?lsm\.org\//],
					'whereiswerner': [/^https?:\/+(?:[^\/]+\.)?whereiswerner\.com\//],
					'shenzhoufilm': [/^https?:\/+(?:[^\/]+\.)?shenzhoufilm\.com\//],
					'tweete': [/^https?:\/+(?:[^\/]+\.)?tweete\.net\//],
					'tweets': [/^http\:\/\/tweets\.seraph\.me\//],
					'softether': [/^https?:\/+(?:[^\/]+\.)?softether\.org\//],
					'dfas': [/^https?:\/+(?:[^\/]+\.)?dfas\.mil\//],
					'boxun': [/(?:^https?:\/+(?:[^\/]+\.)?boxun\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?boxun\.tv\/)/],
					'sendspace': [/\.sendspace\.com\/file/],
					'views': [/^https?:\/+(?:[^\/]+\.)?views\.fm\//],
					'gowalla': [/^https?:\/+(?:[^\/]+\.)?blog\.gowalla\.com\//],
					'israbox': [/^https?:\/+(?:[^\/]+\.)?israbox\.com\//],
					'giganews': [/^http\:\/\/cn\.giganews\.com\//],
					'privatetunnel': [/^https?:\/+(?:[^\/]+\.)?privatetunnel\.com\//],
					'highrockmedia': [/^https?:\/+(?:[^\/]+\.)?highrockmedia\.com\//],
					'discuss': [/^https?:\/+(?:[^\/]+\.)?discuss\.com\.hk\//],
					'ismprofessional': [/^https?:\/+(?:[^\/]+\.)?ismprofessional\.net\//],
					'opera': [/my\.opera\.com\/dahema/],
					'dabr': [/(?:^https?:\/+(?:[^\/]+\.)?dabr\.me\/)|(?:^https?:\/+(?:[^\/]+\.)?dabr\.mobi\/)|(?:^https?:\/+(?:[^\/]+\.)?dabr\.co\.uk\/)/],
					'amnesty': [/^https?:\/+(?:[^\/]+\.)?amnesty\.org\//],
					'shadowsocks': [/^https?:\/+(?:[^\/]+\.)?shadowsocks\.org\//],
					'bloglines': [/^https?:\/+(?:[^\/]+\.)?bloglines\.com\//],
					'12vpn': [/^https?:\/+(?:[^\/]+\.)?12vpn\.com\//],
					'iask': [/(?:^https?:\/+(?:[^\/]+\.)?iask\.ca\/)|(?:^https?:\/+(?:[^\/]+\.)?iask\.bz\/)/],
					'worstthingieverate': [/^https?:\/+(?:[^\/]+\.)?worstthingieverate\.com\//],
					'vidoemo': [/^https?:\/+(?:[^\/]+\.)?vidoemo\.com\//],
					'fw': [/^https?:\/+(?:[^\/]+\.)?fw\.cm\//],
					'wforum': [/^https?:\/+(?:[^\/]+\.)?wforum\.com\//],
					'hacken': [/\.hacken\.cc\/bbs/],
					'6v6dota': [/^https?:\/+(?:[^\/]+\.)?www\.6v6dota\.com\//],
					'orn': [/^https?:\/+(?:[^\/]+\.)?orn\.jp\//],
					'gotw': [/^https?:\/+(?:[^\/]+\.)?gotw\.ca\//],
					'tkforum': [/^https?:\/+(?:[^\/]+\.)?tkforum\.tk\//],
					'axureformac': [/^https?:\/+(?:[^\/]+\.)?axureformac\.com\//],
					'futuremessage': [/^https?:\/+(?:[^\/]+\.)?futuremessage\.org\//],
					'kompozer': [/^https?:\/+(?:[^\/]+\.)?kompozer\.net\//],
					'shodanhq': [/^https?:\/+(?:[^\/]+\.)?shodanhq\.com\//],
					'readingtimes': [/^https?:\/+(?:[^\/]+\.)?readingtimes\.com\.tw\//],
					'h-china': [/^https?:\/+(?:[^\/]+\.)?h\-china\.org\//],
					'topshare': [/^https?:\/+(?:[^\/]+\.)?topshare\.us\//],
					'zannel': [/^https?:\/+(?:[^\/]+\.)?zannel\.com\//],
					'listentoyoutube': [/^https?:\/+(?:[^\/]+\.)?listentoyoutube\.com\//],
					'wikilivres': [/wikilivres\.info\/wiki\/\%e9\%9b\%b6\%e5\%85\%ab\%e5\%ae\%aa\%e7\%ab\%a0/],
					'tt1069': [/^https?:\/+(?:[^\/]+\.)?tt1069\.com\//],
					'taiwantt': [/^https?:\/+(?:[^\/]+\.)?taiwantt\.org\.tw\//],
					'askstudent': [/^https?:\/+(?:[^\/]+\.)?askstudent\.com\//],
					'hkdailynews': [/\.hkdailynews\.com\.hk\/china\.php/],
					'ibtimes': [/^http\:\/\/cn\.ibtimes\.com/],
					'zvereff': [/^https?:\/+(?:[^\/]+\.)?zvereff\.com\//],
					'hellonewyork': [/^https?:\/+(?:[^\/]+\.)?hellonewyork\.us\//],
					'value-domain': [/^https?:\/+(?:[^\/]+\.)?value\-domain\.com\//],
					'soupofmedia': [/^https?:\/+(?:[^\/]+\.)?soupofmedia\.com\//],
					'bloodshed': [/^https?:\/+(?:[^\/]+\.)?bloodshed\.net\//],
					'movabletype': [/^https?:\/+(?:[^\/]+\.)?movabletype\.com\//],
					'wapedia': [/wapedia\.mobi\/zhsimp/],
					'0rz': [/^http\:\/\/0rz\.tw/],
					'ameblo': [/^https?:\/+(?:[^\/]+\.)?ameblo\.jp\//],
					'openleaks': [/^https?:\/+(?:[^\/]+\.)?openleaks\.org\//],
					'marines': [/^https?:\/+(?:[^\/]+\.)?marines\.mil\//],
					'1984bbs': [/(?:^https?:\/+(?:[^\/]+\.)?1984bbs\.org\/)|(?:^https?:\/+(?:[^\/]+\.)?1984bbs\.com\/)/],
					'gardennetworks': [/^https?:\/+(?:[^\/]+\.)?gardennetworks\.org\//],
					'talkgadget': [/^https\:\/\/talkgadget\.google\.com\//],
					'ck101': [/^https?:\/+(?:[^\/]+\.)?ck101\.com\//],
					'liaowangxizang': [/^https?:\/+(?:[^\/]+\.)?liaowangxizang\.net\//],
					'hungerstrikeforaids': [/^https?:\/+(?:[^\/]+\.)?hungerstrikeforaids\.org\//],
					'astonmartinnews': [/^https?:\/+(?:[^\/]+\.)?astonmartinnews\.com\//],
					'klip': [/^https?:\/+(?:[^\/]+\.)?www\.klip\.me\//],
					'openinkpot': [/^https?:\/+(?:[^\/]+\.)?blog\.openinkpot\.org\//],
					'wexiaobo': [/^https?:\/+(?:[^\/]+\.)?wexiaobo\.org\//],
					'hecaitou': [/^https?:\/+(?:[^\/]+\.)?hecaitou\.net\//],
					'amiblockedornot': [/^https?:\/+(?:[^\/]+\.)?amiblockedornot\.com\//],
					'csdparty': [/^https?:\/+(?:[^\/]+\.)?csdparty\.com\//],
					'multiply': [/^https?:\/+(?:[^\/]+\.)?multiply\.com\//],
					'chinesetalks': [/\.chinesetalks\.net\/ch/],
					'huping': [/^https?:\/+(?:[^\/]+\.)?huping\.net\//],
					'dreamhosters': [/^https?:\/+(?:[^\/]+\.)?weigegebyc\.dreamhosters\.com\//],
					'megurineluka': [/^https?:\/+(?:[^\/]+\.)?megurineluka\.com\//],
					'youjizz': [/^https?:\/+(?:[^\/]+\.)?youjizz\.com\//],
					'china21': [/(?:^https?:\/+(?:[^\/]+\.)?china21\.org\/)|(?:^https?:\/+(?:[^\/]+\.)?china21\.com\/)/],
					'git-scm': [/^https?:\/+(?:[^\/]+\.)?git\-scm\.com\//],
					'tttan': [/^https?:\/+(?:[^\/]+\.)?tttan\.com\//],
					'dev102': [/^https?:\/+(?:[^\/]+\.)?dev102\.com\//],
					'qtweeter': [/^https?:\/+(?:[^\/]+\.)?qtweeter\.com\//],
					'mashable': [/^https?:\/+(?:[^\/]+\.)?mashable\.com\//],
					'tweepguide': [/^https?:\/+(?:[^\/]+\.)?tweepguide\.com\//],
					'eic-av': [/^https?:\/+(?:[^\/]+\.)?eic\-av\.com\//],
					'thomasbernhard': [/^https?:\/+(?:[^\/]+\.)?thomasbernhard\.org\//],
					'furinkan': [/^https?:\/+(?:[^\/]+\.)?furinkan\.com\//],
					'wqyd': [/^https?:\/+(?:[^\/]+\.)?wqyd\.org\//],
					'pureconcepts': [/^https?:\/+(?:[^\/]+\.)?pureconcepts\.net\//],
					'jimoparty': [/^http\:\/\/jimoparty\.com/],
					'keso': [/^https?:\/+(?:[^\/]+\.)?my\.keso\.cn\//],
					'giga-web': [/^https?:\/+(?:[^\/]+\.)?giga\-web\.jp\//],
					'tweetrans': [/^https?:\/+(?:[^\/]+\.)?tweetrans\.com\//],
					'dailynews': [/dailynews\.sina\.com\//],
					'tampabay': [/^https?:\/+(?:[^\/]+\.)?blogs\.tampabay\.com\//],
					'eriversoft': [/^https?:\/+(?:[^\/]+\.)?eriversoft\.com\//],
					'gaymap': [/^https?:\/+(?:[^\/]+\.)?gaymap\.cc\//],
					'yzzk': [/^https?:\/+(?:[^\/]+\.)?yzzk\.com\//],
					'awflasher': [/^https?:\/+(?:[^\/]+\.)?tumblr\.awflasher\.com\//],
					'streamingthe': [/^https?:\/+(?:[^\/]+\.)?streamingthe\.net\//],
					'wiki': [/wiki\.keso\.cn\/home/],
					'akamaihd': [/^https?:\/\/.+?video.+?\.akamaihd\.net\//],
					'newsminer': [/^https?:\/+(?:[^\/]+\.)?newsminer\.com\//],
					'turntable': [/^https?:\/+(?:[^\/]+\.)?turntable\.fm\//],
					'emule-ed2k': [/^http\:\/\/emule\-ed2k\.com/],
					'gmozomg': [/^https?:\/+(?:[^\/]+\.)?gmozomg\.izihost\.org\//],
					'cbsnews': [/(?:^https?:\/+(?:[^\/]+\.)?cbsnews\.com\/)|(?:\.cbsnews\.com\/video)/],
					'pokerstars': [/^https?:\/+(?:[^\/]+\.)?pokerstars\.com\//],
					'askynz': [/^https?:\/+(?:[^\/]+\.)?askynz\.net\//],
					'radiovaticana': [/^https?:\/+(?:[^\/]+\.)?radiovaticana\.org\//],
					'gappp': [/^https?:\/+(?:[^\/]+\.)?gappp\.org\//],
					'interfaceaddiction': [/^https?:\/+(?:[^\/]+\.)?interfaceaddiction\.com\//],
					'madmenunbuttoned': [/^https?:\/+(?:[^\/]+\.)?madmenunbuttoned\.com\//],
					'hkzone': [/^https?:\/+(?:[^\/]+\.)?hkzone\.org\//],
					'wan-press': [/^https?:\/+(?:[^\/]+\.)?www\.wan\-press\.org\//],
					'tbpic': [/^https?:\/+(?:[^\/]+\.)?tbpic\.info\//],
					'ezpc': [/\.ezpc\.tk\/category\/soft/],
					'sharecool': [/^https?:\/+(?:[^\/]+\.)?sharecool\.org\//],
					'twip': [/^https?:\/+(?:[^\/]+\.)?twip\.me\//],
					'newtalk': [/^https?:\/+(?:[^\/]+\.)?newtalk\.tw\//],
					'nokogiri': [/^https?:\/+(?:[^\/]+\.)?nokogiri\.org\//],
					'collateralmurder': [/(?:^https?:\/+(?:[^\/]+\.)?collateralmurder\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?collateralmurder\.org\/)/],
					'tkcs-collins': [/^https?:\/+(?:[^\/]+\.)?tkcs\-collins\.com\//],
					'shkspr': [/shkspr\.mobi\/dabr/],
					'twitoaster': [/^https?:\/+(?:[^\/]+\.)?twitoaster\.com\//],
					'berlintwitterwall': [/^https?:\/+(?:[^\/]+\.)?berlintwitterwall\.com\//],
					'so-news': [/^https?:\/+(?:[^\/]+\.)?so\-news\.com\//],
					'riku': [/(?:^https?:\/+(?:[^\/]+\.)?log\.riku\.me\/)|(?:riku\.me\/)/],
					'gzone-anime': [/^https?:\/+(?:[^\/]+\.)?gzone\-anime\.info\//],
					'quadedge': [/^https?:\/+(?:[^\/]+\.)?quadedge\.com\//],
					'ranyunfei': [/^https?:\/+(?:[^\/]+\.)?ranyunfei\.com\//],
					'blogcatalog': [/^https?:\/+(?:[^\/]+\.)?blogcatalog\.com\//],
					'speckleapp': [/^https?:\/+(?:[^\/]+\.)?speckleapp\.com\//],
					'ironpython': [/^https?:\/+(?:[^\/]+\.)?ironpython\.net\//],
					'jyzj': [/^https?:\/+(?:[^\/]+\.)?jyzj\.waqn\.com\//],
					'tibetwrites': [/^https?:\/+(?:[^\/]+\.)?tibetwrites\.org\//],
					'freegateget': [/^https?:\/+(?:[^\/]+\.)?freegateget\.googlepages\.com\//],
					'mathiew-badimon': [/^https?:\/+(?:[^\/]+\.)?mathiew\-badimon\.com\//],
					'voanews': [/voanews\.com\/chinese/],
					'proxomitron': [/^https?:\/+(?:[^\/]+\.)?proxomitron\.info\//],
					'evchk': [/evchk\.wikia\.com\/wiki\/\%e5\%a4\%a7\%e7\%b4\%80\%e5\%85\%83\%e6\%99\%82\%e5\%a0\%b1/],
					'newcenturymc': [/^http\:\/\/newcenturymc\.com/],
					'comedycentral': [/^http\:\/\/tosh\.comedycentral\.com/],
					'twitonmsn': [/^https?:\/+(?:[^\/]+\.)?twitonmsn\.com\//],
					'fangong': [/^https?:\/+(?:[^\/]+\.)?fangong\.org\//],
					'status': [/^https?:\/+(?:[^\/]+\.)?status\.twhirl\.org\//],
					'7capture': [/^https?:\/+(?:[^\/]+\.)?7capture\.com\//],
					'twindexx': [/^https?:\/+(?:[^\/]+\.)?twindexx\.com\//],
					'basetimesheightdividedby2': [/^https?:\/+(?:[^\/]+\.)?basetimesheightdividedby2\.com\//],
					'marxist': [/^https?:\/+(?:[^\/]+\.)?marxist\.net\//],
					'lookpic': [/^https?:\/+(?:[^\/]+\.)?lookpic\.com\//],
					'matainja': [/^https?:\/+(?:[^\/]+\.)?matainja\.com\//],
					'yymaya': [/^https?:\/+(?:[^\/]+\.)?yymaya\.com\//],
					'malaysiakini': [/malaysiakini\.com\/cn/],
					'gutteruncensored': [/^https?:\/+(?:[^\/]+\.)?gutteruncensored\.com\//],
					'sparrowmailapp': [/^https?:\/+(?:[^\/]+\.)?blog\.sparrowmailapp\.com\//],
					'hwinfo': [/^https?:\/+(?:[^\/]+\.)?hwinfo\.com\//],
					'secretgarden': [/^https?:\/+(?:[^\/]+\.)?secretgarden\.no\//],
					'chinaaid': [/^https?:\/+(?:[^\/]+\.)?chinaaid\.me\//],
					'nobodycanstop': [/^https?:\/+(?:[^\/]+\.)?nobodycanstop\.us\//],
					'ucdc1998': [/^https?:\/+(?:[^\/]+\.)?ucdc1998\.org\//],
					'awardwinningfjords': [/^https?:\/+(?:[^\/]+\.)?awardwinningfjords\.com\//],
					'e-traderland': [/\.e\-traderland\.net\/board/],
					'imagevenue': [/^https?:\/+(?:[^\/]+\.)?imagevenue\.com\//],
					'flecheinthepeche': [/^https?:\/+(?:[^\/]+\.)?flecheinthepeche\.fr\//],
					'4bluestones': [/^https?:\/+(?:[^\/]+\.)?4bluestones\.biz\//],
					'x-wall': [/^https?:\/+(?:[^\/]+\.)?x\-wall\.org\//],
					'ippotv': [/^https?:\/+(?:[^\/]+\.)?ippotv\.com\//],
					'vapurl': [/^https?:\/+(?:[^\/]+\.)?vapurl\.com\//],
					'sysadmin1138': [/^https?:\/+(?:[^\/]+\.)?sysadmin1138\.net\//],
					'chinasocialdemocraticparty': [/^https?:\/+(?:[^\/]+\.)?chinasocialdemocraticparty\.com\//],
					'topstyle4': [/^https?:\/+(?:[^\/]+\.)?topstyle4\.com\//],
					'iphonehacks': [/^https?:\/+(?:[^\/]+\.)?iphonehacks\.com\//],
					'blog': [/(?:^https?:\/+(?:[^\/]+\.)?blog\.klip\.me\/)|(?:^https?:\/+(?:[^\/]+\.)?blog\.path\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?blog\.usa\.gov\/)|(?:blog\.s135\.com\/google_ssl)|(?:^https?:\/+(?:[^\/]+\.)?blog\.kl\.am\/)|(?:blog\.qooza\.hk.*dafengqixi)|(?:^https?:\/+(?:[^\/]+\.)?blog\.palm\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?blog\.de\/)/],
					'ghostery': [/^https?:\/+(?:[^\/]+\.)?news\.ghostery\.com\//],
					'chingcheong': [/^https?:\/+(?:[^\/]+\.)?chingcheong\.com\//],
					'storagenewsletter': [/^https?:\/+(?:[^\/]+\.)?storagenewsletter\.com\//],
					'bloomfortune': [/^https?:\/+(?:[^\/]+\.)?bloomfortune\.com\//],
					'x-berry': [/^http\:\/\/www\.x\-berry\.com\/goagent/],
					'embr': [/^https?:\/+(?:[^\/]+\.)?embr\.in\//],
					'mog': [/^https?:\/+(?:[^\/]+\.)?mog\.com\//],
					'mininova': [/\.mininova\.org\/tor\/2593503/],
					'moztw': [/^https?:\/+(?:[^\/]+\.)?www\.moztw\.org\//],
					'givemesomethingtoread': [/^https?:\/+(?:[^\/]+\.)?givemesomethingtoread\.com\//],
					'thetrotskymovie': [/thetrotskymovie\.com\//],
					'2008xianzhang': [/^https?:\/+(?:[^\/]+\.)?2008xianzhang\.info\//],
					'digitalnomadsproject': [/^https?:\/+(?:[^\/]+\.)?digitalnomadsproject\.org\//],
					'baixing': [/^https?:\/+(?:[^\/]+\.)?baixing\.me\//],
					'facesofnyfw': [/^https?:\/+(?:[^\/]+\.)?facesofnyfw\.com\//],
					'dolc': [/^https?:\/+(?:[^\/]+\.)?dolc\.de\//],
					'gstatic': [/^https?:\/+(?:[^\/]+\.)?gstatic\.com\//],
					'seevpn': [/^https?:\/+(?:[^\/]+\.)?seevpn\.com\//],
					'gospelherald': [/^https?:\/+(?:[^\/]+\.)?gospelherald\.com\//],
					'xpud': [/^https?:\/+(?:[^\/]+\.)?xpud\.org\//],
					'oikos': [/\.oikos\.com\.tw\/v4/],
					'de-sci': [/^https?:\/+(?:[^\/]+\.)?de\-sci\.org\//],
					'xing': [/^https?:\/+(?:[^\/]+\.)?xing\.com\//],
					'pixelqi': [/^https?:\/+(?:[^\/]+\.)?pixelqi\.com\//],
					'gvm': [/^https?:\/+(?:[^\/]+\.)?gvm\.com\.tw\//],
					'zdnet': [/\.zdnet\.com\.tw\/news\/software\/0\,2000085678\,20111187\,00/],
					'ccdtr': [/^https?:\/+(?:[^\/]+\.)?ccdtr\.org\//],
					'guishan': [/^https?:\/+(?:[^\/]+\.)?guishan\.org\//],
					'sogclub': [/^https?:\/+(?:[^\/]+\.)?sogclub\.com\//],
					'power': [/^https?:\/+(?:[^\/]+\.)?power\.com\//],
					'hkepc': [/\.hkepc\.com\/forum\/viewthread\.php\?tid\=1153322/],
					'a-normal-day': [/^https?:\/+(?:[^\/]+\.)?a\-normal\-day\.com\//],
					'njactb': [/^https?:\/+(?:[^\/]+\.)?njactb\.org\//],
					'solozorro': [/^https?:\/+(?:[^\/]+\.)?solozorro\.tk\//],
					'assembla': [/^https?:\/+(?:[^\/]+\.)?assembla\.com\//],
					'lookatgame': [/^http\:\/\/lookatgame\.com/],
					'duckload': [/\.duckload\.com\/download/],
					'fbcdn': [/^https?:\/+(?:[^\/]+\.)?fbcdn\.net\//],
					'braumeister': [/^https?:\/+(?:[^\/]+\.)?braumeister\.org\//],
					'ow': [/^https?:\/+(?:[^\/]+\.)?ow\.ly\//],
					'summify': [/^https?:\/+(?:[^\/]+\.)?blog\.summify\.com\//],
					'yogichen': [/^https?:\/+(?:[^\/]+\.)?yogichen\.org\//],
					'mypopescu': [/^https?:\/+(?:[^\/]+\.)?mypopescu\.com\//],
					'hkgreenradio': [/\.hkgreenradio\.org\/home/],
					'longtermly': [/^https?:\/+(?:[^\/]+\.)?longtermly\.net\//],
					'bfsh': [/^https?:\/+(?:[^\/]+\.)?bfsh\.hk\//],
					'skimtube': [/^https?:\/+(?:[^\/]+\.)?skimtube\.com\//],
					'uniteddaily': [/\.uniteddaily\.com\.my\/index\.php\?/],
					'littlebigdetails': [/^https?:\/+(?:[^\/]+\.)?littlebigdetails\.com\//],
					'c-spanvideo': [/^https?:\/+(?:[^\/]+\.)?c\-spanvideo\.org\//],
					'tycool': [/^https?:\/+(?:[^\/]+\.)?tycool\.com\//],
					'loiclemeur': [/^https?:\/+(?:[^\/]+\.)?www\.loiclemeur\.com\//],
					'jiepang': [/(?:^https?:\/+(?:[^\/]+\.)?hk\.jiepang\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?tw\.jiepang\.com\/)/],
					'sesawe': [/^https?:\/+(?:[^\/]+\.)?sesawe\.net\//],
					'tripod': [/^https?:\/+(?:[^\/]+\.)?tripod\.com\//],
					'businesstimes': [/^http\:\/\/businesstimes\.com\.cn/],
					'tweetboard': [/^https?:\/+(?:[^\/]+\.)?tweetboard\.com\//],
					'jingpin': [/^https?:\/+(?:[^\/]+\.)?jingpin\.org\//],
					'birdhouseapp': [/^https?:\/+(?:[^\/]+\.)?blog\.birdhouseapp\.com\//],
					'nighost': [/^https?:\/+(?:[^\/]+\.)?nighost\.org\//],
					'alternate-tools': [/^https?:\/+(?:[^\/]+\.)?alternate\-tools\.com\//],
					'getsmartlinks': [/^https?:\/+(?:[^\/]+\.)?getsmartlinks\.com\//],
					'301works': [/^https?:\/+(?:[^\/]+\.)?301works\.org\//],
					'jinbushe': [/^https?:\/+(?:[^\/]+\.)?jinbushe\.org\//],
					'istef': [/blog\.istef\.info\/2007\/10\/21\/myentunnel/],
					'davidslog': [/^https?:\/+(?:[^\/]+\.)?davidslog\.com\//],
					'af': [/^https?:\/+(?:[^\/]+\.)?af\.mil\//],
					'hkheadline': [/(?:\.hkheadline\.com.*blog)|(?:\.hkheadline\.com\/instantnews)/],
					'cbs': [/^https?:\/+(?:[^\/]+\.)?cbs\.ntu\.edu\.tw\//],
					'ar': [/ar\.wikipedia\.org.*\%d8\%af\%d8\%a7\%d9\%84\%d8\%a7\%d9\%8a_\%d9\%84\%d8\%a7\%d9\%85\%d8\%a7/],
					'typepad': [/^https?:\/+(?:[^\/]+\.)?typepad\.com\//],
					'881903': [/(?:^https?:\/+(?:[^\/]+\.)?881903\.com\/)|(?:\.881903\.com\/page\/zh\-tw\/)/],
					'chinagfw': [/^https?:\/+(?:[^\/]+\.)?chinagfw\.org\//],
					'openid': [/^https?:\/+(?:[^\/]+\.)?openid\.net\//],
					'voatibetan': [/^https?:\/+(?:[^\/]+\.)?voatibetan\.com\//],
					'spencertipping': [/^https?:\/+(?:[^\/]+\.)?spencertipping\.com\//],
					'googleusercontent': [/^https?:\/+(?:[^\/]+\.)?googleusercontent\.com\//],
					'transgressionism': [/^https?:\/+(?:[^\/]+\.)?transgressionism\.org\//],
					'mash': [/^http\:\/\/mash\.to/],
					'hotpotato': [/^https?:\/+(?:[^\/]+\.)?blog\.hotpotato\.com\//],
					'gdbt': [/\.gdbt\.net\/forum/],
					'mobileways': [/^https?:\/+(?:[^\/]+\.)?mobileways\.de\//],
					'wikimapia': [/^https?:\/+(?:[^\/]+\.)?wikimapia\.org\//],
					'thelifeyoucansave': [/^https?:\/+(?:[^\/]+\.)?thelifeyoucansave\.com\//],
					'unblock': [/^https?:\/+(?:[^\/]+\.)?unblock\.cn\.com\//],
					'zkaip': [/^https?:\/+(?:[^\/]+\.)?zkaip\.com\//],
					'exploader': [/^https?:\/+(?:[^\/]+\.)?exploader\.net\//],
					'tv': [/^http\:\/\/tv\.com/],
					'tl': [/^http\:\/\/tl\.gd\//],
					'wujieliulan': [/^https?:\/+(?:[^\/]+\.)?wujieliulan\.com\//],
					'linuxconfig': [/^https?:\/+(?:[^\/]+\.)?linuxconfig\.org\//],
					'89-64': [/^https?:\/+(?:[^\/]+\.)?89\-64\.org\//],
					'baidu': [/^https?:\/+(?:[^\/]+\.)?baidu\.jp\//],
					'martau': [/^https?:\/+(?:[^\/]+\.)?martau\.com\//],
					'bigsound': [/\.bigsound\.org\/portnoy/],
					'picturedip': [/^https?:\/+(?:[^\/]+\.)?img.*\.picturedip\.com\//],
					'stackfile': [/www\.stackfile\.com\/freedur/],
					'pbs': [/(?:pbs\.org\/wgbh\/pages\/frontline\/gate)|(?:pbs\.org\/wgbh\/pages\/frontline\/tankman)/],
					'wsj': [/cn\.wsj\.com\/gb\/20130215\/tec113853\.asp/],
					'list': [/^https?:\/+(?:[^\/]+\.)?list\.ly\//],
					'zfreet': [/www\.zfreet\.com\/post\/usejump\-browns\.html/],
					'instagram': [/^https?:\/+(?:[^\/]+\.)?blog\.instagram\.com\//],
					'rapidshare8': [/^https?:\/+(?:[^\/]+\.)?rapidshare8\.com\//],
					'pbworks': [/^https?:\/+(?:[^\/]+\.)?pbworks\.com\//],
					'thehun': [/^https?:\/+(?:[^\/]+\.)?thehun\.net\//],
					'abc': [/^https?:\/+(?:[^\/]+\.)?abc\.pp\.ru\//],
					'vincnd': [/^https?:\/+(?:[^\/]+\.)?vincnd\.com\//],
					'abitno': [/abitno\.linpie\.com\/use\-ipv6\-to\-fuck\-gfw/],
					'idiomconnection': [/^https?:\/+(?:[^\/]+\.)?idiomconnection\.com\//],
					'bjzc': [/^https?:\/+(?:[^\/]+\.)?bjzc\.org\//],
					'teashark': [/\.teashark\.com\/download\.html/],
					'sacom': [/^https?:\/+(?:[^\/]+\.)?sacom\.hk\//],
					'bugclub': [/^https?:\/+(?:[^\/]+\.)?bugclub\.org\//],
					'catfightpayperview': [/^https?:\/+(?:[^\/]+\.)?catfightpayperview\.xxx\//],
					'thisav': [/^http\:\/\/thisav\.com/],
					'bowenpress': [/^https?:\/+(?:[^\/]+\.)?bowenpress\.com\//],
					'search': [/hk\.search\.yahoo\.com\/search/],
					't66y': [/^https?:\/+(?:[^\/]+\.)?t66y\.com\//],
					'everyday-carry': [/^https?:\/+(?:[^\/]+\.)?everyday\-carry\.com\//],
					'internetpopculture': [/^https?:\/+(?:[^\/]+\.)?internetpopculture\.com\//],
					'minimalmac': [/^https?:\/+(?:[^\/]+\.)?minimalmac\.com\//],
					'ytimg': [/^https?:\/+(?:[^\/]+\.)?ytimg\.com\//],
					'aenhancers': [/^https?:\/+(?:[^\/]+\.)?aenhancers\.com\//],
					'pornmm': [/^https?:\/+(?:[^\/]+\.)?pornmm\.net\//],
					'nexton-net': [/^https?:\/+(?:[^\/]+\.)?nexton\-net\.jp\//],
					'samair': [/\.samair\.ru\/proxy\/type\-01/],
					'hnjhj': [/^https?:\/+(?:[^\/]+\.)?hnjhj\.com\//],
					'uushare': [/^http\:\/\/uushare\.com/],
					'wengewang': [/^https?:\/+(?:[^\/]+\.)?wengewang\.org\//],
					'cyberctm': [/forum\.cyberctm\.com\/forum/],
					'twt': [/(?:^https?:\/+(?:[^\/]+\.)?twt\.fm\/)|(?:^http\:\/\/twt\.tl)/],
					'famunion': [/^https?:\/+(?:[^\/]+\.)?famunion\.com\//],
					'cynscribe': [/^https?:\/+(?:[^\/]+\.)?cynscribe\.com\//],
					'eamonnbrennan': [/^https?:\/+(?:[^\/]+\.)?eamonnbrennan\.com\//],
					'galenwu': [/^https?:\/+(?:[^\/]+\.)?galenwu\.com\//],
					'pathtosharepoint': [/^https?:\/+(?:[^\/]+\.)?blog\.pathtosharepoint\.com\//],
					'docstoc': [/\.docstoc\.com\/docs/],
					'muzi': [/(?:^https?:\/+(?:[^\/]+\.)?muzi\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?muzi\.com\/)/],
					'kurtmunger': [/^https?:\/+(?:[^\/]+\.)?kurtmunger\.com\//],
					'vtunnel': [/^https?:\/+(?:[^\/]+\.)?vtunnel\.com\//],
					'orient-doll': [/^https?:\/+(?:[^\/]+\.)?orient\-doll\.com\//],
					'markmail': [/markmail\.org.*message/],
					'idlcoyote': [/^http\:\/\/www\.idlcoyote\.com/],
					'joachims': [/^https?:\/+(?:[^\/]+\.)?joachims\.org\//],
					'kcome': [/^https?:\/+(?:[^\/]+\.)?kt\.kcome\.org\//],
					'tweetphoto': [/^https?:\/+(?:[^\/]+\.)?tweetphoto\.com\//],
					'beijingspring': [/^https?:\/+(?:[^\/]+\.)?beijingspring\.com\//],
					'share': [/(?:share\.ovi\.com\/media)|(?:share\.skype\.com\/sites\/en\/2008\/10\/skype_president_addresses_chin)/],
					'wangjinbo': [/^https?:\/+(?:[^\/]+\.)?wangjinbo\.org\//],
					'innermongolia': [/^https?:\/+(?:[^\/]+\.)?innermongolia\.org\//],
					'xxxx': [/^https?:\/+(?:[^\/]+\.)?xxxx\.com\.au\//],
					'cdpwu': [/^https?:\/+(?:[^\/]+\.)?cdpwu\.org\//],
					'dw-world': [/(?:^https?:\/+(?:[^\/]+\.)?dw\-world\.com\/)|(?:^http\:\/\/dw\-world\.de)/],
					'newchen': [/^https?:\/+(?:[^\/]+\.)?newchen\.com\//],
					'lrfz': [/^https?:\/+(?:[^\/]+\.)?lrfz\.com\//],
					'goodreads': [/^https?:\/+(?:[^\/]+\.)?goodreads\.com\//],
					'thehungrydudes': [/^https?:\/+(?:[^\/]+\.)?thehungrydudes\.com\//],
					'rlwlw': [/^https?:\/+(?:[^\/]+\.)?rlwlw\.com\//],
					'fb': [/^https?:\/+(?:[^\/]+\.)?fb\.me\//],
					'ff': [/^http\:\/\/ff\.im/],
					'avidemux': [/^https?:\/+(?:[^\/]+\.)?avidemux\.org\//],
					'fileserve': [/\.fileserve\.com\/file/],
					'ggpht': [/^https?:\/+(?:[^\/]+\.)?ggpht\.com\//],
					'bralio': [/^https?:\/+(?:[^\/]+\.)?bralio\.com\//],
					'breakingtweets': [/^https?:\/+(?:[^\/]+\.)?breakingtweets\.com\//],
					'shangfang': [/^https?:\/+(?:[^\/]+\.)?shangfang\.org\//],
					'dailyme': [/^https?:\/+(?:[^\/]+\.)?photos\.dailyme\.com\//],
					'tweetedtimes': [/^https?:\/+(?:[^\/]+\.)?tweetedtimes\.com\//],
					'stonegames': [/^https?:\/+(?:[^\/]+\.)?stonegames\.net\//],
					'coveringweb': [/^https?:\/+(?:[^\/]+\.)?coveringweb\.com\//],
					'adultkeep': [/adultkeep\.net\/peepshow\/members\/main\.htm/],
					'chinesen': [/^https?:\/+(?:[^\/]+\.)?chinesen\.de\//],
					'hackthatphone': [/^https?:\/+(?:[^\/]+\.)?hackthatphone\.net\//],
					'dollf': [/^https?:\/+(?:[^\/]+\.)?dollf\.com\//],
					'freealim': [/^https?:\/+(?:[^\/]+\.)?freealim\.com\//],
					'pct': [/^https?:\/+(?:[^\/]+\.)?pct\.org\.tw\//],
					'reuters': [/^http\:\/\/www\.reuters\.com\/news\/video/],
					'mgstage': [/^https?:\/+(?:[^\/]+\.)?mgstage\.com\//],
					'ziplib': [/^https?:\/+(?:[^\/]+\.)?ziplib\.com\//],
					'graylog2': [/^https?:\/+(?:[^\/]+\.)?graylog2\.org\//],
					'americangreencard': [/^https?:\/+(?:[^\/]+\.)?americangreencard\.com\//],
					'appspot': [/(?:^https?:\/\/[^\/]+appspot\.com)|(?:^https?:\/+(?:[^\/]+\.)?appspot\.com\/)/],
					'curvefish': [/^https?:\/+(?:[^\/]+\.)?curvefish\.com\//],
					'site90': [/^https?:\/+(?:[^\/]+\.)?site90\.net\//],
					'htmldog': [/^https?:\/+(?:[^\/]+\.)?htmldog\.com\//],
					'siteks': [/^https?:\/+(?:[^\/]+\.)?siteks\.uk\.to\//],
					'idaiwan': [/w\.idaiwan\.com\/forum/],
					'cellulo': [/^https?:\/+(?:[^\/]+\.)?cellulo\.info\//],
					'friendfeed-media': [/friendfeed\-media\.com\/e99a4ebe2fb4c1985c2a58775eb4422961aa5a2e/],
					'scriptspot': [/^https?:\/+(?:[^\/]+\.)?scriptspot\.com\//],
					'orzdream': [/^https?:\/+(?:[^\/]+\.)?t\.orzdream\.com\//],
					'trendsmap': [/^https?:\/+(?:[^\/]+\.)?trendsmap\.com\//],
					'noobbox': [/^https?:\/+(?:[^\/]+\.)?noobbox\.com\//],
					'calebelston': [/^https?:\/+(?:[^\/]+\.)?calebelston\.com\//],
					'i2p2': [/^https?:\/+(?:[^\/]+\.)?i2p2\.de\//],
					'michaelanti': [/^http\:\/\/michaelanti\.com/],
					'alwaysdata': [/(?:^https?:\/+(?:[^\/]+\.)?alwaysdata\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?alwaysdata\.com\/)/],
					'bullogger': [/^https?:\/+(?:[^\/]+\.)?bullogger\.com\//],
					'pdproxy': [/^https?:\/+(?:[^\/]+\.)?pdproxy\.com\//],
					'freeweibo': [/^https?:\/+(?:[^\/]+\.)?freeweibo\.com\//],
					'truth101': [/^http\:\/\/truth101\.co\.tv/],
					'xtube': [/^https?:\/+(?:[^\/]+\.)?xtube\.com\//],
					'zhenlibu': [/^https?:\/+(?:[^\/]+\.)?zhenlibu\.info\//],
					'tibetanyouthcongress': [/^https?:\/+(?:[^\/]+\.)?tibetanyouthcongress\.org\//],
					'lsmkorean': [/^https?:\/+(?:[^\/]+\.)?lsmkorean\.org\//],
					'diaoyuislands': [/^https?:\/+(?:[^\/]+\.)?diaoyuislands\.org\//],
					'c-est-simple': [/^https?:\/+(?:[^\/]+\.)?c\-est\-simple\.com\//],
					'shixiao': [/^https?:\/+(?:[^\/]+\.)?shixiao\.org\//],
					'coolaler': [/^https?:\/+(?:[^\/]+\.)?coolaler\.com\//],
					'ukliferadio': [/^https?:\/+(?:[^\/]+\.)?ukliferadio\.co\.uk\//],
					'hk-pub': [/(?:\.hk\-pub\.com\/forum)|(?:^http\:\/\/hk\-pub\.com)/],
					'advanscene': [/^https?:\/+(?:[^\/]+\.)?advanscene\.com\//],
					'topsy': [/^https?:\/+(?:[^\/]+\.)?topsy\.com\//],
					'cdp2006': [/^https?:\/+(?:[^\/]+\.)?cdp2006\.org\//],
					'sohfrance': [/^https?:\/+(?:[^\/]+\.)?sohfrance\.org\//],
					'paint': [/^https?:\/+(?:[^\/]+\.)?paint\.net\//],
					'amnestyusa': [/^https?:\/+(?:[^\/]+\.)?amnestyusa\.org\//],
					'duoweitimes': [/^https?:\/+(?:[^\/]+\.)?duoweitimes\.com\//],
					'vcfbuilder': [/^https?:\/+(?:[^\/]+\.)?vcfbuilder\.org\//],
					'htl': [/^http\:\/\/htl\.li/],
					'hk32168': [/^https?:\/+(?:[^\/]+\.)?hk32168\.com\//],
					'hudatoriq': [/^https?:\/+(?:[^\/]+\.)?hudatoriq\.web\.id\//],
					'thetibetpost': [/^https?:\/+(?:[^\/]+\.)?thetibetpost\.com\//],
					'theinternetwishlist': [/^https?:\/+(?:[^\/]+\.)?theinternetwishlist\.com\//],
					'livestream': [/^https?:\/+(?:[^\/]+\.)?livestream\.com\//],
					'ncn': [/^https?:\/+(?:[^\/]+\.)?ncn\.org\//],
					'pikchur': [/^https?:\/+(?:[^\/]+\.)?blog\.pikchur\.com\//],
					'taweet': [/^https?:\/+(?:[^\/]+\.)?taweet\.com\//],
					'youversion': [/^https?:\/+(?:[^\/]+\.)?youversion\.com\//],
					'web2project': [/^https?:\/+(?:[^\/]+\.)?web2project\.net\//],
					'zhongmeng': [/^https?:\/+(?:[^\/]+\.)?zhongmeng\.org\//],
					'opera-mini': [/^https?:\/+(?:[^\/]+\.)?demo\.opera\-mini\.net\//],
					'qanote': [/^https?:\/+(?:[^\/]+\.)?qanote\.com\//],
					'fringenetwork': [/^https?:\/+(?:[^\/]+\.)?fringenetwork\.com\//],
					'inmediahk': [/^https?:\/+(?:[^\/]+\.)?inmediahk\.net\//],
					'caobian': [/^https?:\/+(?:[^\/]+\.)?caobian\.info\//],
					'anthonycalzadilla': [/^https?:\/+(?:[^\/]+\.)?anthonycalzadilla\.com\//],
					'bookshelfporn': [/^https?:\/+(?:[^\/]+\.)?bookshelfporn\.com\//],
					'xrea': [/^https?:\/+(?:[^\/]+\.)?k2\.xrea\.com\//],
					'youtube-nocookie': [/^https?:\/+(?:[^\/]+\.)?youtube\-nocookie\.com\//],
					'alkasir': [/^https?:\/+(?:[^\/]+\.)?alkasir\.com\//],
					'laptoplockdown': [/^https?:\/+(?:[^\/]+\.)?laptoplockdown\.com\//],
					'chinafreepress': [/^https?:\/+(?:[^\/]+\.)?chinafreepress\.org\//],
					'tube8': [/^https?:\/+(?:[^\/]+\.)?tube8\.com\//],
					'greatroc': [/^https?:\/+(?:[^\/]+\.)?greatroc\.tw\//],
					'linksalpha': [/(?:^https?:\/+(?:[^\/]+\.)?help\.linksalpha\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?www\.linksalpha\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?api\.linksalpha\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?apidocs\.linksalpha\.com\/)/],
					'sitemaps': [/^https?:\/+(?:[^\/]+\.)?sitemaps\.org\//],
					'conoyo': [/^https?:\/+(?:[^\/]+\.)?conoyo\.com\//],
					'am730': [/^https?:\/+(?:[^\/]+\.)?am730\.com\.hk\//],
					'nextmedia': [/(?:hk.*\.nextmedia\.com)|(?:tw.*\.nextmedia\.com)/],
					'liudejun': [/^https?:\/+(?:[^\/]+\.)?liudejun\.com\//],
					'compileheart': [/^https?:\/+(?:[^\/]+\.)?compileheart\.com\//],
					'tpi': [/^https?:\/+(?:[^\/]+\.)?tpi\.org\.tw\//],
					'dtic': [/^https?:\/+(?:[^\/]+\.)?dtic\.mil\//],
					'aolchannels': [/^https?:\/+(?:[^\/]+\.)?aolchannels\.aol\.com\//],
					'thegatesnotes': [/^https?:\/+(?:[^\/]+\.)?thegatesnotes\.com\//],
					'atchinese': [/^http\:\/\/atchinese\.com/],
					'cotweet': [/^https?:\/+(?:[^\/]+\.)?cotweet\.com\//],
					'lesscss': [/^https?:\/+(?:[^\/]+\.)?lesscss\.org\//],
					'tubewolf': [/^https?:\/+(?:[^\/]+\.)?tubewolf\.com\//],
					'dayaarmongol': [/^http\:\/\/dayaarmongol\.ning\.com/],
					'cookingtothegoodlife': [/^https?:\/+(?:[^\/]+\.)?cookingtothegoodlife\.com\//],
					'dlsite': [/^https?:\/+(?:[^\/]+\.)?dlsite\.com\//],
					'twitiq': [/^https?:\/+(?:[^\/]+\.)?twitiq\.com\//],
					'chinaworker': [/^https?:\/+(?:[^\/]+\.)?chinaworker\.info\//],
					'newspeak': [/newspeak\.cc\/story/],
					'minzhuhua': [/^https?:\/+(?:[^\/]+\.)?minzhuhua\.net\//],
					'putlocker': [/\.putlocker\.com\/file/],
					'newscn': [/^https?:\/+(?:[^\/]+\.)?newscn\.org\//],
					'twftp': [/^https?:\/+(?:[^\/]+\.)?twftp\.org\//],
					'rfi': [/(?:^https?:\/+(?:[^\/]+\.)?rfi\.fr\/)|(?:^http\:\/\/rfi\.my\/)/],
					'monlamit': [/^http\:\/\/www\.monlamit\.org/],
					'mesotw': [/\.mesotw\.com\/bbs/],
					'samsoff': [/^https?:\/+(?:[^\/]+\.)?samsoff\.es\//],
					'getyouram': [/^https?:\/+(?:[^\/]+\.)?www\.getyouram\.com\//],
					'crackle': [/^https?:\/+(?:[^\/]+\.)?crackle\.com\//],
					'faydao': [/faydao\.com\/weblog/],
					'culture': [/^https?:\/+(?:[^\/]+\.)?culture\.tw\//],
					'swift-tools': [/^https?:\/+(?:[^\/]+\.)?swift\-tools\.net\//],
					'ilove80': [/^https?:\/+(?:[^\/]+\.)?ilove80\.be\//],
					'olumpo': [/^https?:\/+(?:[^\/]+\.)?olumpo\.com\//],
					'yyii': [/^https?:\/+(?:[^\/]+\.)?yyii\.org\//],
					'pictures': [/^http\:\/\/pictures\.playboy\.com/],
					'heungkongdiscuss': [/^https?:\/+(?:[^\/]+\.)?heungkongdiscuss\.com\//],
					'seezone': [/^https?:\/+(?:[^\/]+\.)?seezone\.net\//],
					'classicalguitarblog': [/^https?:\/+(?:[^\/]+\.)?classicalguitarblog\.net\//],
					'liuxiaotong': [/^https?:\/+(?:[^\/]+\.)?liuxiaotong\.com\//],
					'inxian': [/^https?:\/+(?:[^\/]+\.)?inxian\.com\//],
					'sproutcore': [/^https?:\/+(?:[^\/]+\.)?sproutcore\.com\//],
					'xuchao': [/(?:^https?:\/+(?:[^\/]+\.)?xuchao\.org\/)|(?:^https?:\/+(?:[^\/]+\.)?xuchao\.net\/)/],
					'paper-replika': [/^https?:\/+(?:[^\/]+\.)?paper\-replika\.com\//],
					'wezone': [/^https?:\/+(?:[^\/]+\.)?wezone\.net\//],
					'cnavista': [/\.cnavista\.com\.tw\/shop\/stores_app/],
					'lovequicksilver': [/^https?:\/+(?:[^\/]+\.)?lovequicksilver\.com\//],
					'waffle1999': [/^https?:\/+(?:[^\/]+\.)?waffle1999\.com\//],
					'derekhsu': [/^https?:\/+(?:[^\/]+\.)?derekhsu\.homeip\.net\//],
					'glennhilton': [/^https?:\/+(?:[^\/]+\.)?glennhilton\.com\//],
					'tiffanyarment': [/^https?:\/+(?:[^\/]+\.)?www\.tiffanyarment\.com\//],
					'sohcradio': [/^https?:\/+(?:[^\/]+\.)?sohcradio\.com\//],
					'dayoneapp': [/^https?:\/+(?:[^\/]+\.)?blog\.dayoneapp\.com\//],
					'torrentcrazy': [/^https?:\/+(?:[^\/]+\.)?torrentcrazy\.com\//],
					'autoproxy-gfwlist': [/(?:^https\:\/\/autoproxy\-gfwlist\.googlecode\.com\/svn\/trunk\/gfwlist\.txt)|(?:^http\:\/\/autoproxy\-gfwlist\.googlecode\.com\/svn\/trunk\/gfwlist\.txt)/],
					'devio': [/^https?:\/+(?:[^\/]+\.)?devio\.us\//],
					'allonlinux': [/^https?:\/+(?:[^\/]+\.)?allonlinux\.free\.fr\//],
					'creaders': [/^https?:\/+(?:[^\/]+\.)?creaders\.net\//],
					'sina': [/bbs\.sina\.com\//],
					'nrk': [/^https?:\/+(?:[^\/]+\.)?nrk\.no\//],
					'allmovie': [/^https?:\/+(?:[^\/]+\.)?allmovie\.com\//],
					'referer': [/^https?:\/+(?:[^\/]+\.)?referer\.us\//],
					'nemesis2': [/nemesis2\.qx\.net.*pages.*myentunnel/],
					'xml-training-guide': [/^https?:\/+(?:[^\/]+\.)?xml\-training\-guide\.com\//],
					'muouju': [/^https?:\/+(?:[^\/]+\.)?muouju\.com\//],
					'twtkr': [/^http\:\/\/twtkr\.com/],
					'cmule': [/^https?:\/+(?:[^\/]+\.)?cmule\.com\//],
					'centralnation': [/^https?:\/+(?:[^\/]+\.)?centralnation\.com\//],
					'taiwannews': [/^https?:\/+(?:[^\/]+\.)?taiwannews\.com\.tw\//],
					'romanandreg': [/^https?:\/+(?:[^\/]+\.)?blog\.romanandreg\.com\//],
					'goldwave': [/^https?:\/+(?:[^\/]+\.)?goldwave\.com\//],
					'vot': [/^https?:\/+(?:[^\/]+\.)?vot\.org\//],
					'skype': [/(?:^http\:\/\/www\.skype\.com\/zh\-hant)|(?:^http\:\/\/www\.skype\.com\/intl\/)/],
					'uderzo': [/^https?:\/+(?:[^\/]+\.)?uderzo\.it\//],
					'coolloud': [/^https?:\/+(?:[^\/]+\.)?coolloud\.org\.tw\//],
					'epochtimes': [/(?:^https?:\/+(?:[^\/]+\.)?epochtimes\.co\.il\/)|(?:^https?:\/+(?:[^\/]+\.)?epochtimes\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?epochtimes\.co\.kr\/)/],
					'heartyit': [/^https?:\/+(?:[^\/]+\.)?heartyit\.com\//],
					'yipub': [/^https?:\/+(?:[^\/]+\.)?yipub\.com\//],
					'sjum': [/^https?:\/+(?:[^\/]+\.)?sjum\.cn\//],
					'woeser': [/^https?:\/+(?:[^\/]+\.)?woeser\.com\//],
					'jgoodies': [/^https?:\/+(?:[^\/]+\.)?jgoodies\.com\//],
					'ustream': [/^https?:\/+(?:[^\/]+\.)?ustream\.tv\//],
					'kzeng': [/^https?:\/+(?:[^\/]+\.)?kzeng\.info\//],
					'retweeteffect': [/^https?:\/+(?:[^\/]+\.)?retweeteffect\.com\//],
					'identi': [/^https?:\/+(?:[^\/]+\.)?identi\.ca\//],
					'slheng': [/^https?:\/+(?:[^\/]+\.)?slheng\.com\//],
					'feministteacher': [/^https?:\/+(?:[^\/]+\.)?feministteacher\.com\//],
					'moby': [/^http\:\/\/moby\.to/],
					'turningtorso': [/^https?:\/+(?:[^\/]+\.)?turningtorso\.com\//],
					'somee': [/(?:^https?:\/+(?:[^\/]+\.)?www\.somee\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?somee\.com\/)/],
					'vimgolf': [/^https?:\/+(?:[^\/]+\.)?vimgolf\.com\//],
					'tweetwally': [/^https?:\/+(?:[^\/]+\.)?tweetwally\.com\//],
					'simplecd': [/^https?:\/+(?:[^\/]+\.)?simplecd\.org\//],
					'veempiire': [/^https?:\/+(?:[^\/]+\.)?veempiire\.com\//],
					'21andy': [/21andy\.com\/blog/],
					'pullfolio': [/^https?:\/+(?:[^\/]+\.)?pullfolio\.com\//],
					'ernestmandel': [/^https?:\/+(?:[^\/]+\.)?ernestmandel\.org\//],
					'tap11': [/^https?:\/+(?:[^\/]+\.)?tap11\.com\//],
					'caochangqing': [/^https?:\/+(?:[^\/]+\.)?caochangqing\.com\//],
					'twimg': [/^https?:\/+(?:[^\/]+\.)?twimg\.com\//],
					'wiredpen': [/^https?:\/+(?:[^\/]+\.)?wiredpen\.com\//],
					'prosiben': [/^https?:\/+(?:[^\/]+\.)?prosiben\.de\//],
					'jobso': [/^https?:\/+(?:[^\/]+\.)?jobso\.tv\//],
					'puttycm': [/^https?:\/+(?:[^\/]+\.)?puttycm\.free\.fr\//],
					'marco': [/^https?:\/+(?:[^\/]+\.)?marco\.org\//],
					'freenetproject': [/^https?:\/+(?:[^\/]+\.)?freenetproject\.org\//],
					'bit': [/(?:^https?:\/+(?:[^\/]+\.)?bit\.ly\/)|(?:^http\:\/\/bit\.ly)/],
					'9bis': [/(?:^https?:\/+(?:[^\/]+\.)?9bis\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?9bis\.com\/)/],
					'sevenload': [/^https?:\/+(?:[^\/]+\.)?sevenload\.com\//],
					'ogaoga': [/^https?:\/+(?:[^\/]+\.)?ogaoga\.org\//],
					'tumutanzi': [/^https?:\/+(?:[^\/]+\.)?tumutanzi\.com\//],
					'greenvpn': [/^https?:\/+(?:[^\/]+\.)?greenvpn\.net\//],
					'google': [/(?:\.google\..*\%e7\%bb\%8f\%e6\%96\%87)|(?:\.google\..*\%e9\%9d\%92\%e5\%a4\%a9\%e7\%99\%bd\%e6\%97\%a5\%e6\%97\%97)|(?:\.google\..*\%e9\%b2\%8d\%e5\%bd\%a4)|(?:\.google\..*\%e9\%85\%b7\%e5\%88\%91)|(?:\.google\..*\%e5\%be\%90\%e6\%89\%8d\%e5\%8e\%9a)|(?:\.google\..*\%e9\%94\%a6\%e6\%b6\%9b)|(?:\.google\..*boxun)|(?:\.google\..*\/complete\/search)|(?:\.google\..*\/search.*\%e8\%83\%a1)|(?:\.google\..*\%e5\%8c\%97\%e4\%ba\%ac\%e4\%b9\%8b\%e6\%98\%a5)|(?:\.google\..*\%e8\%80\%80\%e9\%82\%a6)|(?:\.google\.\%e6\%96\%b0\%e7\%96\%86.*\%e7\%8b\%ac\%e7\%ab\%8b)|(?:\.google\..*\%e4\%bb\%a3\%e5\%bc\%80.*\%e5\%8f\%91\%e7\%a5\%a8)|(?:\.google\..*\%e5\%ba\%b7\%e5\%b8\%88\%e5\%82\%85.*\%e5\%a4\%a9\%e7\%ba\%bf\%e5\%ae\%9d\%e5\%ae\%9d)|(?:\.google\..*\%e9\%a9\%ac\%e5\%87\%af)|(?:knol\.google\.com\/k\/\-\/08\/3jhi1zdzvxj3f)|(?:\.google\..*search.*tbs\=mbl)|(?:\.google\..*\%e5\%a4\%aa\%e5\%ad\%90)|(?:\.google\..*\%e5\%9c\%b0\%e4\%b8\%8b\%e6\%95\%99\%e4\%bc\%9a)|(?:\.google\..*\%e8\%97\%8f\%e7\%8b\%ac)|(?:\.google\..*search.*\%e8\%b0\%ad\%e4\%bd\%9c\%e4\%ba\%ba)|(?:\.google\..*\%e8\%b5\%a4\%e5\%8c\%aa)|(?:^https?:\/+(?:[^\/]+\.)?google\.com\/)|(?:\.google\..*peacehall)|(?:\.google\..*hujin)|(?:\.google\..*tbm\=mbl)|(?:^https\:\/\/apis\.google\.com)|(?:\.google\..*\%e4\%b8\%ad\%e5\%9b\%bd\%e6\%b0\%91\%e4\%b8\%bb\%e8\%bf\%90\%e5\%8a\%a8)|(?:\.google\..*\%e5\%85\%ad.*\%e5\%9b\%9b)|(?:\.google\..*\/search.*\%e5\%90\%b4)|(?:\.google\.com\/reader\/view\/feed)|(?:docs\.google\.com\/view\?id\=dhh5gtxb_145nsxgctcc)|(?:\.google\..*\%e8\%bf\%bd\%e6\%9f\%a5\%e5\%9b\%bd\%e9\%99\%85)|(?:code\.google\.com\/p\/twip)|(?:\.google\..*\%e4\%b8\%ad\%e5\%85\%b1)|(?:\.google\..*\%e9\%b2\%81\%e6\%98\%95)|(?:code\.google\.com\/p\/program\-think\/wiki\/software)|(?:\.google\..*search.*8964)|(?:\.google\..*\%e5\%a4\%a9\%e7\%81\%ad)|(?:\.google\..*\%e5\%9b\%bd\%e5\%ae\%b6\%e9\%98\%b2\%e7\%81\%ab\%e5\%a2\%99)|(?:\.google\..*\%e9\%9d\%a9\%e5\%91\%bd)|(?:\.google\..*\%e4\%bb\%a3\%e7\%90\%86)|(?:code\.google\.com\/p\/gaeproxy)|(?:\.google\..*freetibet)|(?:\.google\.com\/moderator)|(?:\.google\..*\%e7\%b4\%ab\%e9\%98\%b3)|(?:\.google\..*\%e5\%85\%ab\%e4\%b9\%9d)|(?:\.google\..*\%e5\%a4\%a9\%e7\%ba\%bf\%e5\%ae\%9d\%e5\%ae\%9d.*\%e5\%ba\%b7\%e5\%b8\%88\%e5\%82\%85)|(?:\.google\..*\%e8\%bf\%ab\%e5\%ae\%b3)|(?:\.google\..*\%e8\%be\%be\%e8\%b5\%96\%e5\%96\%87\%e5\%98\%9b)|(?:^https?:\/+(?:[^\/]+\.)?sites\.google\.com\/)|(?:\.google\..*\%e5\%85\%b3\%e9\%94\%ae\%e6\%97\%b6\%e5\%88\%bb)|(?:\.google\..*\%e5\%85\%b1\%e4\%ba\%a7)|(?:\.google\..*\%e9\%9b\%b6\%e5\%85\%ab.*\%e5\%ae\%aa\%e7\%ab\%a0)|(?:docs\.google\.com\/doc\?docid\=0ae9jwmouhgv1zhd0cjj2nv81ngq5mni0d3e1)|(?:\.google\..*\%e8\%9b\%a4\%e8\%9f\%86)|(?:\.google\..*\%e5\%85\%8d\%e8\%b4\%b9.*vpn)|(?:\.google\..*\%e9\%98\%b2\%e7\%81\%ab\%e9\%95\%bf\%e5\%9f\%8e)|(?:\.google\..*\&q\=ytht\&)|(?:\.google\..*tbs\=rltm)|(?:\.google\..*\%e4\%b8\%ad\%e5\%9b\%bd.*\%e7\%a6\%81\%e9\%97\%bb)|(?:\.google\..*\%e7\%bf\%bb\%e5\%a2\%99)|(?:\.google\..*nytimes)|(?:\.google\..*64.*\%e9\%95\%87\%e5\%8e\%8b)|(?:\.google\..*tbs\=qdr)|(?:\.google\..*twitter)|(?:\.google\..*\%e4\%b8\%ad\%e5\%9b\%bd\%e5\%86\%a4\%e6\%b0\%91\%e5\%a4\%a7\%e5\%90\%8c\%e7\%9b\%9f)|(?:\.google\..*\%e6\%b3\%95\%e6\%8b\%89\%e5\%88\%a9)|(?:\.google\..*\%e4\%bc\%8d\%e5\%87\%a1)|(?:\.google\..*\%e5\%a8\%81\%e8\%a7\%86\%e5\%85\%ac\%e5\%8f\%b8)|(?:\.google\..*search.*\%e4\%bf\%9e\%e6\%ad\%a3\%e5\%a3\%b0)|(?:\.google\..*\%d8\%ba\%d8\%a7)|(?:\.google\.com\/m.*\%e4\%b9\%a0)|(?:^https\:\/\/.*drive\.google\.com)|(?:\.google\..*search.*tankman)|(?:\.google\..*\%e8\%87\%aa\%e7\%94\%b1\%e9\%97\%a8)|(?:\.google\..*search.*\%e5\%88\%98\%e6\%b7\%87)|(?:\.google\..*\%e4\%b8\%ad\%e5\%9b\%bd\%e6\%b0\%91\%e4\%b8\%bb\%e5\%85\%9a)|(?:\.google\..*\%e6\%94\%bf\%e5\%8f\%98)|(?:\.google\.com\..*\%e5\%ae\%a3\%e8\%a8\%80)|(?:\.google\..*protest.*1989)|(?:\.google\..*huayuan)|(?:\.google\..*\%e7\%aa\%81\%e5\%b0\%bc\%e6\%96\%af)|(?:\.google\..*\%e6\%b1\%aa\%e6\%96\%af)|(?:\.google\..*zhouyongkang)|(?:code\.google\.com\/p\/gappproxy)|(?:\.google\..*\%e8\%bf\%91\%e5\%b9\%b3)|(?:\.google\..*\&q\=jzm\&)|(?:\.google\..*\%e5\%94\%af\%e8\%89\%b2)|(?:\.google\.com\/m.*\%e5\%90\%b4)|(?:\.google\..*\%e9\%ba\%a6\%e5\%bd\%93\%e5\%8a\%b3)|(?:\.google\..*\%e7\%86\%99\%e6\%9d\%a5)|(?:\.google\..*\%e5\%ad\%a6\%e6\%bd\%ae)|(?:\.google\..*\%e9\%98\%85\%e5\%90\%8e\%e5\%8d\%b3\%e7\%84\%9a)|(?:\.google\..*chinese\+people\+eating\+babies)|(?:\.google\..*\%e4\%b8\%89\%e9\%80\%80)|(?:\.google\..*\%e8\%af\%ba\%e8\%b4\%9d\%e5\%b0\%94\%e5\%92\%8c\%e5\%b9\%b3\%e5\%a5\%96)|(?:\.google\..*\%e4\%b8\%96\%e7\%bb\%b4\%e4\%bc\%9a)|(?:\.google\..*\/search.*\%e6\%b8\%a9)|(?:\.google\.com\/m.*\%e8\%b4\%be)|(?:\.google\.com\/m.*\%e8\%b4\%ba)|(?:\.google\..*\%e5\%bc\%a0\%e9\%ab\%98\%e4\%b8\%bd)|(?:\.google\..*\/search.*\%e5\%88\%98)|(?:\.google\..*\%e5\%8c\%97\%e5\%9b\%bd\%e4\%b9\%8b\%e6\%98\%a5)|(?:\.google\..*08.*\%e5\%ae\%aa\%e7\%ab\%a0)|(?:\.google\..*\%e7\%9c\%9f\%e7\%90\%86\%e9\%83\%a8)|(?:\.google\.com\/m.*\%e6\%b8\%a9)|(?:\.google\..*\%e6\%b1\%9f)|(?:\.google\..*tbm\%3dmbl)|(?:\.google\..*\%e9\%9b\%86\%e4\%bc\%9a)|(?:\.google\..*\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%ac\%e5\%9b\%ad)|(?:\.google\..*\%e6\%96\%b0\%e4\%ba\%ac\%e6\%8a\%a5)|(?:\.google\..*facebook)|(?:news\.google\.com\.hk\/nwshp\?hl\=zh\-cn\&tab\=wn)|(?:code\.google\.com\/p\/huhamhire\-hosts)|(?:\.google\..*\%e6\%96\%b9\%e6\%bb\%a8\%e5\%85\%b4)|(?:\.google\..*\%e5\%bd\%b1\%e5\%b8\%9d)|(?:\.google\..*\%e6\%b5\%99\%e5\%a4\%a7\%e6\%8b\%9b\%e7\%94\%9f\%e5\%8a\%9e)|(?:\.google\..*great.*firewall)|(?:docs\.google\.com\/view\?id\=dds68dz_9cqgm8vgq)|(?:\.google\..*\%e7\%8b\%ac\%e7\%ab\%8b\%e5\%8f\%b0\%e6\%b9\%be\%e4\%bc\%9a)|(?:\.google\..*\%e6\%9c\%88\%e6\%9c\%88)|(?:\.google\..*64.*\%e7\%9c\%9f\%e7\%9b\%b8)|(?:\.google\..*\%e4\%bb\%a4)|(?:\.google\..*\%e5\%8f\%b8\%e5\%be\%92\%e5\%8d\%8e)|(?:\.google\..*\%e6\%97\%a5\%e8\%ae\%b0)|(?:\.google\..*\%e7\%8e\%8b)|(?:\.google\..*tbs\%3drltm)|(?:\.google\..*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%97\%a8)|(?:\.google\..*\&q\=gpass)|(?:\.google\..*\/search.*\%e6\%9d\%8e)|(?:\.google\..*\%e7\%9c\%9f\%e7\%9b\%b8)|(?:\.google\..*\%e5\%8f\%91\%e7\%a5\%a8.*\%e4\%bb\%a3\%e5\%bc\%80)|(?:\.google\.com\/m.*\%e6\%9d\%8e)|(?:\.google\..*\%e8\%ae\%b0\%e8\%80\%85\%e6\%97\%a0\%e7\%96\%86\%e7\%95\%8c)|(?:\.google\..*\%e6\%b3\%bd\%e6\%b0\%91)|(?:\.google\..*tbs\%3dqdr)|(?:\.google\..*\%e7\%ba\%b3\%e7\%b1\%b3\%e6\%af\%94\%e4\%ba\%9a)|(?:code\.google\.com\/p\/icefox)|(?:^https?:\/+(?:[^\/]+\.)?google\.com\.hk\/)|(?:\.google\..*xijinping)|(?:\.google\..*\%e7\%9b\%98\%e5\%8f\%a4\%e4\%b9\%90\%e9\%98\%9f)|(?:\.google\..*\%e6\%a2\%a6\%e8\%90\%a6\%e6\%9c\%aa\%e5\%90\%8d\%e6\%b9\%96)|(?:\.google\.com.*search.*namibia.*nuctech)|(?:\.google\..*\%e5\%ad\%9f\%e5\%bb\%ba\%e6\%9f\%b1)|(?:\.google\..*tiananmen)|(?:\.google\..*\%e5\%86\%85\%e8\%92\%99.*\%e7\%a4\%ba\%e5\%a8\%81)|(?:docs\.google\.com\/view\?id\=d8xbpp6_4hhpb2dfd)|(?:code\.google\.com\/p\/vforchrome\/wiki\/start)|(?:\.google\..*\%e6\%9e\%aa\%e5\%a3\%b0)|(?:\.google\..*q\=\%e8\%87\%aa\%e7\%94\%b1\%e4\%ba\%9a\%e6\%b4\%b2\%e7\%94\%b5\%e5\%8f\%b0)|(?:\.google\..*\%e5\%ae\%b6\%e5\%ae\%9d)|(?:\.google\..*jiaqinglin)|(?:^https\:\/\/plus.*\.google\.com)|(?:\.google\..*goagent)|(?:\.google\..*gfw)|(?:\.google\.com\.hk\/wenda)|(?:\.google\..*\%e4\%b8\%ad\%e5\%9b\%bd\%e6\%95\%b0\%e5\%ad\%97\%e6\%97\%b6\%e4\%bb\%a3)|(?:code\.google\.com\/p\/tuite)|(?:\.google\..*\/search.*\%e4\%b9\%a0)|(?:\.google\..*\%e5\%91\%a8)|(?:\.google\..*\%e5\%8f\%91\%e8\%af\%be)|(?:^https?:\/+(?:[^\/]+\.)?apis\.google\.com\/)|(?:\.google\..*\%e5\%bd\%ad\%e4\%b8\%bd\%e5\%aa\%9b)|(?:\.google\..*\%e5\%89\%8d\%e4\%b8\%96\%e4\%bb\%8a\%e7\%94\%9f)|(?:\.google\..*tibetan.*independence)|(?:\.google\..*\%e6\%94\%bf\%e6\%b2\%bb\%e5\%b1\%80)|(?:\.google\.com.*\%e6\%88\%91\%e6\%b2\%a1\%e6\%9c\%89\%e6\%95\%8c\%e4\%ba\%ba)|(?:\.google\..*\%e6\%88\%92\%e4\%b8\%a5)|(?:\.google\..*\%e5\%86\%af\%e6\%ad\%a3\%e8\%99\%8e)|(?:\.google\..*\%e4\%b9\%9d\%e5\%b8\%b8\%e5\%a7\%94)|(?:\.google\..*\%e7\%9f\%a5\%e6\%83\%85\%e8\%80\%85)|(?:\.google\..*\%e6\%8e\%a8\%e7\%89\%b9)|(?:\.google\..*\%e9\%ab\%98\%e6\%99\%ba\%e6\%99\%9f)|(?:\.google\..*\/search.*\%e8\%b4\%be)|(?:\.google\..*\%e5\%81\%87\%e5\%ba\%86\%e6\%b7\%8b)|(?:\.google\..*\%e7\%8b\%ac\%e7\%ab\%8b\%e4\%b8\%ad\%e6\%96\%87\%e7\%ac\%94\%e4\%bc\%9a)|(?:\.google\..*\/search.*\%e8\%b4\%ba)|(?:code\.google\.com\/p\/twitese)|(?:\.google\..*jiangzemin)|(?:\.google\..*prisoner\+of\+the\+state)|(?:\.google\..*\%e8\%8e\%ab\%e6\%97\%a5\%e6\%a0\%b9)|(?:code\.google\.com\/p\/west\-chamber\-season\-3)|(?:\.google\..*\%e4\%b9\%8c\%e5\%b0\%94\%e5\%87\%af\%e8\%a5\%bf)|(?:\.google\..*\%e5\%b9\%bf\%e5\%9c\%ba)|(?:\.google\..*tianwang)|(?:\.google\..*freechina)|(?:\.google\..*\%e9\%99\%88\%e7\%a0\%b4\%e7\%a9\%ba)|(?:^https\:\/\/.*docs\.google\.com)|(?:\.google\..*search.*tbs\%3dmbl)|(?:\.google\..*\%e8\%87\%aa\%e7\%94\%b1\%e9\%96\%80)|(?:code\.google\.com\/p\/scholarzhang)|(?:\.google\.com\/m.*\%e8\%83\%a1)|(?:\.google\..*falun)|(?:\.google\..*\%e8\%8c\%89\%e8\%8e\%89)|(?:\.google\..*\%e9\%ae\%91\%e5\%bd\%a4)|(?:\.google\..*east.*turkistan)|(?:code\.google\.com\/p\/breakwall)/],
					'parade': [/\.parade\.com\/dictators\/2009/],
					'westca': [/^https?:\/+(?:[^\/]+\.)?westca\.com\//],
					'googlw': [/\.googlw\..*president\.gov\.tw/],
					'websitepulse': [/websitepulse\.com\/help\/testtools\.china\-test\.html/],
					'cactusvpn': [/^https?:\/+(?:[^\/]+\.)?cactusvpn\.com\//],
					'thebodyshop-usa': [/^https?:\/+(?:[^\/]+\.)?thebodyshop\-usa\.com\//],
					'vpnpop': [/^https?:\/+(?:[^\/]+\.)?vpnpop\.com\//],
					'matsushimakaede': [/^https?:\/+(?:[^\/]+\.)?matsushimakaede\.com\//],
					'turbotwitter': [/^https?:\/+(?:[^\/]+\.)?turbotwitter\.com\//],
					'urlborg': [/^https?:\/+(?:[^\/]+\.)?urlborg\.com\//],
					'zshare': [/\.zshare\.net\/download/],
					'br': [/^https?:\/+(?:[^\/]+\.)?br\.st\//],
					'joeedelman': [/^https?:\/+(?:[^\/]+\.)?joeedelman\.com\//],
					'ka-wai': [/^https?:\/+(?:[^\/]+\.)?ka\-wai\.com\//],
					'twitlonger': [/^https?:\/+(?:[^\/]+\.)?twitlonger\.com\//],
					'thepiratebay': [/^https?:\/+(?:[^\/]+\.)?thepiratebay\.se\//],
					'barnabu': [/^https?:\/+(?:[^\/]+\.)?barnabu\.co\.uk\//],
					'netflix': [/^https?:\/+(?:[^\/]+\.)?netflix\.com\//],
					'drgan': [/^https?:\/+(?:[^\/]+\.)?drgan\.net\//],
					'tomsc': [/^https?:\/+(?:[^\/]+\.)?tomsc\.com\//],
					'chinainterimgov': [/^https?:\/+(?:[^\/]+\.)?chinainterimgov\.org\//],
					'cecc': [/^https?:\/+(?:[^\/]+\.)?cecc\.gov\//],
					'monitorchina': [/^https?:\/+(?:[^\/]+\.)?monitorchina\.org\//],
					'nytco': [/^https?:\/+(?:[^\/]+\.)?nytco\.com\//],
					'fooooo': [/^https?:\/+(?:[^\/]+\.)?fooooo\.com\//],
					'placemix': [/^https?:\/+(?:[^\/]+\.)?placemix\.com\//],
					'nsc': [/^https?:\/+(?:[^\/]+\.)?nsc\.gov\.tw\//],
					'stickeraction': [/stickeraction\.com\/sesawe/],
					'podictionary': [/^https?:\/+(?:[^\/]+\.)?podictionary\.com\//],
					'yasukuni': [/^https?:\/+(?:[^\/]+\.)?yasukuni\.or\.jp\//],
					'avoision': [/^https?:\/+(?:[^\/]+\.)?avoision\.com\//],
					'dwnews': [/^https?:\/+(?:[^\/]+\.)?dwnews\.com\//],
					'voacantonese': [/^https?:\/+(?:[^\/]+\.)?voacantonese\.com\//],
					'bonjourlesgeeks': [/^https?:\/+(?:[^\/]+\.)?bonjourlesgeeks\.com\//],
					'chuizi': [/^https?:\/+(?:[^\/]+\.)?chuizi\.net\//],
					'dynawebinc': [/^https?:\/+(?:[^\/]+\.)?dynawebinc\.com\//],
					'wanderinghorse': [/^https?:\/+(?:[^\/]+\.)?wanderinghorse\.net\//],
					'thedieline': [/^https?:\/+(?:[^\/]+\.)?thedieline\.com\//],
					'syncback': [/^https?:\/+(?:[^\/]+\.)?syncback\.com\//],
					'privatepaste': [/^https?:\/+(?:[^\/]+\.)?privatepaste\.com\//],
					'lerosua': [/^https?:\/+(?:[^\/]+\.)?lerosua\.org\//],
					'chinainperspective': [/(?:^https?:\/+(?:[^\/]+\.)?chinainperspective\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?chinainperspective\.org\/)|(?:chinainperspective\.net\/artshow\.aspx\?)/],
					'iconpaper': [/^https?:\/+(?:[^\/]+\.)?iconpaper\.org\//],
					'zhe': [/^https?:\/+(?:[^\/]+\.)?bd\.zhe\.la\//],
					'generesis': [/^https?:\/+(?:[^\/]+\.)?generesis\.com\//],
					'12bet': [/^https?:\/+(?:[^\/]+\.)?12bet\.com\//],
					'usfk': [/^https?:\/+(?:[^\/]+\.)?usfk\.mil\//],
					'muselinks': [/^https?:\/+(?:[^\/]+\.)?muselinks\.co\.jp\//],
					'huanghuagang': [/^https?:\/+(?:[^\/]+\.)?huanghuagang\.org\//],
					'tunnelbear': [/^https?:\/+(?:[^\/]+\.)?tunnelbear\.com\//],
					'zeutch': [/^https?:\/+(?:[^\/]+\.)?zeutch\.com\//],
					'twit2d': [/^https?:\/+(?:[^\/]+\.)?twit2d\.com\//],
					'icerocket': [/blogs\.icerocket\.com\/tag/],
					'nanyang': [/^https?:\/+(?:[^\/]+\.)?nanyang\.com\//],
					'allinfo': [/^https?:\/+(?:[^\/]+\.)?allinfo\.com\//],
					'tjholowaychuk': [/^https?:\/+(?:[^\/]+\.)?tjholowaychuk\.com\//],
					'waiwaier': [/^http\:\/\/waiwaier\.com/],
					'xiaoma': [/^https?:\/+(?:[^\/]+\.)?xiaoma\.org\//],
					'zh-yue': [/zh\-yue\.wikipedia\.org.*\%e5\%85\%ad\%e5\%9b\%9b\%e4\%ba\%8b\%e4\%bb\%b6/],
					'mongodb': [/^https?:\/+(?:[^\/]+\.)?blog\.mongodb\.org\//],
					'bestforchina': [/^https?:\/+(?:[^\/]+\.)?bestforchina\.org\//],
					'blinkx': [/^https?:\/+(?:[^\/]+\.)?blinkx\.com\//],
					'alasbarricadas': [/^https?:\/+(?:[^\/]+\.)?alasbarricadas\.org\//],
					'getfoxyproxy': [/^https?:\/+(?:[^\/]+\.)?getfoxyproxy\.org\//],
					'youtube': [/^https?:\/+(?:[^\/]+\.)?youtube\.com\//],
					'sharpdaily': [/^https?:\/+(?:[^\/]+\.)?sharpdaily\.com\.hk\//],
					'hechaji': [/^https?:\/+(?:[^\/]+\.)?hechaji\.com\//],
					'bill2-software': [/^https?:\/+(?:[^\/]+\.)?bill2\-software\.com\//],
					'vimperator': [/^https?:\/+(?:[^\/]+\.)?vimperator\.org\//],
					'foxdie': [/^https?:\/+(?:[^\/]+\.)?foxdie\.us\//],
					'sharkdolphin': [/^https?:\/+(?:[^\/]+\.)?sharkdolphin\.com\//],
					'tomayko': [/^https?:\/+(?:[^\/]+\.)?tomayko\.com\//],
					'helpeachpeople': [/^https?:\/+(?:[^\/]+\.)?helpeachpeople\.com\//],
					'powerpointninja': [/^https?:\/+(?:[^\/]+\.)?www\.powerpointninja\.com\//],
					'rssmeme': [/^https?:\/+(?:[^\/]+\.)?rssmeme\.com\//],
					'zensur': [/^http\:\/\/www\.zensur\.freerk\.com\//],
					'iblogserv-f': [/^https?:\/+(?:[^\/]+\.)?iblogserv\-f\.net\//],
					'uploaded': [/(?:\.uploaded\.to\/file)|(?:^http\:\/\/uploaded\.to\/file)/],
					'overlapr': [/^https?:\/+(?:[^\/]+\.)?overlapr\.com\//],
					'travelinlocal': [/^https?:\/+(?:[^\/]+\.)?travelinlocal\.com\//],
					'xinmiao': [/^https?:\/+(?:[^\/]+\.)?xinmiao\.com\.hk\//],
					'iicns': [/^https?:\/+(?:[^\/]+\.)?iicns\.com\//],
					'yhcw': [/^https?:\/+(?:[^\/]+\.)?yhcw\.net\//],
					'facebook': [/(?:^https?:\/\/[^\/]+facebook\.com)|(?:^https?:\/+(?:[^\/]+\.)?facebook\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?connect\.facebook\.net\/)/],
					'linux-engineer': [/^https?:\/+(?:[^\/]+\.)?linux\-engineer\.net\//],
					'dimitrik': [/^https?:\/+(?:[^\/]+\.)?dimitrik\.free\.fr\//],
					'womensrightsofchina': [/^https?:\/+(?:[^\/]+\.)?womensrightsofchina\.org\//],
					'flightcaster': [/^https?:\/+(?:[^\/]+\.)?flightcaster\.com\//],
					'alexdong': [/^https?:\/+(?:[^\/]+\.)?notes\.alexdong\.com\//],
					'chinadigitaltimes': [/^http\:\/\/chinadigitaltimes\.net/],
					'godfootsteps': [/^https?:\/+(?:[^\/]+\.)?godfootsteps\.org\//],
					'zh': [/(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%8d\%8e\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9b\%bd\%e7\%bd\%91\%e7\%bb\%9c\%e5\%ae\%a1\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9c\%8b\%e7\%b6\%b2\%e7\%b5\%a1\%e5\%af\%a9\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e5\%b7\%a8\%e6\%b5\%aa2\%e5\%9e\%8b\%e6\%bd\%9c\%e5\%b0\%84\%e5\%bc\%b9\%e9\%81\%93\%e5\%af\%bc\%e5\%bc\%b9)|(?:zh\.wikipedia\.org.*\%e7\%ab\%a0\%e8\%a9\%92\%e5\%92\%8c)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e7\%b6\%b2\%e8\%b7\%af\%e5\%af\%a9\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e7\%91\%9e\%e5\%85\%b8)|(?:zh\.wikipedia\.org.*\%e9\%bb\%84\%e7\%90\%a6)|(?:zh\.wikipedia\.org.*\%e8\%b4\%be\%e5\%ba\%86\%e6\%9e\%97)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%97\%a8\%e6\%96\%87\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e6\%b0\%91\%e4\%b8\%bb\%e6\%ad\%8c\%e8\%81\%b2\%e7\%8d\%bb\%e4\%b8\%ad\%e8\%8f\%af)|(?:zh\.wikipedia\.org.*\%e9\%a6\%99\%e6\%b8\%af\%e7\%8d\%a8\%e7\%ab\%8b\%e9\%81\%8b\%e5\%8b\%95)|(?:zh\.wikipedia\.org.*610\%e8\%be\%a6\%e5\%85\%ac\%e5\%ae\%a4)|(?:zh\.wikipedia\.org.*08\%e5\%ae\%aa\%e7\%ab\%a0)|(?:zh\.wikipedia\.org.*gfw)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e5\%8f\%82\%e8\%80\%83_\(\%e7\%bd\%91\%e7\%bb\%9c\%e6\%9d\%82\%e5\%bf\%97\))|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e7\%b4\%80\%e5\%85\%83)|(?:zh\.wikipedia\.org.*\%e6\%8b\%89\%e5\%8d\%9c\%e6\%a5\%9e\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e5\%85\%ab\%e6\%80\%9d\%e5\%b7\%b4)|(?:zh\.wikipedia\.org.*\%e7\%87\%83\%e7\%83\%a7\%e7\%93\%b6)|(?:zh\.wikipedia\.org.*\%e7\%86\%b1\%e6\%af\%94\%e5\%a9\%ad)|(?:zh\.wikipedia\.org.*\%e6\%9d\%a8\%e4\%bd\%b3\%e8\%a2\%ad\%e8\%ad\%a6\%e6\%a1\%88)|(?:zh\.wikipedia\.org.*\%e4\%bb\%93\%e5\%a4\%ae\%e5\%98\%89\%e6\%8e\%aa)|(?:zh\.wikipedia\.org.*\%e6\%b4\%aa\%e5\%93\%b2\%e5\%8b\%9d)|(?:zh\.wikipedia\.org.*\%e6\%97\%a0\%e7\%95\%8c)|(?:zh\.wikipedia\.org.*\%e9\%9f\%a9\%e4\%b8\%9c\%e6\%96\%b9)|(?:zh\.wikipedia\.org.*\%e9\%a6\%99\%e6\%b8\%af\%e6\%b0\%91\%e4\%b8\%bb\%e9\%bb\%a8)|(?:zh\.wikipedia\.org.*\%e6\%9b\%b4\%e7\%99\%bb\%e7\%a2\%ba\%e5\%90\%89\%e5\%b0\%bc\%e7\%91\%aa)|(?:zh\.wikipedia\.org.*\%e4\%b9\%8c\%e9\%b2\%81\%e6\%9c\%a8\%e9\%bd\%90\%e4\%b8\%83\%c2\%b7\%e4\%ba\%94\%e6\%9a\%b4\%e5\%8a\%9b\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e4\%b9\%a0\%e4\%bb\%b2\%e5\%8b\%8b)|(?:zh\.wikipedia\.org.*\%e4\%b8\%96\%e7\%95\%8c\%e7\%bb\%b4\%e5\%90\%be\%e5\%b0\%94\%e5\%a4\%a7\%e4\%bc\%9a\!\-\-shi\ jie\ wei\ wu\ er\ qing\ nian\ dai\ biao\ da\ hui)|(?:zh\.wikipedia\.org.*\%e6\%9d\%b1\%e7\%aa\%81\%e5\%8e\%a5)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e5\%b9\%b3_\%28\%e4\%bd\%9c\%e5\%ae\%b6\%29)|(?:zh\.wikipedia\.org.*\%e5\%ae\%b6\%e4\%b9\%90\%e7\%a6\%8f)|(?:zh\.wikipedia\.org.*\%e5\%8a\%89\%e6\%9b\%89\%e6\%b3\%a2)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9c\%8b\%e4\%ba\%ba\%e6\%ac\%8a)|(?:zh\.wikipedia\.org.*\%e6\%94\%b9\%e9\%9d\%a9\%e5\%8e\%86\%e7\%a8\%8b)|(?:zh\.wikipedia\.org.*\%e4\%b8\%9c\%e7\%aa\%81\%e5\%8e\%a5\%e6\%96\%af\%e5\%9d\%a6)|(?:zh\.wikipedia\.org.*\%e4\%b9\%9d\%e8\%a9\%95\%e5\%85\%b1\%e7\%94\%a2\%e9\%bb\%a8)|(?:zh\.wikipedia\.org.*\%e8\%b0\%a2\%e5\%bd\%a6\%e9\%a3\%9e)|(?:zh\.wikipedia\.org.*\%e9\%a6\%ac\%e4\%b8\%89\%e5\%ae\%b6\%e5\%a5\%b3\%e5\%ad\%90\%e5\%8b\%9e\%e6\%95\%99\%e6\%89\%80)|(?:zh\.wikipedia\.org.*\%e6\%a2\%81\%e5\%9b\%bd\%e9\%9b\%84)|(?:zh\.wikipedia\.org.*\%e5\%bb\%96\%e4\%ba\%a6\%e6\%ad\%a6)|(?:zh\.wikipedia\.org.*\%e5\%9b\%9e\%e8\%89\%af\%e7\%8e\%89)|(?:zh\.wikipedia\.org.*\%e5\%85\%ac\%e5\%85\%b1\%e7\%9f\%a5\%e8\%af\%86\%e5\%88\%86\%e5\%ad\%90)|(?:zh\.wikipedia\.org.*\%e5\%9b\%9b\%e4\%ba\%94\%e8\%a1\%8c\%e5\%8b\%95)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e6\%a8\%82\%e6\%b3\%89)|(?:zh\.wikipedia\.org.*\%e8\%be\%be\%e8\%b5\%96\%e5\%96\%87\%e5\%98\%9b)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e8\%80\%80\%e9\%82\%a6)|(?:zh\.wikipedia\.org.*\%e4\%be\%af\%e8\%b5\%9b\%e5\%9b\%a0\%e6\%b1\%9f)|(?:zh\.wikipedia\.org.*\%e5\%a4\%9a\%e7\%bb\%b4)|(?:zh\.wikipedia\.org.*\%e6\%b2\%b3\%e6\%ae\%87)|(?:zh\.wikipedia\.org.*\%e9\%ae\%91\%e5\%bd\%a4)|(?:zh\.wikipedia\.org.*\%e4\%b8\%81\%e5\%ad\%90\%e9\%9c\%96)|(?:zh\.wikipedia\.org.*\%e7\%ab\%a0\%e5\%98\%89\%e5\%91\%bc\%e5\%9b\%be\%e5\%85\%8b\%e5\%9b\%be)|(?:zh\.wikipedia\.org.*\%e6\%96\%b0\%e9\%97\%bb\%e8\%87\%aa\%e7\%94\%b1\%e6\%8e\%a0\%e5\%a4\%ba\%e8\%80\%85)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%8d\%8e\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9b\%bd\%e5\%ae\%aa\%e6\%b3\%95)|(?:zh\.wikipedia\.org.*\%e8\%b0\%ad\%e4\%bd\%9c\%e4\%ba\%ba)|(?:zh\.wikipedia\.org.*\%e5\%bc\%a0\%e9\%92\%b0)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e9\%95\%b7\%e6\%98\%a5)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e9\%b9\%8f)|(?:zh\.wikipedia\.org.*\%e5\%8c\%97\%e4\%ba\%ac\%e9\%ab\%98\%e6\%a0\%a1\%e5\%ad\%a6\%e7\%94\%9f\%e8\%87\%aa\%e6\%b2\%bb\%e8\%81\%94\%e5\%90\%88\%e4\%bc\%9a)|(?:zh\.wikipedia\.org.*\%e4\%b8\%96\%e7\%95\%8c\%e7\%bb\%b4\%e5\%90\%be\%e5\%b0\%94\%e9\%9d\%92\%e5\%b9\%b4\%e4\%bb\%a3\%e8\%a1\%a8\%e5\%a4\%a7\%e4\%bc\%9a)|(?:zh\.wikipedia\.org.*google\%e5\%ae\%a1\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9c\%8b\%e6\%b0\%91\%e4\%b8\%bb\%e9\%81\%8b\%e5\%8b\%95)|(?:zh\.wikipedia\.org.*\%e6\%b8\%a9\%e5\%ae\%b6\%e5\%ae\%9d)|(?:zh\.wikipedia\.org.*\%e5\%99\%b6\%e5\%80\%ab\%e8\%b5\%a4\%e5\%b7\%b4)|(?:zh\.wikipedia\.org.*\%e6\%96\%b9\%e8\%88\%9f\%e5\%ad\%90)|(?:zh\.wikipedia\.org.*\%e6\%a5\%9a\%e5\%b8\%83\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e7\%bd\%91\%e7\%bb\%9c\%e8\%af\%84\%e8\%ae\%ba\%e5\%91\%98)|(?:zh\.wikipedia\.org.*\%e4\%b8\%b9\%e5\%a2\%9e\%e5\%98\%89\%e6\%8e\%aa)|(?:zh\.wikipedia\.org.*\%e4\%b8\%96\%e7\%95\%8c\%e7\%bb\%8f\%e6\%b5\%8e\%e5\%af\%bc\%e6\%8a\%a5)|(?:zh\.wikipedia\.org.*\%e8\%be\%be\%e5\%85\%b0\%e8\%90\%a8\%e6\%8b\%89)|(?:zh\.wikipedia\.org.*\%e8\%87\%aa\%e7\%94\%b1\%e4\%ba\%9a\%e6\%b4\%b2)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e6\%b0\%91\%e5\%9c\%8b\%e5\%9c\%8b\%e6\%b0\%91\%e5\%a4\%a7\%e6\%9c\%83)|(?:zh\.wikipedia\.org.*\%e9\%87\%8a\%e6\%98\%9f\%e4\%ba\%91)|(?:zh\.wikipedia\.org.*\%e5\%8f\%b8\%e5\%be\%92\%e8\%8f\%af)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e7\%bd\%91\%e7\%bb\%9c\%e5\%ae\%a1\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e7\%a7\%a6\%e5\%9f\%8e\%e7\%9b\%91\%e7\%8b\%b1)|(?:zh\.wikipedia\.org.*\%e5\%8f\%b8\%e5\%be\%92\%e5\%8d\%8e)|(?:zh\.wikipedia\.org.*\%e5\%bc\%a0\%e7\%ab\%8b\%e6\%98\%8c)|(?:zh\.wikipedia\.org.*\%e5\%b0\%81\%e4\%bb\%8e\%e5\%be\%b7)|(?:zh\.wikipedia\.org.*\%e7\%83\%ad\%e6\%af\%94\%e5\%a8\%85)|(?:zh\.wikipedia\.org.*\%e9\%9c\%8d\%e8\%8b\%b1\%e6\%9d\%b1)|(?:zh\.wikipedia\.org.*\%e8\%97\%8f\%e4\%bc\%a0\%e4\%bd\%9b\%e6\%95\%99)|(?:zh\.wikipedia\.org.*\%e5\%b9\%bd\%e7\%81\%b5\%e7\%bd\%91)|(?:zh\.wikipedia\.org.*\%e5\%9c\%8b\%e5\%8b\%99\%e9\%99\%a2\%e9\%98\%b2\%e7\%af\%84\%e5\%92\%8c\%e8\%99\%95\%e7\%90\%86\%e9\%82\%aa\%e6\%95\%99\%e5\%95\%8f\%e9\%a1\%8c\%e8\%be\%a6\%e5\%85\%ac\%e5\%ae\%a4)|(?:zh\.wikipedia\.org.*\%e9\%b2\%8d\%e5\%bd\%a4)|(?:zh\.wikipedia\.org.*\%e5\%ad\%99\%e6\%96\%87\%e5\%b9\%bf)|(?:zh\.wikipedia\.org.*\%e5\%8c\%97\%e4\%ba\%ac\%e4\%b9\%8b\%e6\%98\%a5)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e6\%b0\%91\%e4\%b8\%bb\%e9\%81\%8b\%e5\%8b\%95)|(?:zh\.wikipedia\.org.*\%e5\%9b\%bd\%e9\%99\%85\%e7\%89\%b9\%e8\%b5\%a6\%e7\%bb\%84\%e7\%bb\%87)|(?:zh\.wikipedia\.org.*\%e6\%b1\%b6\%e5\%b7\%9d\%e5\%9c\%b0\%e9\%9c\%87)|(?:zh\.wikipedia\.org.*\%e9\%9b\%b6\%e5\%85\%ab\%e5\%ae\%aa\%e7\%ab\%a0)|(?:zh\.wikipedia\.org.*\%e7\%a0\%b4\%e7\%bd\%91)|(?:zh\.wikipedia\.org.*\%e4\%bf\%9e\%e4\%b8\%bd\%e8\%90\%8d)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%a4\%ae\%e6\%96\%87\%e5\%8c\%96\%e9\%9d\%a9\%e5\%91\%bd\%e5\%b0\%8f\%e7\%bb\%84)|(?:zh\.wikipedia\.org.*\%e5\%85\%a7\%e8\%92\%99\%e5\%8f\%a4\%e4\%ba\%ba\%e6\%b0\%91\%e9\%bb\%a8)|(?:zh\.wikipedia\.org.*\%e6\%95\%8f\%e6\%84\%9f\%e4\%ba\%ba\%e5\%a3\%ab)|(?:zh\.wikipedia\.org.*\%e6\%9d\%b1\%e9\%a2\%a8\-31\%e6\%b4\%b2\%e9\%9a\%9b\%e5\%bd\%88\%e9\%81\%93\%e5\%b0\%8e\%e5\%bd\%88)|(?:zh\.wikipedia\.org.*\%e9\%bb\%84\%e4\%b8\%87\%e9\%87\%8c)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e9\%b5\%ac)|(?:zh\.wikipedia\.org.*\%e8\%90\%a8\%e8\%bf\%a6\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e8\%be\%9b\%e7\%81\%8f\%e5\%b9\%b4)|(?:zh\.wikipedia\.org.*\%e7\%83\%8f\%e5\%9d\%8e\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e7\%bb\%bf\%e5\%9d\%9d\%c2\%b7\%e8\%8a\%b1\%e5\%ad\%a3\%e6\%8a\%a4\%e8\%88\%aa)|(?:zh\.wikipedia\.org.*\%e4\%bb\%a4\%e8\%ae\%a1\%e5\%88\%92)|(?:zh\.wikipedia\.org.*\%e7\%bb\%9d\%e9\%a3\%9f)|(?:zh\.wikipedia\.org.*\%e5\%ae\%8b\%e5\%bd\%ac\%e5\%bd\%ac)|(?:zh\.wikipedia\.org.*\%e9\%ab\%98\%e6\%99\%ba\%e6\%99\%9f)|(?:zh\.wikipedia\.org.*1959\%e5\%b9\%b4)|(?:zh\.wikipedia\.org.*\%e8\%b5\%b5\%e7\%b4\%ab\%e9\%98\%b3)|(?:zh\.wikipedia\.org.*\%e8\%b4\%ba\%e5\%9b\%bd\%e5\%bc\%ba)|(?:zh\.wikipedia\.org.*\%e9\%9b\%8d\%e5\%92\%8c\%e5\%ae\%ab)|(?:zh\.wikipedia\.org.*\%e5\%86\%85\%e8\%92\%99\%e5\%8f\%a4\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%9a)|(?:zh\.wikipedia\.org.*\%e6\%96\%b0\%e7\%96\%86\%e7\%8b\%ac\%e7\%ab\%8b)|(?:zh\.wikipedia\.org.*\%e8\%93\%ae\%e8\%8a\%b1\%e7\%94\%9f)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e5\%a4\%a7\%e9\%99\%b8\%e7\%b6\%b2\%e8\%b7\%af\%e5\%b0\%81\%e9\%8e\%96)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e8\%97\%8f\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*2012\%e5\%b9\%b4\%e4\%b8\%ad\%e5\%8d\%8e\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9b\%bd\%e8\%85\%90\%e8\%b4\%a5\%e6\%a1\%88\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e6\%96\%b0\%e7\%96\%86\%e7\%8d\%a8\%e7\%ab\%8b)|(?:zh\.wikipedia\.org.*\%e7\%86\%8a\%e7\%84\%b1)|(?:zh\.wikipedia\.org.*\%e7\%94\%98\%e4\%b8\%b9\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e8\%8a\%b1\%e5\%9b\%ad\%e8\%bd\%af\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e9\%81\%94\%e8\%98\%ad\%e8\%96\%a9\%e6\%8b\%89)|(?:zh\.wikipedia\.org.*\%e6\%a5\%8a\%e5\%bb\%ba\%e5\%88\%a9)|(?:zh\.wikipedia\.org.*\%e5\%9a\%b4\%e5\%ae\%b6\%e5\%85\%b6)|(?:zh\.wikipedia\.org.*\%e8\%96\%84\%e7\%86\%99\%e6\%9d\%a5)|(?:zh\.wikipedia\.org.*\%e7\%9c\%9f\%e5\%96\%84\%e5\%bf\%8d)|(?:zh\.wikipedia\.org.*\%e6\%96\%b9\%e5\%8a\%b1\%e4\%b9\%8b)|(?:zh\.wikipedia\.org.*\%e8\%a5\%bf\%e5\%8e\%a2\%e8\%ae\%a1\%e5\%88\%92)|(?:zh\.wikipedia\.org.*\%e9\%a6\%ac\%e8\%8b\%b1\%e4\%b9\%9d)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e4\%bd\%b3_\%28\%e7\%a4\%be\%e6\%9c\%83\%e6\%b4\%bb\%e5\%8b\%95\%e5\%ae\%b6\%29)|(?:zh\.wikipedia\.org.*\%e4\%b8\%a5\%e5\%ae\%b6\%e5\%85\%b6)|(?:zh\.wikipedia\.org.*\%e9\%ab\%98\%e8\%a1\%8c\%e5\%81\%a5)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e7\%94\%b5\%e8\%a7\%86\%e5\%ae\%a1\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e8\%a5\%bf\%e8\%97\%8f)|(?:zh\.wikipedia\.org.*\%e8\%9a\%81\%e5\%8a\%9b\%e7\%a5\%9e)|(?:zh\.wikipedia\.org.*\%e4\%bf\%84\%e7\%be\%85\%e6\%96\%af)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%96\%80\%e6\%96\%87\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e4\%b8\%9c\%e9\%a3\%8e\-21\%e4\%b8\%ad\%e7\%a8\%8b\%e5\%bc\%b9\%e9\%81\%93\%e5\%af\%bc\%e5\%bc\%b9)|(?:zh\.wikipedia\.org.*\%e5\%a7\%9c\%e7\%bb\%b4\%e5\%b9\%b3)|(?:zh\.wikipedia\.org.*\%e5\%8d\%81\%e5\%9b\%9b\%e4\%b8\%96\%e8\%be\%be\%e8\%b5\%96)|(?:zh\.wikipedia\.org.*\%e5\%9c\%a3\%e9\%9b\%84\%e7\%94\%98\%e5\%9c\%b0)|(?:zh\.wikipedia\.org.*\%e5\%ae\%8b\%e4\%bb\%bb\%e7\%aa\%ae)|(?:zh\.wikipedia\.org.*\%e5\%8f\%b0\%e7\%81\%a3\%e7\%8d\%a8\%e7\%ab\%8b\%e5\%bb\%ba\%e5\%9c\%8b\%e8\%81\%af\%e7\%9b\%9f)|(?:zh\.wikipedia\.org.*\%e4\%b9\%9d\%e8\%af\%84\%e5\%85\%b1\%e4\%ba\%a7\%e5\%85\%9a)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%97\%a8\%e6\%af\%8d\%e4\%ba\%b2\%e8\%bf\%90\%e5\%8a\%a8)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e7\%ba\%aa\%e5\%85\%83\%e6\%97\%b6\%e6\%8a\%a5)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e5\%b1\%a0\%e6\%9d\%80\%e5\%88\%97\%e8\%a1\%a8)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e5\%85\%8b\%e5\%bc\%ba)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e6\%b4\%aa\%e5\%bf\%97)|(?:zh\.wikipedia\.org.*\%e5\%90\%be\%e7\%88\%be\%e9\%96\%8b\%e5\%b8\%8c)|(?:zh\.wikipedia\.org.*\%e8\%8f\%af\%e5\%9c\%8b\%e9\%8b\%92)|(?:zh\.wikipedia\.org.*\%e6\%9b\%b9\%e9\%95\%b7\%e9\%9d\%92)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e6\%b8\%a9\%e4\%bd\%93\%e5\%88\%b6)|(?:zh\.wikipedia\.org.*\%e6\%b4\%9b\%e6\%a1\%91\%e6\%a3\%ae\%e6\%a0\%bc)|(?:zh\.wikipedia\.org.*\%e5\%8f\%8d\%e5\%8d\%8e\%e5\%8a\%bf\%e5\%8a\%9b)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e5\%a4\%a7\%e9\%99\%86\%e5\%b0\%81\%e9\%94\%81\%e7\%bb\%b4\%e5\%9f\%ba\%e5\%aa\%92\%e4\%bd\%93\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e5\%b0\%81\%e5\%be\%9e\%e5\%be\%b7)|(?:zh\.wikipedia\.org.*\%e7\%b6\%a0\%e5\%a3\%a9\%c2\%b7\%e8\%8a\%b1\%e5\%ad\%a3\%e8\%ad\%b7\%e8\%88\%aa)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e5\%ae\%b6\%e5\%ba\%ad\%e6\%95\%99\%e4\%bc\%9a)|(?:zh\.wikipedia\.org.*\%e5\%91\%a8\%e6\%b0\%b8\%e5\%ba\%b7)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e6\%8c\%81\%e4\%b8\%8d\%e5\%90\%8c\%e6\%94\%bf\%e8\%a6\%8b\%e8\%80\%85\%e5\%90\%8d\%e5\%96\%ae)|(?:zh\.wikipedia\.org.*\%e5\%94\%af\%e8\%89\%b2)|(?:zh\.wikipedia\.org.*\%e7\%9b\%98\%e5\%8f\%a4\%e4\%b9\%90\%e9\%98\%9f)|(?:zh\.wikipedia\.org.*\%e6\%96\%b9\%e5\%8b\%b5\%e4\%b9\%8b)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e9\%94\%a6\%e6\%b6\%9b)|(?:zh\.wikipedia\.org.*\%e9\%87\%91\%e7\%9b\%be\%e5\%b7\%a5\%e7\%a8\%8b)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e4\%b9\%90\%e6\%b3\%89)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e8\%91\%ac)|(?:zh\.wikipedia\.org.*\%e9\%ad\%8f\%e4\%ba\%ac\%e7\%94\%9f)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e7\%bb\%b4\%e6\%9e\%97)|(?:zh\.wikipedia\.org.*\%e7\%89\%9b\%e5\%8d\%9a\%e7\%bd\%91)|(?:zh\.wikipedia\.org.*\%e5\%8e\%86\%e5\%8f\%b2\%e7\%9a\%84\%e4\%bc\%a4\%e5\%8f\%a3)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e4\%bd\%b3_\%28\%e7\%a4\%be\%e6\%b4\%bb\%e5\%8b\%95\%e5\%ae\%b6\%29)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e7\%91\%9e\%e7\%92\%b0)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e6\%9c\%89\%e6\%89\%8d)|(?:zh\.wikipedia\.org.*\%e6\%a0\%bc\%e9\%b2\%81\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e9\%98\%bf\%e6\%b2\%9b\%c2\%b7\%e9\%98\%bf\%e6\%97\%ba\%e6\%99\%8b\%e7\%be\%8e)|(?:zh\.wikipedia\.org.*\%e7\%8f\%ad\%e7\%a6\%85)|(?:zh\.wikipedia\.org.*\%e5\%bc\%a0\%e5\%9f\%b9\%e8\%8e\%89)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e5\%85\%b1\%e4\%ba\%a7\%e5\%85\%9a)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad.*\%e5\%9b\%bd\%e4\%ba\%ba\%e6\%9d\%83)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e6\%98\%ad\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e8\%a9\%a2\%e5\%95\%8f\%e8\%99\%95)|(?:zh\.wikipedia\.org.*\%c8\%bc\%c9\%d5\%c6\%bf)|(?:zh\.wikipedia\.org.*\%e5\%9b\%bd\%e4\%bf\%9d)|(?:zh\.wikipedia\.org.*\%e5\%86\%af\%e6\%ad\%a3\%e8\%99\%8e)|(?:zh\.wikipedia\.org.*\%e5\%bc\%a0\%e9\%ab\%98\%e4\%b8\%bd)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%97\%a8\%e8\%87\%aa\%e7\%84\%9a\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e8\%a2\%81\%e7\%ba\%a2\%e5\%86\%b0)|(?:zh\.wikipedia\.org.*\%e4\%be\%af\%e5\%be\%b7\%e5\%bb\%ba)|(?:zh\.wikipedia\.org.*\%e8\%89\%be\%e6\%9c\%aa\%e6\%9c\%aa)|(?:zh\.wikipedia\.org.*\%e6\%b8\%a9\%e4\%ba\%91\%e6\%9d\%be)|(?:zh\.wikipedia\.org.*\%e6\%a2\%81\%e5\%9c\%8b\%e9\%9b\%84)|(?:zh\.wikipedia\.org.*\%e8\%8a\%b1\%e5\%9b\%ad\%e7\%bd\%91)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%85\%b1\%e4\%b8\%ad\%e5\%a4\%ae\%e5\%ae\%a3\%e4\%bc\%a0\%e9\%83\%a8)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%97\%a8\%e5\%b9\%bf\%e5\%9c\%ba)|(?:zh\.wikipedia\.org.*\%e7\%bf\%92\%e8\%bf\%91\%e5\%b9\%b3)|(?:zh\.wikipedia\.org.*\%e9\%9b\%aa\%e5\%b1\%b1\%e7\%8d\%85\%e5\%ad\%90\%e6\%97\%97)|(?:zh\.wikipedia\.org.*\%e9\%98\%b2\%e7\%81\%ab\%e9\%95\%bf\%e5\%9f\%8e)|(?:zh\.wikipedia\.org.*\%e9\%98\%8e\%e6\%98\%8e\%e5\%a4\%8d)|(?:zh\.wikipedia\.org.*\%e6\%88\%91\%e7\%9a\%84\%e5\%a5\%8b\%e6\%96\%97)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e5\%85\%86\%e5\%9b\%bd)|(?:zh\.wikipedia\.org.*\%e5\%88\%98\%e5\%ae\%be\%e9\%9b\%81)|(?:zh\.wikipedia\.org.*\%e5\%90\%b4\%e5\%bc\%98\%e8\%be\%be)|(?:zh\.wikipedia\.org.*\%e5\%bb\%ba\%e5\%9b\%bd\%e9\%97\%a8\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e6\%b0\%91\%e5\%9c\%8b\%e6\%b2\%bb\%e8\%97\%8f\%e6\%ad\%b7\%e5\%8f\%b2)|(?:zh\.wikipedia\.org.*\%e6\%96\%b0\%e5\%94\%90\%e4\%ba\%ba\%e9\%9b\%bb\%e8\%a6\%96\%e5\%8f\%b0)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e5\%8d\%83\%e6\%ba\%90)|(?:zh\.wikipedia\.org.*\%e8\%be\%be\%e5\%b0\%94\%e7\%bd\%95\%e6\%b4\%bb\%e4\%bd\%9b)|(?:zh\.wikipedia\.org.*\%e6\%98\%9f\%e4\%ba\%91\%e6\%b3\%95\%e5\%b8\%88)|(?:zh\.wikipedia\.org.*\%e8\%a6\%ba\%e5\%9b\%8a\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e7\%ab\%8b\%e5\%86\%9b)|(?:zh\.wikipedia\.org.*512\%e5\%a4\%a7\%e5\%9c\%b0\%e9\%9c\%87)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e7\%82\%b3\%e7\%ab\%a0)|(?:zh\.wikipedia\.org.*\%bd\%f0\%b6\%dc\%b9\%a4\%b3\%cc)|(?:zh\.wikipedia\.org.*1989\%e5\%b9\%b4)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e5\%85\%b1\%e7\%94\%a2\%e9\%bb)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e5\%8a\%9b\%e9\%9b\%84)|(?:zh\.wikipedia\.org.*\%e5\%ae\%8b\%e4\%bb\%bb\%e7\%a9\%b7)|(?:zh\.wikipedia\.org.*\%e6\%b8\%85\%e6\%9c\%9d)|(?:zh\.wikipedia\.org.*\%e8\%bd\%ac\%e6\%b3\%95\%e8\%bd\%ae)|(?:zh\.wikibooks\.org.*\%e7\%aa\%81\%e7\%a0\%b4\%e7\%bd\%91\%e7\%bb\%9c\%e5\%ae\%a1\%e6\%9f\%a5)|(?:zh\.wikipedia\.org.*\%e6\%84\%a4\%e9\%9d\%92)|(?:zh\.wikipedia\.org.*\%e8\%b6\%99\%e7\%b4\%ab\%e9\%99\%bd)|(?:zh\.wikipedia\.org.*\%e9\%83\%ad\%e4\%bc\%af\%e9\%9b\%84)|(?:zh\.wikipedia\.org.*\%e6\%97\%a0\%e5\%9b\%bd\%e7\%95\%8c\%e8\%ae\%b0\%e8\%80\%85)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e8\%8b\%b1\%e6\%b5\%a9)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e8\%81\%af\%e9\%82\%a6\%e4\%b8\%bb\%e7\%be\%a9)|(?:zh\.wikipedia\.org.*\%e6\%8c\%aa\%e5\%a8\%81)|(?:zh\.wikipedia\.org.*\%e4\%b8\%83\%e4\%b8\%80\%e9\%81\%8a\%e8\%a1\%8c)|(?:zh\.wikipedia\.org.*\%e4\%be\%af\%e5\%be\%b7\%e5\%81\%a5)|(?:zh\.wikipedia\.org.*\%e9\%bb\%83\%e7\%90\%a6)|(?:zh\.wikipedia\.org.*\%e4\%b8\%89\%e9\%80\%80)|(?:zh\.wikipedia\.org.*\%e6\%9f\%b4\%e7\%8e\%b2)|(?:zh\.wikipedia\.org.*\%e4\%bd\%99\%e6\%9d\%b0)|(?:zh\.wikipedia\.org.*\%e9\%bb\%8e\%e5\%ae\%89\%e5\%8f\%8b)|(?:zh\.wikipedia\.org.*\%e5\%88\%98\%e4\%ba\%91\%e5\%b1\%b1)|(?:zh\.wikipedia\.org.*\%e8\%87\%aa\%e7\%94\%b1\%e9\%97\%a8)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a9\%e5\%ae\%89\%e9\%96\%80\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e8\%b5\%a6\%e5\%9b\%bd\%e9\%99\%85)|(?:zh\.wikipedia\.org.*\%e6\%b5\%a6\%e5\%bf\%97\%e5\%bc\%ba)|(?:zh\.wikipedia\.org.*\%e5\%88\%98\%e6\%85\%a7\%e5\%8d\%bf)|(?:zh\.wikipedia\.org.*\%e5\%8d\%9a\%e8\%ae\%af)|(?:zh\.wikipedia\.org.*\%e5\%be\%90\%e6\%89\%8d\%e5\%8e\%9a)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%a4\%ae\%e8\%ad\%a6\%e8\%a1\%9b\%e5\%b1\%80)|(?:zh\.wikipedia\.org.*\%e6\%b0\%91\%e4\%b8\%bb\%e9\%bb\%a8_\(\%e9\%a6\%99\%e6\%b8\%af\))|(?:zh\.wikipedia\.org.*\%e5\%b8\%88\%e6\%b6\%9b)|(?:zh\.wikipedia\.org.*\%e5\%88\%98\%e5\%bb\%b6\%e4\%b8\%9c)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8b\%b1\%e7\%ba\%8c\%e8\%a8\%82\%e8\%97\%8f\%e5\%8d\%b0\%e6\%a2\%9d\%e7\%b4\%84)|(?:zh\.wikipedia\.org.*\%e8\%af\%ba\%e8\%b4\%9d\%e5\%b0\%94\%e5\%92\%8c\%e5\%b9\%b3\%e5\%a5\%96)|(?:zh\.wikipedia\.org.*\%e4\%b9\%a0\%e8\%bf\%91\%e5\%b9\%b3)|(?:zh\.wikipedia\.org.*\%e5\%a1\%94\%e5\%b0\%94\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e5\%99\%b6\%e4\%b8\%be\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e4\%bf\%9e\%e6\%ad\%a3\%e5\%a3\%b0)|(?:zh\.wikipedia\.org.*\%e5\%90\%b4\%e9\%82\%a6\%e5\%9b\%bd)|(?:zh\.wikipedia\.org.*\%e8\%83\%a1\%e4\%bd\%b3_\%281973\%e5\%b9\%b4\%29)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e5\%9f\%ba\%e7\%9d\%a3\%e6\%95\%99\%e5\%8d\%8f\%e4\%bc\%9a)|(?:zh\.wikipedia\.org.*\%e6\%95\%8f\%e7\%8f\%a0\%e6\%9e\%97\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e6\%b1\%aa\%e6\%b4\%8b)|(?:zh\.wikipedia\.org.*\%e5\%a8\%81\%e8\%a7\%86\%e8\%85\%90\%e8\%b4\%a5\%e6\%a1\%88)|(?:zh\.wikipedia\.org.*\%e5\%af\%82\%e8\%ad\%b7)|(?:zh\.wikipedia\.org.*\%e5\%9b\%bd\%e5\%86\%85\%e5\%ae\%89\%e5\%85\%a8\%e4\%bf\%9d\%e5\%8d\%ab\%e6\%94\%af\%e9\%98\%9f)|(?:zh\.wikipedia\.org.*\%e5\%91\%bc\%e5\%9c\%96\%e5\%85\%8b\%e5\%9c\%96)|(?:zh\.wikipedia\.org.*\%e5\%a4\%8f\%e7\%91\%aa\%e5\%b7\%b4)|(?:zh\.wikipedia\.org.*\%e5\%8a\%89\%e5\%89\%9b_\(\%e6\%b0\%91\%e9\%81\%8b\%e4\%ba\%ba\%e5\%a3\%ab\))|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9c\%8b\%e8\%8c\%89\%e8\%8e\%89\%e8\%8a\%b1\%e9\%9d\%a9\%e5\%91\%bd)|(?:zh\.wikipedia\.org.*\%e5\%88\%98\%e6\%b7\%87)|(?:zh\.wikipedia\.org.*\%e5\%a4\%a7\%e8\%b5\%a6\%e5\%9c\%8b\%e9\%9a\%9b)|(?:zh\.wikipedia\.org.*\%e4\%ba\%94\%e6\%af\%9b\%e8\%9b\%8b\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e9\%bb\%83\%e9\%9b\%80\%e8\%a1\%8c\%e5\%8b\%95)|(?:zh\.wikipedia\.org.*\%e4\%b8\%87\%e9\%87\%8c)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e7\%bd\%91\%e7\%bb\%9c\%e8\%bd\%af\%e4\%bb\%b6\%e8\%bf\%87\%e6\%bb\%a4\%e5\%85\%b3\%e9\%94\%ae\%e5\%ad\%97\%e5\%88\%97\%e8\%a1\%a8)|(?:zh\.wikipedia\.org.*\%e8\%a5\%bf\%e5\%8d\%95\%e6\%b0\%91\%e4\%b8\%bb\%e5\%a2\%99)|(?:zh\.wikipedia\.org.*\%e5\%a4\%9a\%e7\%b6\%ad)|(?:zh\.wikipedia\.org.*\%e5\%93\%b2\%e5\%b8\%83\%e5\%b0\%8a\%e4\%b8\%b9\%e5\%b7\%b4\%e5\%91\%bc\%e5\%9b\%be\%e5\%85\%8b\%e5\%9b\%be)|(?:zh\.wikipedia\.org.*\%e5\%bd\%ad\%e4\%b8\%bd\%e5\%aa\%9b)|(?:zh\.wikipedia\.org.*anti\-cnn)|(?:zh\.wikipedia\.org.*\%e4\%b8\%89\%e5\%b9\%b4\%e8\%87\%aa\%e7\%84\%b6\%e7\%81\%be\%e5\%ae\%b3)|(?:zh\.wikipedia\.org.*\%e6\%b0\%91\%e9\%96\%93\%e4\%ba\%ba\%e6\%ac\%8a\%e9\%99\%a3\%e7\%b7\%9a)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e6\%b3\%9b\%e8\%93\%9d\%e8\%81\%94\%e7\%9b\%9f)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e6\%b0\%91\%e4\%b8\%bb\%e8\%bf\%90\%e5\%8a\%a8)|(?:zh\.wikipedia\.org.*\%e8\%b3\%88\%e6\%85\%b6\%e6\%9e\%97)|(?:zh\.wikipedia\.org.*\%e6\%89\%8e\%e4\%bb\%80\%e4\%bc\%a6\%e5\%b8\%83\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e5\%85\%ad\%e5\%9b\%9b)|(?:zh\.wikipedia\.org.*\%e5\%b8\%83\%e6\%8b\%89\%e6\%a0\%bc\%e4\%b9\%8b\%e6\%98\%a5)|(?:zh\.wikipedia\.org.*\%e5\%8d\%8e\%e5\%a4\%8f\%e6\%96\%87\%e6\%91\%98)|(?:zh\.wikipedia\.org.*\%e5\%b8\%ab\%e6\%bf\%a4)|(?:zh\.wikipedia\.org.*\%e9\%bb\%83\%e6\%9b\%89\%e6\%95\%8f)|(?:zh\.wikipedia\.org.*\%e5\%90\%be\%e5\%b0\%94\%e5\%bc\%80\%e5\%b8\%8c)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e6\%ba\%90\%e6\%bd\%ae)|(?:zh\.wikipedia\.org.*\%e5\%ae\%97\%e5\%96\%80\%e5\%b7\%b4)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e5\%86\%9b\%e6\%b6\%9b)|(?:zh\.wikipedia\.org.*\%e5\%99\%b6\%e5\%bd\%93\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e5\%ae\%81\%e7\%8e\%9b\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e7\%8e\%8b\%e5\%b2\%90\%e5\%b1\%b1)|(?:zh\.wikipedia\.org.*\%e5\%b0\%8f\%e6\%98\%ad\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e7\%9b\%9b\%e9\%9b\%aa)|(?:zh\.wikipedia\.org.*\%e7\%ab\%a0\%e8\%af\%92\%e5\%92\%8c)|(?:zh\.wikipedia\.org.*\%e6\%b1\%9f\%e6\%be\%a4\%e6\%b0\%91)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e6\%96\%87\%e7\%bb\%b4\%e5\%9f\%ba\%e7\%99\%be\%e7\%a7\%91)|(?:zh\.wikipedia\.org.*\%e8\%8b\%8f\%e5\%ae\%b6\%e5\%b1\%af\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e6\%b0\%91\%e4\%b8\%bb\%e5\%85\%9a)|(?:zh\.wikipedia\.org.*\%e4\%bd\%95\%e4\%bf\%8a\%e4\%bb\%81)|(?:zh\.wikipedia\.org.*\%e6\%bf\%80\%e6\%b5\%81\%e4\%b8\%ad\%e5\%9b\%bd)|(?:zh\.wikipedia\.org.*\%e4\%b8\%96\%e7\%95\%8c\%e7\%b6\%ad\%e5\%90\%be\%e7\%88\%be\%e4\%bb\%a3\%e8\%a1\%a8\%e5\%a4\%a7\%e6\%9c\%83)|(?:zh\.wikipedia\.org.*\%e9\%a6\%99\%e6\%b8\%af.*\%e6\%b0\%91\%e4\%b8\%bb\%e6\%b4\%be)|(?:zh\.wikipedia\.org.*\%e8\%8c\%89\%e8\%8e\%89\%e8\%8a\%b1\%e9\%9d\%a9\%e5\%91\%bd)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e5\%9b\%bd\%e5\%a4\%a7\%e9\%99\%86\%e5\%b0\%81\%e9\%94\%81\%e7\%bb\%b4\%e5\%9f\%ba\%e7\%99\%be\%e7\%a7\%91\%e4\%ba\%8b\%e4\%bb\%b6)|(?:zh\.wikipedia\.org.*\%e5\%8d\%8e\%e5\%9b\%bd\%e9\%94\%8b)|(?:zh\.wikipedia\.org.*\%e6\%b1\%b6\%e5\%b7\%9d\%e5\%a4\%a7\%e5\%9c\%b0\%e9\%9c\%87)|(?:zh\.wikipedia\.org.*\%e6\%8b\%89\%e8\%90\%a8)|(?:zh\.wikipedia\.org.*\%e5\%94\%90\%e6\%9f\%8f\%e6\%a1\%a5)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e5\%8d\%93\%e4\%ba\%ba)|(?:zh\.wikipedia\.org.*\%e5\%85\%a8\%e7\%90\%83\%e8\%97\%8f\%e4\%ba\%ba\%e7\%89\%b9\%e5\%88\%ab\%e5\%a4\%a7\%e4\%bc\%9a)|(?:zh\.wikipedia\.org.*\%e5\%a4\%aa\%e5\%ad\%90\%e5\%85\%9a)|(?:zh\.wikipedia\.org.*\%e7\%be\%85\%e5\%b9\%b2)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e9\%95\%bf\%e6\%98\%a5)|(?:zh\.wikipedia\.org.*\%e5\%85\%ab\%e4\%b9\%9d\%e5\%ad\%a6\%e8\%bf\%90)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9c\%8b\%e5\%af\%a9\%e6\%9f\%a5\%e8\%be\%ad\%e5\%bd\%99\%e5\%88\%97\%e8\%a1\%a8)|(?:zh\.wikipedia\.org.*\%e5\%8a\%89\%e6\%85\%a7\%e5\%8d\%bf)|(?:zh\.wikipedia\.org.*\%e5\%bc\%b5\%e6\%96\%87\%e5\%85\%89)|(?:zh\.wikipedia\.org.*\%e6\%b1\%9f\%e6\%b3\%bd\%e6\%b0\%91)|(?:zh\.wikipedia\.org.*\%e8\%89\%b2\%e6\%8b\%89\%e5\%af\%ba)|(?:zh\.wikipedia\.org.*\%e7\%be\%85\%e5\%b9\%b9)|(?:zh\.wikipedia\.org.*\%e5\%8d\%97\%e6\%96\%b9\%e9\%83\%bd\%e5\%b8\%82\%e6\%8a\%a5)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e6\%b0\%91\%e5\%9c\%8b\%e7\%b8\%bd\%e7\%b5\%b1\%e5\%ba\%9c)|(?:zh\.wikipedia\.org.*\%e4\%bb\%a4\%e8\%b0\%b7)|(?:zh\.wikipedia\.org.*\%e6\%b0\%91\%e4\%b8\%bb\%e5\%a5\%b3\%e7\%a5\%9e)|(?:zh\.wikipedia\.org.*\%e9\%99\%88\%e5\%85\%89\%e8\%af\%9a)|(?:zh\.wikipedia\.org.*\%e8\%a2\%81\%e7\%b4\%85\%e5\%86\%b0)|(?:zh\.wikipedia\.org.*\%e5\%98\%89\%e9\%9d\%96)|(?:zh\.wikipedia\.org.*\%e5\%bc\%a0\%e5\%be\%b7\%e6\%b1\%9f)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e7\%91\%9e\%e7\%8e\%af)|(?:zh\.wikipedia\.org.*\%e5\%bc\%b5\%e9\%88\%ba)|(?:zh\.wikipedia\.org.*\%e4\%b8\%ad\%e8\%8f\%af\%e4\%ba\%ba\%e6\%b0\%91\%e5\%85\%b1\%e5\%92\%8c\%e5\%9c\%8b\%e5\%ae\%97\%e6\%95\%99)|(?:zh\.wikipedia\.org.*\%e9\%98\%bf\%e5\%ba\%95\%e5\%b3\%bd)|(?:zh\.wikipedia\.org.*\%e7\%be\%8e\%e5\%9b\%bd\%e5\%9b\%bd\%e5\%ae\%b6\%e6\%b0\%91\%e4\%b8\%bb\%e5\%9f\%ba\%e9\%87\%91\%e4\%bc\%9a)|(?:zh\.wikipedia\.org.*\%e6\%9d\%8e\%e6\%85\%8e\%e4\%b9\%8b)|(?:zh\.wikipedia\.org.*\%e8\%ae\%b8\%e5\%ae\%b6\%e5\%b1\%af)/],
					'dtiblog': [/^https?:\/+(?:[^\/]+\.)?dtiblog\.com\//],
					'dongtaiwang': [/(?:^https?:\/+(?:[^\/]+\.)?dongtaiwang\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?dongtaiwang\.com\/)/],
					'space-scape': [/^https?:\/+(?:[^\/]+\.)?space\-scape\.com\//],
					'video': [/(?:video\.aol\.ca\/video\-detail)|(?:^https?:\/+(?:[^\/]+\.)?video\.aol\.com\/)|(?:hk\.video\.news\.yahoo\.com\/video)|(?:video\.aol\.co\.uk\/video\-detail)/],
					'finalion': [/^https?:\/+(?:[^\/]+\.)?finalion\.jp\//],
					'htxt': [/^https?:\/+(?:[^\/]+\.)?htxt\.it\//],
					'phonegap': [/^https?:\/+(?:[^\/]+\.)?wiki\.phonegap\.com\//],
					'powercx': [/^https?:\/+(?:[^\/]+\.)?powercx\.com\//],
					'ssh91': [/^https?:\/+(?:[^\/]+\.)?ssh91\.com\//],
					'dalianmeng': [/^https?:\/+(?:[^\/]+\.)?dalianmeng\.org\//],
					'thedw': [/^https?:\/+(?:[^\/]+\.)?thedw\.us\//],
					'vaayoo': [/^https?:\/+(?:[^\/]+\.)?vaayoo\.com\//],
					'mad-ar': [/^https?:\/+(?:[^\/]+\.)?mad\-ar\.ch\//],
					'xh4n': [/xh4n\.cn\/blog/],
					'salvation': [/^https?:\/+(?:[^\/]+\.)?salvation\.org\.hk\//],
					'apple': [/\.apple\..*isunaffairs/],
					'chrispederick': [/(?:^https?:\/+(?:[^\/]+\.)?chrispederick\.net\/)|(?:^https?:\/+(?:[^\/]+\.)?chrispederick\.com\/)/],
					'mihk': [/\.mihk\.hk\/forum/],
					'avaaz': [/^https?:\/+(?:[^\/]+\.)?avaaz\.org\//],
					'starp2p': [/^https?:\/+(?:[^\/]+\.)?starp2p\.com\//],
					'cdjp': [/^https?:\/+(?:[^\/]+\.)?cdjp\.org\//],
					'purevpn': [/^https?:\/+(?:[^\/]+\.)?purevpn\.com\//],
					'dribbble': [/^https?:\/+(?:[^\/]+\.)?blog\.dribbble\.com\//],
					'christianstudy': [/^https?:\/+(?:[^\/]+\.)?christianstudy\.com\//],
					'hidecloud': [/hidecloud\.com\/blog\/2008\/07\/29\/fuck\-beijing\-olympics\.html/],
					'uocn': [/^https?:\/+(?:[^\/]+\.)?uocn\.org\//],
					'kangye': [/^https?:\/+(?:[^\/]+\.)?blog\.kangye\.org\//],
					'duplicati': [/^https?:\/+(?:[^\/]+\.)?duplicati\.com\//],
					'bitly': [/^https?:\/+(?:[^\/]+\.)?blog\.bitly\.com\//],
					'tweetboner': [/^https?:\/+(?:[^\/]+\.)?tweetboner\.biz\//],
					'williamhill': [/^https?:\/+(?:[^\/]+\.)?sports\.williamhill\.com\//],
					'chinachannel': [/^https?:\/+(?:[^\/]+\.)?chinachannel\.hk\//],
					'thebcomplex': [/^https?:\/+(?:[^\/]+\.)?thebcomplex\.com\//],
					'xuzhuoer': [/^https?:\/+(?:[^\/]+\.)?xuzhuoer\.com\//],
					'yeelou': [/^https?:\/+(?:[^\/]+\.)?yeelou\.com\//],
					'wordsandturds': [/^https?:\/+(?:[^\/]+\.)?wordsandturds\.com\//],
					'asahichinese': [/^https?:\/+(?:[^\/]+\.)?asahichinese\.com\//],
					'firstfivefollowers': [/^https?:\/+(?:[^\/]+\.)?firstfivefollowers\.com\//],
					'etools': [/^https?:\/+(?:[^\/]+\.)?etools\.ncol\.com\//],
					'snooper': [/^https?:\/+(?:[^\/]+\.)?snooper\.co\.uk\//],
					'twimbow': [/^https?:\/+(?:[^\/]+\.)?twimbow\.com\//],
					'twitpic': [/^https?:\/+(?:[^\/]+\.)?twitpic\.com\//],
					'asdfg': [/asdfg\.jp\/dabr/],
					'fanglizhi': [/^https?:\/+(?:[^\/]+\.)?fanglizhi\.info\//],
					'kickstarter': [/^https?:\/+(?:[^\/]+\.)?blog\.kickstarter\.com\//],
					'po2b': [/^https?:\/+(?:[^\/]+\.)?po2b\.com\//],
					'npa': [/^https?:\/+(?:[^\/]+\.)?npa\.go\.jp\//],
					'voachinese': [/^https?:\/+(?:[^\/]+\.)?voachinese\.com\//],
					'im88': [/^https?:\/+(?:[^\/]+\.)?im88\.tw\//],
					'sufeng': [/^https?:\/+(?:[^\/]+\.)?sufeng\.org\//],
					'sweux': [/^https?:\/+(?:[^\/]+\.)?sweux\.com\//],
					'twreg': [/^https?:\/+(?:[^\/]+\.)?twreg\.info\//],
					'iphone-dev': [/^https?:\/+(?:[^\/]+\.)?blog\.iphone\-dev\.org\//],
					'zootool': [/^https?:\/+(?:[^\/]+\.)?zootool\.com\//],
					'namsisi': [/^https?:\/+(?:[^\/]+\.)?namsisi\.com\//],
					'hkej': [/\.hkej\.com\/template\/forum/],
					'twyac': [/^https?:\/+(?:[^\/]+\.)?twyac\.org\//],
					'4sq': [/^http\:\/\/4sq\.com/],
					'jwmusic': [/^https?:\/+(?:[^\/]+\.)?jwmusic\.org\//],
					'ozchinese': [/\.ozchinese\.com\/bbs/],
					'freewallpaper4': [/^https?:\/+(?:[^\/]+\.)?freewallpaper4\.me\//],
					'wellplacedpixels': [/^https?:\/+(?:[^\/]+\.)?wellplacedpixels\.com\//],
					'chinamule': [/^https?:\/+(?:[^\/]+\.)?chinamule\.com\//],
					'buugaa': [/^https?:\/+(?:[^\/]+\.)?buugaa\.com\//],
					'vmixcore': [/^https?:\/+(?:[^\/]+\.)?vmixcore\.com\//],
					'tweetree': [/^https?:\/+(?:[^\/]+\.)?tweetree\.com\//],
					'huaren': [/^https?:\/+(?:[^\/]+\.)?huaren\.us\//],
					'rojo': [/^https?:\/+(?:[^\/]+\.)?rojo\.com\//],
					'code1984': [/\.code1984\.com\/64/],
					'myeclipseide': [/^https?:\/+(?:[^\/]+\.)?myeclipseide\.com\//],
					'openwebster': [/^https?:\/+(?:[^\/]+\.)?openwebster\.com\//],
					'zhuichaguoji': [/^https?:\/+(?:[^\/]+\.)?zhuichaguoji\.org\//],
					'freeoz': [/(?:^https?:\/+(?:[^\/]+\.)?freeoz\.org\/)|(?:\.freeoz\.org\/bbs)/],
					'i2runner': [/^https?:\/+(?:[^\/]+\.)?i2runner\.com\//],
					'orzistic': [/^https?:\/+(?:[^\/]+\.)?orzistic\.org\//],
					'openvpn': [/^https?:\/+(?:[^\/]+\.)?openvpn\.net\//],
					'holyspiritspeaks': [/^https?:\/+(?:[^\/]+\.)?holyspiritspeaks\.org\//],
					'python': [/^http\:\/\/python\.com\.tw/],
					'docs': [/(?:docs\.google\.com.*view.*id.*dg5mtmj9_8g3hk27f5)|(?:docs\.google\.com.*dgtbmwd6_934gg99v6g4cc)|(?:docs\.google\.com.*view.*id.*dg5mtmj9_3188x48zcn)/],
					'hqcdp': [/^https?:\/+(?:[^\/]+\.)?hqcdp\.org\//],
					'bullog': [/^https?:\/+(?:[^\/]+\.)?bullog\.org\//],
					'zonble': [/^https?:\/+(?:[^\/]+\.)?cocoa\.zonble\.net\//],
					'phuquocservices': [/^https?:\/+(?:[^\/]+\.)?phuquocservices\.com\//],
					'tidyread': [/^https?:\/+(?:[^\/]+\.)?tidyread\.com\//],
					'pekingduck': [/^https?:\/+(?:[^\/]+\.)?pekingduck\.org\//],
					'zarias': [/^https?:\/+(?:[^\/]+\.)?zarias\.com\//],
					'penchinese': [/^https?:\/+(?:[^\/]+\.)?penchinese\.net\//],
					'books': [/^https?:\/+(?:[^\/]+\.)?books\.com\.tw\//],
					'rferl': [/^https?:\/+(?:[^\/]+\.)?rferl\.org\//],
					'mh4u': [/^https?:\/+(?:[^\/]+\.)?mh4u\.org\//],
					'twittermail': [/^https?:\/+(?:[^\/]+\.)?twittermail\.com\//],
					'reflectivecode': [/^https?:\/+(?:[^\/]+\.)?reflectivecode\.com\//],
					'plixi': [/^https?:\/+(?:[^\/]+\.)?m\.plixi\.com\//],
					'sexinsex': [/^https?:\/+(?:[^\/]+\.)?sexinsex\.net\//],
					'kcsoftwares': [/^https?:\/+(?:[^\/]+\.)?kcsoftwares\.com\//],
					'aobo': [/^https?:\/+(?:[^\/]+\.)?aobo\.com\.au\//],
					'backchina': [/^https?:\/+(?:[^\/]+\.)?backchina\.com\//],
					'sthoo': [/^https?:\/+(?:[^\/]+\.)?sthoo\.com\//],
					's1heng': [/^https?:\/+(?:[^\/]+\.)?s1heng\.com\//],
					'strongvpn': [/^https?:\/+(?:[^\/]+\.)?strongvpn\.com\//],
					'waikeung': [/waikeung\.org\/php_wind/],
					'bannedbook': [/^https?:\/+(?:[^\/]+\.)?bannedbook\.org\//],
					'freegao': [/^https?:\/+(?:[^\/]+\.)?freegao\.com\//],
					'csuchen': [/^https?:\/+(?:[^\/]+\.)?csuchen\.de\//],
					'prestige-av': [/^https?:\/+(?:[^\/]+\.)?prestige\-av\.com\//],
					'hiitch': [/^https?:\/+(?:[^\/]+\.)?hiitch\.com\//],
					'uyghurcongress': [/^https?:\/+(?:[^\/]+\.)?uyghurcongress\.org\//],
					'falsefire': [/^https?:\/+(?:[^\/]+\.)?falsefire\.com\//],
					'stuffimreading': [/(?:^https?:\/+(?:[^\/]+\.)?stuffimreading\.com\/)|(?:^https?:\/+(?:[^\/]+\.)?stuffimreading\.net\/)/],
					'fqrouter': [/^https?:\/+(?:[^\/]+\.)?fqrouter\.com\//],
					'westernwolves': [/^https?:\/+(?:[^\/]+\.)?westernwolves\.com\//],
					'mthruf': [/^https?:\/+(?:[^\/]+\.)?mthruf\.com\//],
					'stoneip': [/^https?:\/+(?:[^\/]+\.)?stoneip\.info\//],
					'hardsextube': [/^https?:\/+(?:[^\/]+\.)?hardsextube\.com\//],
					'geekerhome': [/geekerhome\.com\/2010\/03\/xixiang\-project\-cross\-gfw/],
					'daylife': [/\.daylife\.com\/topic\/dalai_lama/],
					'youpai': [/^https?:\/+(?:[^\/]+\.)?youpai\.org\//],
					'antidrm': [/^https?:\/+(?:[^\/]+\.)?antidrm\.hpg\.ig\.com\.br\//],
					'xnxx': [/^https?:\/+(?:[^\/]+\.)?xnxx\.com\//],
					'rsf': [/^https?:\/+(?:[^\/]+\.)?rsf\.org\//],
					'whydidyoubuymethat': [/^https?:\/+(?:[^\/]+\.)?whydidyoubuymethat\.com\//],
					'lists': [/lists\.w3\.org\/archives\/public/],
					'coolder': [/^https?:\/+(?:[^\/]+\.)?coolder\.com\//],
					'udn': [/^https?:\/+(?:[^\/]+\.)?udn\.com\//],
					'36rain': [/^https?:\/+(?:[^\/]+\.)?36rain\.com\//],
					'parislemon': [/^https?:\/+(?:[^\/]+\.)?parislemon\.com\//],
					'twitstat': [/^https?:\/+(?:[^\/]+\.)?twitstat\.com\//],
					'globalrescue': [/^https?:\/+(?:[^\/]+\.)?globalrescue\.net\//],
					'guomin': [/guomin\.us\/login/],
					'nanyangpost': [/^https?:\/+(?:[^\/]+\.)?nanyangpost\.com\//],
					'sandnoble': [/sandnoble\.com\/booksearch\/isbninquiry\.asp/],
					'privacybox': [/^https?:\/+(?:[^\/]+\.)?privacybox\.de\//],
					'blip': [/^https?:\/+(?:[^\/]+\.)?blip\.tv\//],
					'imdb': [/^http\:\/\/www\.imdb\.com\/name\/nm0482730/],
					'joeyrobert': [/^https?:\/+(?:[^\/]+\.)?blog\.joeyrobert\.org\//],
					'zattoo': [/^https?:\/+(?:[^\/]+\.)?zattoo\.com\//],
					'catholic': [/(?:^https?:\/+(?:[^\/]+\.)?catholic\.org\.hk\/)|(?:^https?:\/+(?:[^\/]+\.)?catholic\.org\.tw\/)/],
					'mediafire': [/\.mediafire\.com\/\?/],
					'geekmanuals': [/^https?:\/+(?:[^\/]+\.)?geekmanuals\.com\//],
					'fanswong': [/^https?:\/+(?:[^\/]+\.)?fanswong\.com\//],
					'v-state': [/^https?:\/+(?:[^\/]+\.)?v\-state\.org\//],
					'nytimes': [/^https?:\/+(?:[^\/]+\.)?nytimes\.com\//],
					'rthk': [/(?:^http\:\/\/rthk\.hk)|(?:^http\:\/\/rthk\.org\.hk)/],
					'cdig': [/^https?:\/+(?:[^\/]+\.)?cdig\.info\//],
					'feelssh': [/^https?:\/+(?:[^\/]+\.)?feelssh\.com\//],
					'modfetish': [/^https?:\/+(?:[^\/]+\.)?modfetish\.com\//],
					'diigo': [/^https?:\/+(?:[^\/]+\.)?diigo\.com\//],
					'emacsblog': [/^https?:\/+(?:[^\/]+\.)?emacsblog\.org\//],
					'pastie': [/^https?:\/+(?:[^\/]+\.)?pastie\.org\//],
					'duckmylife': [/^https?:\/+(?:[^\/]+\.)?duckmylife\.com\//],
					'myav': [/\.myav\.com\.tw\/bbs/],
					'slickvpn': [/^https?:\/+(?:[^\/]+\.)?slickvpn\.com\//],
					'gather': [/^https?:\/+(?:[^\/]+\.)?gather\.com\//],
					'lvhai': [/^https?:\/+(?:[^\/]+\.)?lvhai\.org\//],
					'shizhao': [/^https?:\/+(?:[^\/]+\.)?shizhao\.org\//],
					'letscorp': [/^https?:\/+(?:[^\/]+\.)?letscorp\.net\//],
					'twittercounter': [/^https?:\/+(?:[^\/]+\.)?twittercounter\.com\//],
					'tzangms': [/^https?:\/+(?:[^\/]+\.)?tzangms\.com\//],
					'mobatek': [/^https?:\/+(?:[^\/]+\.)?mobatek\.net\//],
					'encrypted': [/^https?:\/+(?:[^\/]+\.)?encrypted\.google\.com\//],
					'thisiswhyyouarefat': [/^https?:\/+(?:[^\/]+\.)?thisiswhyyouarefat\.com\//],
					'couchdbwiki': [/^https?:\/+(?:[^\/]+\.)?couchdbwiki\.com\//],
					'asianwomensfilm': [/^https?:\/+(?:[^\/]+\.)?asianwomensfilm\.de\//],
					'democrats': [/^https?:\/+(?:[^\/]+\.)?democrats\.org\//],
					'kagyuoffice': [/^https?:\/+(?:[^\/]+\.)?kagyuoffice\.org\.tw\//],
					'hkatvnews': [/app\.hkatvnews\.com\/v3/],
					'wpoforum': [/^https?:\/+(?:[^\/]+\.)?wpoforum\.com\//],
					'arctosia': [/^http\:\/\/arctosia\.com/],
					'ruanyifeng': [/\.ruanyifeng\.com\/blog.*some_ways_to_break_the_great_firewall/],
					'nga': [/^https?:\/+(?:[^\/]+\.)?nga\.mil\//],
					'laoyang': [/^http\:\/\/laoyang\.info/],
					'mixedmedialabs': [/^https?:\/+(?:[^\/]+\.)?mixedmedialabs\.com\//],
					'psblog': [/^https?:\/+(?:[^\/]+\.)?psblog\.name\//],
					'gclooney': [/^https?:\/+(?:[^\/]+\.)?gclooney\.com\//],
					'legaltech': [/^https?:\/+(?:[^\/]+\.)?legaltech\.law\.com\//],
					'ttv': [/bb\.ttv\.com\.tw\/bb/],
					'ipvanish': [/^https?:\/+(?:[^\/]+\.)?ipvanish\.com\//],
					'labiennale': [/^https?:\/+(?:[^\/]+\.)?labiennale\.org\//],
					'codeboxapp': [/^https?:\/+(?:[^\/]+\.)?codeboxapp\.com\//],
					'dpp': [/^https?:\/+(?:[^\/]+\.)?dpp\.org\.tw\//],
					'wiredbytes': [/^https?:\/+(?:[^\/]+\.)?wiredbytes\.com\//],
					'imkev': [/^https?:\/+(?:[^\/]+\.)?imkev\.com\//],
					'blogspot': [/^https?:\/+(?:[^\/]+\.)?blogspot\.hk\//],
					'sethwklein': [/^https?:\/+(?:[^\/]+\.)?sethwklein\.net\//],
					'shaunthesheep': [/^https?:\/+(?:[^\/]+\.)?shaunthesheep\.com\//],
					'apigee': [/^https?:\/+(?:[^\/]+\.)?apigee\.com\//],
					'october-review': [/^https?:\/+(?:[^\/]+\.)?october\-review\.org\//],
					'tunein': [/^http\:\/\/tunein\.com/],
					'itaboo': [/^https?:\/+(?:[^\/]+\.)?itaboo\.info\//],
					'destiny': [/destiny\.xfiles\.to\/ubbthreads/],
					'maruta': [/maruta\.be\/forget/],
					'softwarebychuck': [/^https?:\/+(?:[^\/]+\.)?softwarebychuck\.com\//],
					'presentationzen': [/^https?:\/+(?:[^\/]+\.)?presentationzen\.com\//],
					'duihua': [/^https?:\/+(?:[^\/]+\.)?duihua\.org\//],
					'flickr': [/(?:flickr\.com\/photos\/vanvan\/529925157)|(?:\.flickr\.com\/groups\/aiweiwei)|(?:\.flickr\.com\/photos\/46231077\@n06)|(?:\.flickr\.com\/photos\/zola)|(?:\.flickr\.com\/photos\/fzhenghu)|(?:\.flickr\.com\/photos\/lonelyfox)|(?:\.flickr\.com\/photos\/digitalboy100)|(?:\.flickr\.com\/photos\/winterkanal)/],
					'wordboner': [/^https?:\/+(?:[^\/]+\.)?wordboner\.com\//],
					'megarotic': [/^https?:\/+(?:[^\/]+\.)?megarotic\.com\//],
					'hasaowall': [/^https?:\/+(?:[^\/]+\.)?hasaowall\.com\//],
					'spotify': [/^https?:\/+(?:[^\/]+\.)?spotify\.com\//],
					'livingstream': [/^https?:\/+(?:[^\/]+\.)?livingstream\.com\//],
					'ifanr': [/\.ifanr\.com\/857/],
					'clientsfromhell': [/^https?:\/+(?:[^\/]+\.)?clientsfromhell\.net\//],
					'doxygen': [/^https?:\/+(?:[^\/]+\.)?doxygen\.org\//],
					'nobelprize': [/nobelprize\.org\/nobel_prizes\/peace\/laureates\/2010/],
					'nokola': [/^https?:\/+(?:[^\/]+\.)?nokola\.com\//],
					'ronjoneswriter': [/^https?:\/+(?:[^\/]+\.)?ronjoneswriter\.com\//],
					'delcamp': [/^https?:\/+(?:[^\/]+\.)?delcamp\.net\//],
					'nurgo-software': [/^https?:\/+(?:[^\/]+\.)?nurgo\-software\.com\//],
					'e-gold': [/^https?:\/+(?:[^\/]+\.)?e\-gold\.com\//],
					'co': [/(?:^https\:\/\/t\.co)|(?:^http\:\/\/t\.co)/],
					'cl': [/^https?:\/+(?:[^\/]+\.)?cl\.ly\//],
					'twitgether': [/^https?:\/+(?:[^\/]+\.)?twitgether\.com\//],
					'hloli': [/apps\.hloli\.net\/gfwtube/],
					'torvpn': [/^https?:\/+(?:[^\/]+\.)?torvpn\.com\//],
					'fireofliberty': [/^https?:\/+(?:[^\/]+\.)?fireofliberty\.org\//],
					'theqii': [/theqii\.info\/blog/],
					'faiththedog': [/^https?:\/+(?:[^\/]+\.)?faiththedog\.info\//],
					'rockmelt': [/^https?:\/+(?:[^\/]+\.)?blog\.rockmelt\.com\//],
					'bbc': [/(?:\.bbc\.co\.uk.*chinese)|(?:\.bbc\.co\.uk.*zhongwen)|(?:^http\:\/\/bbc\.in)|(?:\.bbc\.co\.uk\/tv)/],
					'willw': [/^https?:\/+(?:[^\/]+\.)?willw\.net\//],
					'yam': [/^https?:\/+(?:[^\/]+\.)?yam\.com\//],
					'billywr': [/^https?:\/+(?:[^\/]+\.)?billywr\.com\//],
					'makemymood': [/^https?:\/+(?:[^\/]+\.)?makemymood\.com\//],
					'cuihua': [/^https?:\/+(?:[^\/]+\.)?cuihua\.org\//],
					'vegorpedersen': [/^https?:\/+(?:[^\/]+\.)?www\.vegorpedersen\.com\//],
					'mike': [/^https?:\/+(?:[^\/]+\.)?mike\.cz\.cc\//],
					'hsjp': [/^https?:\/+(?:[^\/]+\.)?hsjp\.net\//],
					'tweeplike': [/^https?:\/+(?:[^\/]+\.)?tweeplike\.me\//],
					'twittergadget': [/^https?:\/+(?:[^\/]+\.)?twittergadget\.com\//],
					'twstar': [/^https?:\/+(?:[^\/]+\.)?twstar\.net\//],
					'tinypaste': [/^https?:\/+(?:[^\/]+\.)?tinypaste\.com\//],
					'tnaflix': [/^https?:\/+(?:[^\/]+\.)?tnaflix\.com\//],
					'taiwandaily': [/^https?:\/+(?:[^\/]+\.)?taiwandaily\.net\//],
					'miroguide': [/^https?:\/+(?:[^\/]+\.)?miroguide\.com\//],
					'edubridge': [/^https?:\/+(?:[^\/]+\.)?edubridge\.com\//],
					'opnir': [/opnir\.com\/215\/myentunnel\-ssh\-autoproxy\-cross\-gfw/],
					'svwind': [/^https?:\/+(?:[^\/]+\.)?svwind\.com\//],
					'expofutures': [/^https?:\/+(?:[^\/]+\.)?blog\.expofutures\.com\//],
					'stoptibetcrisis': [/^https?:\/+(?:[^\/]+\.)?stoptibetcrisis\.net\//],
					'cjb': [/cjb\.net\/vpn\.html/],
					'linuxreviews': [/^https?:\/+(?:[^\/]+\.)?linuxreviews\.org\//],
					'twitcause': [/^https?:\/+(?:[^\/]+\.)?twitcause\.com\//],
					'chevronwp7': [/^https?:\/+(?:[^\/]+\.)?chevronwp7\.com\//],
					'so-ga': [/^https?:\/+(?:[^\/]+\.)?so\-ga\.net\//],
					'njuice': [/^https?:\/+(?:[^\/]+\.)?njuice\.com\//],
					'tweetdeck': [/^https?:\/+(?:[^\/]+\.)?tweetdeck\.com\//],
					'gaopi': [/^http\:\/\/gaopi\.net/],
					'etizer': [/^https?:\/+(?:[^\/]+\.)?etizer\.org\//],
					'student': [/\.student\.tw\/db/],
					'pagodabox': [/^https?:\/+(?:[^\/]+\.)?pagodabox\.com\//],
					'bitshare': [/(?:^http\:\/\/bitshare\.com\/files)|(?:\.bitshare\.com\/files)/],
					'mixero': [/^https?:\/+(?:[^\/]+\.)?mixero\.com\//],
					'civilhrfront': [/^https?:\/+(?:[^\/]+\.)?civilhrfront\.org\//],
					'rsf-chinese': [/^https?:\/+(?:[^\/]+\.)?rsf\-chinese\.org\//],
					'cdp1998': [/^https?:\/+(?:[^\/]+\.)?cdp1998\.org\//],
					'antiwave': [/^http\:\/\/antiwave\.net/],
					'isgreat': [/^https?:\/+(?:[^\/]+\.)?isgreat\.org\//],
					'ultravpn': [/^https?:\/+(?:[^\/]+\.)?ultravpn\.fr\//],
					'if-not-true-then-false': [/^https?:\/+(?:[^\/]+\.)?if\-not\-true\-then\-false\.com\//],
					'navicat': [/^https?:\/+(?:[^\/]+\.)?navicat\.com\//],
					'so-net': [/home\.so\-net\.net\.tw\/yisa_tsai/],
					'sinocast': [/^https?:\/+(?:[^\/]+\.)?sinocast\.com\//],
					'futureme': [/^https?:\/+(?:[^\/]+\.)?futureme\.org\//],
					'lazarsearlymusic': [/^https?:\/+(?:[^\/]+\.)?lazarsearlymusic\.com\//],
					'lyricsquote': [/^https?:\/+(?:[^\/]+\.)?lyricsquote\.com\//],
					'nuexpo': [/^https?:\/+(?:[^\/]+\.)?nuexpo\.com\//],
					'goodreaders': [/^https?:\/+(?:[^\/]+\.)?goodreaders\.com\//],
					'cubicle17': [/^https?:\/+(?:[^\/]+\.)?cubicle17\.com\//],
					'desc': [/^https?:\/+(?:[^\/]+\.)?desc\.se\//],
					'theappleblog': [/^https?:\/+(?:[^\/]+\.)?theappleblog\.com\//],
					'englishfromengland': [/^https?:\/+(?:[^\/]+\.)?englishfromengland\.co\.uk\//],
					'interestinglaugh': [/^https?:\/+(?:[^\/]+\.)?interestinglaugh\.com\//],
					'bbsfeed': [/^https?:\/+(?:[^\/]+\.)?bbsfeed\.com\//],
					'twitter': [/(?:^https?:\/\/[^\/]+twitter\.com)|(?:^https?:\/+(?:[^\/]+\.)?twitter\.jp\/)|(?:^https?:\/+(?:[^\/]+\.)?twitter\.com\/)/],
					'webfee': [/^https?:\/+(?:[^\/]+\.)?webfee\.tk\//],
					'steel-storm': [/^https?:\/+(?:[^\/]+\.)?steel\-storm\.com\//],
					'cyberghostvpn': [/^https?:\/+(?:[^\/]+\.)?cyberghostvpn\.com\//],
					'osfoora': [/^https?:\/+(?:[^\/]+\.)?osfoora\.com\//],
					'tmi': [/^http\:\/\/tmi\.me/],
					'chinagreenparty': [/^https?:\/+(?:[^\/]+\.)?chinagreenparty\.org\//],
					'qienkuen': [/^https?:\/+(?:[^\/]+\.)?qienkuen\.org\//],
					'danke4china': [/^https?:\/+(?:[^\/]+\.)?danke4china\.net\//],
					'ifcss': [/^https?:\/+(?:[^\/]+\.)?ifcss\.org\//],
					'jiaoyou8': [/^https?:\/+(?:[^\/]+\.)?jiaoyou8\.com\//],
					'dougscripts': [/^https?:\/+(?:[^\/]+\.)?dougscripts\.com\//],
					'fmnnow': [/^http\:\/\/cn\.fmnnow\.com/],
					'0to255': [/^https?:\/+(?:[^\/]+\.)?0to255\.com\//],
					'owl': [/^http\:\/\/owl\.li/],
					'backpackers': [/\.backpackers\.com\.tw\/forum/],
					'twiggit': [/^https?:\/+(?:[^\/]+\.)?twiggit\.org\//],
					'atlaspost': [/^https?:\/+(?:[^\/]+\.)?atlaspost\.com\//],
					'markmilian': [/^https?:\/+(?:[^\/]+\.)?markmilian\.com\//],
					'nekoslovakia': [/^https?:\/+(?:[^\/]+\.)?nekoslovakia\.net\//],
					'linuxtoy': [/linuxtoy\.org\/archives\/installing\-west\-chamber\-on\-ubuntu/],
					'cpj': [/^https?:\/+(?:[^\/]+\.)?cpj\.org\//],
					'panluan': [/^https?:\/+(?:[^\/]+\.)?panluan\.net\//],
					'purepdf': [/^https?:\/+(?:[^\/]+\.)?purepdf\.com\//],
					'oauth': [/^https?:\/+(?:[^\/]+\.)?wiki\.oauth\.net\//],
					'freelotto': [/^https?:\/+(?:[^\/]+\.)?freelotto\.com\//],
					'hihiforum': [/^http\:\/\/hihiforum\.com/],
					'minghui': [/^https?:\/+(?:[^\/]+\.)?minghui\.org\//],
					'jqueryui': [/^https?:\/+(?:[^\/]+\.)?wiki\.jqueryui\.com\//],
					'windowsphoneme': [/^https?:\/+(?:[^\/]+\.)?windowsphoneme\.com\//],
					'flagfox': [/^https?:\/+(?:[^\/]+\.)?flagfox\.net\//],
					'raidcall': [/^https?:\/+(?:[^\/]+\.)?raidcall\.com\.tw\//],
					'apiary': [/^https?:\/+(?:[^\/]+\.)?apiary\.io\//],
					'ub0': [/^http\:\/\/ub0\.cc/],
					'knowledgerush': [/\.knowledgerush\.com\/kr\/encyclopedia/],
					'sogrady': [/^https?:\/+(?:[^\/]+\.)?sogrady\.me\//],
					'bettween': [/^https?:\/+(?:[^\/]+\.)?bettween\.com\//],
					'epochtimes-romania': [/^https?:\/+(?:[^\/]+\.)?epochtimes\-romania\.com\//],
					'gabocorp': [/^https?:\/+(?:[^\/]+\.)?gabocorp\.com\//],
					'urlparser': [/^https?:\/+(?:[^\/]+\.)?urlparser\.com\//],
					'perlhowto': [/^https?:\/+(?:[^\/]+\.)?perlhowto\.com\//],
					'peerpong': [/^https?:\/+(?:[^\/]+\.)?peerpong\.com\//],
					'lookingglasstheatre': [/^https?:\/+(?:[^\/]+\.)?lookingglasstheatre\.org\//],
					'twipple': [/^https?:\/+(?:[^\/]+\.)?twipple\.jp\//],
					'premeforwindows7': [/^https?:\/+(?:[^\/]+\.)?premeforwindows7\.com\//],
					'acgkj': [/^https?:\/+(?:[^\/]+\.)?acgkj\.com\//],
					'branch': [/^https?:\/+(?:[^\/]+\.)?branch\.com\//],
					'lockestek': [/^https?:\/+(?:[^\/]+\.)?lockestek\.com\//],
					'chrlcg-hk': [/^https?:\/+(?:[^\/]+\.)?chrlcg\-hk\.org\//],
					'songjianjun': [/^https?:\/+(?:[^\/]+\.)?songjianjun\.com\//],
					'wisevid': [/^https?:\/+(?:[^\/]+\.)?wisevid\.com\//],
					'igfw': [/^https?:\/+(?:[^\/]+\.)?igfw\.net\//],
					'mychat': [/^https?:\/+(?:[^\/]+\.)?bbs\.mychat\.to\//],
					'sobees': [/^https?:\/+(?:[^\/]+\.)?sobees\.com\//],
					'imageflea': [/^https?:\/+(?:[^\/]+\.)?imageflea\.com\//],
					'bcc': [/\.bcc\.com\.tw\/board/],
					'wzyboy': [/wzyboy\.im\/post\/160/],
					'teamseesmic': [/^https?:\/+(?:[^\/]+\.)?teamseesmic\.com\//],
					'sowiki': [/^https?:\/+(?:[^\/]+\.)?wlx\.sowiki\.net\//],
					'pentalogic': [/^https?:\/+(?:[^\/]+\.)?blog\.pentalogic\.net\//],
					'1bao': [/^http\:\/\/1bao\.org/]
				}, [],
				[],
				[/(?:search.*\%e4\%b8\%ad\%e5\%9b\%bd\%e8\%ae\%ba\%e5\%9d\%9b)|(?:search.*\%e6\%88\%91\%e7\%9a\%84\%e5\%a5\%8b\%e6\%96\%97)|(?:search.*\%e6\%b4\%97\%e8\%84\%91)|(?:search.*\%e7\%bd\%91\%e7\%89\%b9)|(?:search.*\%e6\%b3\%95\%e4\%bc\%9a)|(?:search.*\%e6\%96\%87\%e5\%ad\%97\%e7\%8b\%b1)|(?:search.*\%e7\%9c\%8b\%e4\%b8\%ad\%e5\%9b\%bd)|(?:search.*\%e4\%b8\%ad\%e5\%ae\%a3\%e9\%83\%a8)|(?:search.*\%e5\%8a\%a0\%e5\%af\%86\%e4\%bb\%a3\%e7\%90\%86)|(?:search.*\%e8\%89\%b2\%e6\%83\%85)|(?:search.*\%e6\%b1\%9f\%e6\%b5\%81\%e6\%b0\%93)|(?:search.*\%e8\%8a\%b1\%e8\%8a\%b1\%e5\%85\%ac\%e5\%ad\%90)|(?:search.*\%e7\%8e\%8b\%e5\%b8\%8c\%e5\%93\%b2)|(?:search.*\%e5\%8d\%9a\%e8\%ae\%af)|(?:search.*\%e5\%a4\%9a\%e7\%bb\%b4)|(?:search.*\%e6\%97\%a0\%e7\%95\%8c)|(?:search.*\%e5\%ad\%a6\%e8\%bf\%90)|(?:search.*\%e4\%b8\%ad\%e5\%8a\%9f)|(?:search.*\%e9\%ad\%8f\%e4\%ba\%ac\%e7\%94\%9f)|(?:search.*\%e9\%82\%aa\%e6\%81\%b6)|(?:google.*search.*q\=cache)|(?:search.*\%bc\%d3\%c3\%dc\%b4\%fa\%c0\%ed)|(?:search.*\%e5\%a4\%9a\%e7\%b6\%ad)|(?:search.*\%e9\%92\%93\%e9\%b1\%bc\%e5\%b2\%9b)|(?:search.*\%e6\%96\%b0\%e8\%af\%ad\%e4\%b8\%9d)|(?:search.*\%e5\%85\%ad\%e5\%9b\%9b)|(?:search.*freegate)|(?:search.*\%bc\%cd\%d4\%aa)|(?:search.*\%e5\%a4\%a7\%e7\%ba\%aa\%e5\%85\%83)|(?:search.*safeweb)|(?:^https?:\/+(?:[^\/]+\.)?mp\/)|(?:search.*\%e6\%96\%b0\%e5\%94\%90\%e4\%ba\%ba)/]
			], 'PROXY *:8087;DIRECT']
	];
	var iplists=[];
	var b=listen[0],d=listen[1];0<=b.indexOf(':')&&(b='['+b+']');b=b+':';d=b+d;function p(p){return p.replace('*:*',d).replace('*:',b)}var c=rules.length;while(0<=--c)rules[c][1]=p(rules[c][1]);c=iplists.length;while(0<=--c)iplists[c][1]=p(iplists[c][1]);var k='PROXY '+d+';DIRECT',l=p('DIRECT'),m=p('DIRECT');p=p('DIRECT');var dnsResolve2=(function(){try{var _=dnsResolveEx("localhost");return function(h){return(h=dnsResolveEx(h))?h.split(";",1)[0]:""}}catch(e){try{return dnsResolve}catch(e){return function(h){return dnsResolve(h)}}}})();return function(url,host,ip){if((host=host.toLowerCase())=='wallproxy')return k;var j,i,g,e,c,a,b,f,d,h;url=url.toLowerCase();j='http'==url.split(':',1);i=host.split('.');g=rules.length;a:for(c=0;c<g;c++){e=rules[c][0];for(a=0;3>a;a++){d=e[a];if(j){b=d.length;while(0<=--b)if(0<=url.indexOf(d[b])){if(1!=a)return rules[c][1];continue a}}d=e[a+3];b=i.length;while(0<=--b)if((h=d[i[b]])&&h.constructor==Array){f=h.length;while(0<=--f)if(h[f].test(url)){if(1!=a)return rules[c][1];continue a}}d=e[a+6];b=d.length;while(0<=--b)if(d[b].test(url)){if(1!=a)return rules[c][1];continue a}}}g=iplists.length;if(0<g){void 0===ip&&(ip=dnsResolve2(host));if(0<=ip.indexOf(':'))return m;ip=ip.split('.');if(4!=ip.length)return l;ip=(ip[0]<<24|ip[1]<<16|ip[2]<<8|ip[3])>>>0;for(c=0;c<g;c++){e=iplists[c][0];a=0;f=e.length;while(a<f){b=Math.floor((a+f)/2);d=e[b];if(d[0]<=ip&&ip<=d[1])return iplists[c][1];ip<d[0]?f=b:a=b+1}}}return p}})();
	`
###	


`
function shExpMatch(url, pattern) {
    var pCharCode;
    var isAggressive = false;
    var pIndex;
    var urlIndex = 0;
    var lastIndex;
    var patternLength = pattern.length;
    var urlLength = url.length;
    for (pIndex = 0; pIndex < patternLength; pIndex += 1) {
        pCharCode = pattern.charCodeAt(pIndex); // use charCodeAt for performance, see http://jsperf.com/charat-charcodeat-brackets
        if (pCharCode === 63) { // use if instead of switch for performance, see http://jsperf.com/switch-if
            if (isAggressive) {
                urlIndex += 1;
            }
            isAggressive = false;
            urlIndex += 1;
        }
        else if (pCharCode === 42) {
            if (pIndex === patternLength - 1) {
                return urlIndex <= urlLength;
            }
            else {
                isAggressive = true;
            }
        }
        else {
            if (isAggressive) {
                lastIndex = urlIndex;
                urlIndex = url.indexOf(String.fromCharCode(pCharCode), lastIndex + 1);
                if (urlIndex < 0) {
                    if (url.charCodeAt(lastIndex) !== pCharCode) {
                        return false;
                    }
                    urlIndex = lastIndex;
                }
                isAggressive = false;
            }
            else {
                if (urlIndex >= urlLength || url.charCodeAt(urlIndex) !== pCharCode) {
                    return false;
                }
            }
            urlIndex += 1;
        }
    }
    return urlIndex === urlLength;
}
function regExpMatch(url, pattern) {    try { return new RegExp(pattern).test(url); } catch(ex) { return false; }    }
    function FindProxyForURL(url, host) {
	if (shExpMatch(url, "*://autoproxy-gfwlist.googlecode.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://autoproxy.org*")) return 'DIRECT';
	if (shExpMatch(url, "http://ime.baidu.jp*")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.exblog\\.jp")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?.*v6\\.facebook\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?site\\.locql\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?download\\.syniumsoftware\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ipv6\\.google\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?haygo\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?f\\.cl\\.ly")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myvlog\\.im\\.tv")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?music\\.jwmusic\\.org")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.kodingen\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?simplecd\\.me")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?static\\.soup\\.io")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.tripod\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.typepad\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?static\\.typepad\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tax\\.nat\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?moe\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cwb\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?npm\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yatsen\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aec\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mvdis\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stdtime\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nmmba\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ntdmh\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?grb\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tpde\\.aide\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?matsu-news\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nerhl\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dapu-house\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vghtc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aide\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hchcc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ntuh\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nhri\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nstm\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ntsec\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ner\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nmtl\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ntl\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pet\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?khcc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nmmba\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?khms\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wanfang\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nict\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?arte\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nmh\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nmp\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tphcc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iner\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tncsec\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nspo\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aide\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ncree\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vghks\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tchb\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pabp\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?itrc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?df\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?womenbusiness\\.nyc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gsn-cert\\.nat\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kk\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thbstc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?comnews\\.gio\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?comnews\\.gio\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?klccab\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yvtc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aftygh\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?klra\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lungtanhr\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taoyuan\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hcc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nvri\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nmvttc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kmh\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?patehr\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nerch\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kmseh\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nertt\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cycab\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chukuang\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gysd\\.nyc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cp-house\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vghtpe\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?etraining\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stag\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bdhr\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tcsac\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?imagesblog\\.gio\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?arte\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dmtip\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chccc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hengchuen\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hsinchu-cc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?921\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ncdr\\.nat\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?4pppc\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?klsio\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nici\\.nat\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cromotc\\.nat\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taitung-house\\.gov\\.tw")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aliyun\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?baidu\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?duckduckgo\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jike\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?panguso\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sina\\.cn")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sina\\.com\\.cn")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sogou\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?so\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?soso\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yahoo\\.cn")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youdao\\.com")) return 'DIRECT';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zhongsou\\.com")) return 'DIRECT';
	if (shExpMatch(url, "http://*hulu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*huluim.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pandora.tv*") || shExpMatch(url, "http://pandora.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.0rz.tw*") || shExpMatch(url, "http://0rz.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://0rz.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*1-apple.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*123rf.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.12bet.com*") || shExpMatch(url, "http://12bet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.12vpn.com*") || shExpMatch(url, "http://12vpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*141hongkong.com/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.173ng.com*") || shExpMatch(url, "http://173ng.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*1984bbs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.1984bbs.org*") || shExpMatch(url, "http://1984bbs.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.1bao.org*") || shExpMatch(url, "http://1bao.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://1bao.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.1eew.com*") || shExpMatch(url, "http://1eew.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.2-hand.info*") || shExpMatch(url, "http://2-hand.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.2000fun.com/bbs*") || shExpMatch(url, "http://2000fun.com/bbs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.2008xianzhang.info*") || shExpMatch(url, "http://2008xianzhang.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*21andy.com/blog*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*24smile.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.2shared.com*") || shExpMatch(url, "http://2shared.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.315lz.com*") || shExpMatch(url, "http://315lz.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*5i01.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwannation.50webs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.5maodang.com*") || shExpMatch(url, "http://5maodang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*64memo*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*64tianwang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*64wiki.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*666kb.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*6park.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.881903.com/page/zh-tw/*") || shExpMatch(url, "http://881903.com/page/zh-tw/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.888.com*") || shExpMatch(url, "http://888.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*89-64.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.9001700.com*") || shExpMatch(url, "http://9001700.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.92ccav.com*") || shExpMatch(url, "http://92ccav.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.9city.me/archiver*308578.html*") || shExpMatch(url, "http://9city.me/archiver*308578.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*a5.com.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.aboluowang.com*") || shExpMatch(url, "http://aboluowang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.aboutgfw.com*") || shExpMatch(url, "http://aboutgfw.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*actimes.com.au*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*adultfriendfinder.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*adultkeep.net/peepshow/members/main.htm*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*aiph.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.aisex.com*") || shExpMatch(url, "http://aisex.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.aiweiweiblog.com*") || shExpMatch(url, "http://aiweiweiblog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*alexlur.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*aliengu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*allgirlsallowed.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*alliance.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.allinfa.com*") || shExpMatch(url, "http://allinfa.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://allinfa.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*alvinalexander.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*alwaysdata.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*amazon.com/Prisoner-State-Secret-Journal-Premier*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ameblo.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.amnesty.org*") || shExpMatch(url, "http://amnesty.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.amnestyusa.org*") || shExpMatch(url, "http://amnestyusa.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.amoiist.com*") || shExpMatch(url, "http://amoiist.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*amzs.me*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*analyze-v.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*animecrazy.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.anonymizer.com*") || shExpMatch(url, "http://anonymizer.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*anontext.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.antiwave.net*") || shExpMatch(url, "http://antiwave.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://antiwave.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.aol.ca/video-detail*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.aol.co.uk/video-detail*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.aol.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.aolnews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.apetube.com*") || shExpMatch(url, "http://apetube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.apigee.com*") || shExpMatch(url, "http://apigee.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*appledaily.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*archive.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.arctosia.com*") || shExpMatch(url, "http://arctosia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://arctosia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*artsy.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.asahichinese.com*") || shExpMatch(url, "http://asahichinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*asdfg.jp/dabr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.asiaharvest.org*") || shExpMatch(url, "http://asiaharvest.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*asianews.it*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.askynz.net*") || shExpMatch(url, "http://askynz.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.atchinese.com*") || shExpMatch(url, "http://atchinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://atchinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*atgfw.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.atlaspost.com*") || shExpMatch(url, "http://atlaspost.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.atnext.com*") || shExpMatch(url, "http://atnext.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*avaaz.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.baby-kingdom.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*babynet.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*backchina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.backpackers.com.tw/forum*") || shExpMatch(url, "http://backpackers.com.tw/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*badoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hen.bao.li*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bannedbook.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bayvoice.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dajusha.baywords.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bbc.co.uk*chinese*") || shExpMatch(url, "http://bbc.co.uk*chinese*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bbc.co.uk/tv*") || shExpMatch(url, "http://bbc.co.uk/tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bbc.co.uk*zhongwen*") || shExpMatch(url, "http://bbc.co.uk*zhongwen*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.bbc.co.uk/onthisday*newsid_2496000/2496277*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*newsforums.bbc.co.uk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bbcchinese.com*") || shExpMatch(url, "http://bbcchinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://bbc.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bbg.gov*") || shExpMatch(url, "http://bbg.gov*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbsland.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bcc.com.tw/board*") || shExpMatch(url, "http://bcc.com.tw/board*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bcchinese.net*") || shExpMatch(url, "http://bcchinese.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bebo.com*") || shExpMatch(url, "http://bebo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*beijingspring.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.berlintwitterwall.com*") || shExpMatch(url, "http://berlintwitterwall.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bestforchina.org*") || shExpMatch(url, "http://bestforchina.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bestvpnservice.com*") || shExpMatch(url, "http://bestvpnservice.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bet365.com*") || shExpMatch(url, "http://bet365.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.betfair.com*") || shExpMatch(url, "http://betfair.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bettween.com*") || shExpMatch(url, "http://bettween.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bewww.net*") || shExpMatch(url, "http://bewww.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*biantailajiao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bigfools.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bignews.org*") || shExpMatch(url, "http://bignews.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bigsound.org/portnoy*") || shExpMatch(url, "http://bigsound.org/portnoy*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*billypan.com/wiki/%E9%A6%96%E9%A0%81*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bipic.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bit.ly*") || shExpMatch(url, "http://bit.ly*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://bit.ly*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bitshare.com/files*") || shExpMatch(url, "http://bitshare.com/files*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*http://bitshare.com/files*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bjzc.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tor.blingblingsquad.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.blinkx.com*") || shExpMatch(url, "http://blinkx.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blinw.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.blip.tv*") || shExpMatch(url, "http://blip.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.blockcn.com*") || shExpMatch(url, "http://blockcn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.blogcatalog.com*") || shExpMatch(url, "http://blogcatalog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.blogger.com*") || shExpMatch(url, "http://blogger.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogimg.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bloglines.com*") || shExpMatch(url, "http://bloglines.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bloglovin.com*") || shExpMatch(url, "http://bloglovin.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*rconversation.blogs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogspot.co.uk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogspot.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogspot.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogspot.fr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogspot.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogspot.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogtd.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.blogtd.org*") || shExpMatch(url, "http://blogtd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://blogtd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bloomberg.cn*") || shExpMatch(url, "http://bloomberg.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bloomberg.com*") || shExpMatch(url, "http://bloomberg.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bloomberg.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*boardreader.com/thread*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bonbonme.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.botanwang.com*") || shExpMatch(url, "http://botanwang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bot.nu*") || shExpMatch(url, "http://bot.nu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bowenpress.com*") || shExpMatch(url, "http://bowenpress.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dl.box.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*boxun.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.boxun.tv*") || shExpMatch(url, "http://boxun.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*boxunblog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.break.com*") || shExpMatch(url, "http://break.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.breakingtweets.com*") || shExpMatch(url, "http://breakingtweets.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.briefdream.com/%E7%B4%A0%E6%A3%BA*") || shExpMatch(url, "http://briefdream.com/%E7%B4%A0%E6%A3%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*brightkite.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*brizzly.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*broadbook.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ibros.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*brucewang.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.budaedu.org*") || shExpMatch(url, "http://budaedu.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bullog.org*") || shExpMatch(url, "http://bullog.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.bullogger.com*") || shExpMatch(url, "http://bullogger.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.businessweek.com*") || shExpMatch(url, "http://businessweek.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.businesstimes.com.cn*") || shExpMatch(url, "http://businesstimes.com.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://businesstimes.com.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*buzzurl.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bwsj.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*holz.byethost8.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.c-spanvideo.org*") || shExpMatch(url, "http://c-spanvideo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cactusvpn.com*") || shExpMatch(url, "http://cactusvpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cafepress.com*") || shExpMatch(url, "http://cafepress.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.calameo.com/books*") || shExpMatch(url, "http://calameo.com/books*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.calameo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://cn.calameo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*canadameet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://bbs.cantonese.asia/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*http://www.cantonese.asia/action-bbs.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.canyu.org*") || shExpMatch(url, "http://canyu.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cao.im*") || shExpMatch(url, "http://cao.im*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.caobian.info*") || shExpMatch(url, "http://caobian.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://catcatbox.com/forum.php**")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*caochangqing.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cari.com.my*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.catholic.org.hk*") || shExpMatch(url, "http://catholic.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*catholic.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cbsnews.com/video*") || shExpMatch(url, "http://cbsnews.com/video*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ccdtr.org*") || shExpMatch(url, "http://ccdtr.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cclife.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ccthere.com*") || shExpMatch(url, "http://ccthere.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cctongbao.com/article/2078732*") || shExpMatch(url, "http://cctongbao.com/article/2078732*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ccue.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ccue.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cdjp.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cdnews.com.tw*") || shExpMatch(url, "http://cdnews.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cdp1998.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cdp2006.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cdpusa.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cdpweb.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cdpwu.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cecc.gov*") || shExpMatch(url, "http://cecc.gov*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.centurys.net*") || shExpMatch(url, "http://centurys.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://centurys.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.change.org*") || shExpMatch(url, "http://change.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://change.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.changp.com*") || shExpMatch(url, "http://changp.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chengmingmag.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chenguangcheng.com*") || shExpMatch(url, "http://chenguangcheng.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chenpokong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.china-week.com*") || shExpMatch(url, "http://china-week.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*china101.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*china21.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinaaffairs.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinaaid.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinacomments.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinachannel.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinadigitaltimes.net*") || shExpMatch(url, "http://chinadigitaltimes.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://chinadigitaltimes.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinaeweekly.com*") || shExpMatch(url, "http://chinaeweekly.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinageeks.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinagfw.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinagreenparty.org*") || shExpMatch(url, "http://chinagreenparty.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinahush.com*") || shExpMatch(url, "http://chinahush.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinaxchina.com/howto*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinainperspective.com*") || shExpMatch(url, "http://chinainperspective.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinainperspective.net/ArtShow.aspx?*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinainperspective.org*") || shExpMatch(url, "http://chinainperspective.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinalawandpolicy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinamule.com*") || shExpMatch(url, "http://chinamule.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinamz.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinasocialdemocraticparty.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinasoul.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinatimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinatweeps.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinaway.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinaworker.info*") || shExpMatch(url, "http://chinaworker.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinayouth.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinayuanmin.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinese-hermit.net*") || shExpMatch(url, "http://chinese-hermit.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinese-memorial.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinesen.de*") || shExpMatch(url, "http://chinesen.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinesenewsnet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinesepen.org*") || shExpMatch(url, "http://chinesepen.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chinesetalks.net/ch*") || shExpMatch(url, "http://chinesetalks.net/ch*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chingcheong.com*") || shExpMatch(url, "http://chingcheong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chn.chosun.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*christianstudy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*christusrex.org/www1/sdc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chubun.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chuizi.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.chrlawyers.hk*") || shExpMatch(url, "http://chrlawyers.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.citizenlab.org*") || shExpMatch(url, "http://citizenlab.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*citizensradio.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*city9x.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.civicparty.hk*") || shExpMatch(url, "http://civicparty.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*civilhrfront.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*psiphon.civisec.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cjb.net/vpn.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ck101.com*") || shExpMatch(url, "http://ck101.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.clb.org.hk*") || shExpMatch(url, "http://clb.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.clipfish.de*") || shExpMatch(url, "http://clipfish.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cmule.com*") || shExpMatch(url, "http://cmule.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cnavista.com.tw/shop/stores_app*") || shExpMatch(url, "http://cnavista.com.tw/shop/stores_app*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cnd.org*") || shExpMatch(url, "http://cnd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wiki.cnitter.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cnn.com/video*") || shExpMatch(url, "http://cnn.com/video*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.cnyes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.code1984.com/64*") || shExpMatch(url, "http://code1984.com/64*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tosh.comedycentral.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*comefromchina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.coolaler.com*") || shExpMatch(url, "http://coolaler.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*coolder.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*corumcollege.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cpj.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*crackle.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*crd-net.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*creaders.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.crossthewall.net*") || shExpMatch(url, "http://crossthewall.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*csdparty.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cts.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cuhkacs.org/~benng*") || shExpMatch(url, "http://cuhkacs.org/~benng*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cuihua.org*") || shExpMatch(url, "http://cuihua.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.cuiweiping.net*") || shExpMatch(url, "http://cuiweiping.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.culture.tw*") || shExpMatch(url, "http://culture.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.cyberctm.com/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cytode.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cl.d0z.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dabr.co.uk*") || shExpMatch(url, "http://dabr.co.uk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dabr.mobi*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dadazim.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dadi360.com*") || shExpMatch(url, "http://dadi360.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dafagood.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dafahao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dailidaili.com*") || shExpMatch(url, "http://dailidaili.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dailymotion.com*") || shExpMatch(url, "http://dailymotion.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dajiyuan.com*") || shExpMatch(url, "http://dajiyuan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dajiyuan.eu*") || shExpMatch(url, "http://dajiyuan.eu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dalailama.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dalailamaworld.com*") || shExpMatch(url, "http://dalailamaworld.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dalianmeng.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.danke4china.net*") || shExpMatch(url, "http://danke4china.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.danwei.org*") || shExpMatch(url, "http://danwei.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.daolan.net*") || shExpMatch(url, "http://daolan.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*daxa.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.dayabook.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.daylife.com/topic/dalai_lama*") || shExpMatch(url, "http://daylife.com/topic/dalai_lama*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ddc.com.tw*") || shExpMatch(url, "http://ddc.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.de-sci.org*") || shExpMatch(url, "http://de-sci.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lists.debian.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*packages.debian.org/zh-cn/lenny/gpass*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*delicious.com/GFWbookmark*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.democrats.org*") || shExpMatch(url, "http://democrats.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.dfanning.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.diaoyuislands.org*") || shExpMatch(url, "http://diaoyuislands.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.diigo.com*") || shExpMatch(url, "http://diigo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.discuss.com.hk*") || shExpMatch(url, "http://discuss.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*disp.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dit-inc.us*") || shExpMatch(url, "http://dit-inc.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dizhidizhi.com*") || shExpMatch(url, "http://dizhidizhi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*djangosnippets.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.docstoc.com/docs*") || shExpMatch(url, "http://docstoc.com/docs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dojin.com*") || shExpMatch(url, "http://dojin.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dok-forum.net*") || shExpMatch(url, "http://dok-forum.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.domain.club.tw*") || shExpMatch(url, "http://domain.club.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dongde.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dongtaiwang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dongtaiwang.net*") || shExpMatch(url, "http://dongtaiwang.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dongyangjing.com*") || shExpMatch(url, "http://dongyangjing.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dontfilter.us*") || shExpMatch(url, "http://dontfilter.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dotplane.com*") || shExpMatch(url, "http://dotplane.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*doubleaf.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dowei.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dphk.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dpp.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dropbox.com*") || shExpMatch(url, "http://dropbox.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.drtuber.com*") || shExpMatch(url, "http://drtuber.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dtiserv2.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.duckload.com/download*") || shExpMatch(url, "http://duckload.com/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.duihua.org*") || shExpMatch(url, "http://duihua.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.duoweitimes.com*") || shExpMatch(url, "http://duoweitimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*duping.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dupola.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dupola.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dw.de*") || shExpMatch(url, "http://dw.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://dw.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dw-world.com*") || shExpMatch(url, "http://dw-world.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dw-world.de*") || shExpMatch(url, "http://dw-world.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*http://dw-world.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.dwheeler.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dwnews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xys.dxiong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dy24k.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dzze.com*") || shExpMatch(url, "http://dzze.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.e-gold.com*") || shExpMatch(url, "http://e-gold.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*e-info.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.e-traderland.net/board*") || shExpMatch(url, "http://e-traderland.net/board*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkjp.easyweb.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ebookbrowse.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ebookee.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ecministry.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.ecstart.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*edicypages.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*edoors.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.edubridge.com*") || shExpMatch(url, "http://edubridge.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*efcc.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*electionsmeter.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.eltondisney.com*") || shExpMatch(url, "http://eltondisney.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.emory.edu*") || shExpMatch(url, "http://emory.edu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.emule-ed2k.com*") || shExpMatch(url, "http://emule-ed2k.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://emule-ed2k.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinese.engadget.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes-bg.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes-romania.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.co.il*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.co.kr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.fr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.epochtimes.ie*") || shExpMatch(url, "http://epochtimes.ie*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimes.se*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*epochtimestr.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*erabaru.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.erepublik.com*") || shExpMatch(url, "http://erepublik.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*etaiwannews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.eulam.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*eventful.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.extremetube.com*") || shExpMatch(url, "http://extremetube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*eyevio.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ezpc.tk/category/soft*") || shExpMatch(url, "http://ezpc.tk/category/soft*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ezpeer.com*") || shExpMatch(url, "http://ezpeer.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.facebook.com*") || shExpMatch(url, "http://facebook.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fakku.net*") || shExpMatch(url, "http://fakku.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*falunart.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*falundafa.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*falundafamuseum.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fangongheike.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fapdu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fawanghuihui.org*") || shExpMatch(url, "http://fawanghuihui.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fanqiangyakexi.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fail.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fan-qiang.com*") || shExpMatch(url, "http://fan-qiang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fangbinxing.com*") || shExpMatch(url, "http://fangbinxing.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fangeming.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.farwestchina.com*") || shExpMatch(url, "http://farwestchina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*favorious.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.favotter.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*favstar.fm*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*faydao.com/weblog*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fb.me*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fc2.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fc2china.com*") || shExpMatch(url, "http://fc2china.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shifeike.blog125.fc2blog.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.fdbox.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fdc89.jp*") || shExpMatch(url, "http://fdc89.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*feedbooks.mobi*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*feeds.feedburner.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*feeds2.feedburner.com/chinagfwblog*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*feer.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*felixcat.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fengzhenghu.com*") || shExpMatch(url, "http://fengzhenghu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fflick.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fgmtv.org*") || shExpMatch(url, "http://fgmtv.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.filefactory.com/file*") || shExpMatch(url, "http://filefactory.com/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.files2me.com*") || shExpMatch(url, "http://files2me.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://files2me.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fileserve.com/file*") || shExpMatch(url, "http://fileserve.com/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fillthesquare.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*findbook.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*finler.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fireofliberty.org*") || shExpMatch(url, "http://fireofliberty.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.falsefire.com*") || shExpMatch(url, "http://falsefire.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fleshbot.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/photos/46231077@N06*") || shExpMatch(url, "http://flickr.com/photos/46231077@N06*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/groups/aiweiwei*") || shExpMatch(url, "http://flickr.com/groups/aiweiwei*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/photos/digitalboy100*") || shExpMatch(url, "http://flickr.com/photos/digitalboy100*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/photos/fzhenghu*") || shExpMatch(url, "http://flickr.com/photos/fzhenghu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/photos/lonelyfox*") || shExpMatch(url, "http://flickr.com/photos/lonelyfox*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*flickr.com/photos/vanvan/529925157*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/photos/winterkanal*") || shExpMatch(url, "http://flickr.com/photos/winterkanal*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.flickr.com/photos/zola*") || shExpMatch(url, "http://flickr.com/photos/zola*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*flickrhivemind.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yuming.flnet.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://cn.fmnnow.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.foolsmountain.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.forum4hk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pioneer-worker.forums-free.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://4sq.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.foxbusiness.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.focusvpn.com*") || shExpMatch(url, "http://focusvpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fooooo.com*") || shExpMatch(url, "http://fooooo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*footwiball.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*foxtang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freakshare.com*") || shExpMatch(url, "http://freakshare.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://freakshare.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.free.fr/adsl*") || shExpMatch(url, "http://free.fr/adsl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kineox.free.fr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*whitebear.freebearblog.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freechal.com*") || shExpMatch(url, "http://freechal.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freedomhouse.org*") || shExpMatch(url, "http://freedomhouse.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freegao.com*") || shExpMatch(url, "http://freegao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freelotto.com*") || shExpMatch(url, "http://freelotto.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freeman2.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freeopenvpn.com*") || shExpMatch(url, "http://freeopenvpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freemoren.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freemorenews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freenet-china.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freenewscn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freeoz.org/bbs*") || shExpMatch(url, "http://freeoz.org/bbs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.free-ssh.com*") || shExpMatch(url, "http://free-ssh.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freeoz.org*") || shExpMatch(url, "http://freeoz.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.freetibet.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freewebs.com*") || shExpMatch(url, "http://freewebs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.freexinwen.com*") || shExpMatch(url, "http://freexinwen.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*friendfeed.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*friendfeed-media.com/e99a4ebe2fb4c1985c2a58775eb4422961aa5a2e*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://ff.im*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.zensur.freerk.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freevpn.nl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fring.com*") || shExpMatch(url, "http://fring.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fsurf.com*") || shExpMatch(url, "http://fsurf.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ftchinese.com*") || shExpMatch(url, "http://ftchinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.fuckcnnic.net*") || shExpMatch(url, "http://fuckcnnic.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fuckgfw.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fulue.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.funf.tw*") || shExpMatch(url, "http://funf.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*funp.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.futurechinaforum.org*") || shExpMatch(url, "http://futurechinaforum.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fzh999.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*fzh999.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gamebase.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gamer.com.tw*") || shExpMatch(url, "http://gamer.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gamez.com.tw*") || shExpMatch(url, "http://gamez.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gaoming.net*") || shExpMatch(url, "http://gaoming.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ganges.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gaopi.net*") || shExpMatch(url, "http://gaopi.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://gaopi.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gardennetworks.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*72.52.81.22*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gazotube.com*") || shExpMatch(url, "http://gazotube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gcpnews.com*") || shExpMatch(url, "http://gcpnews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gdbt.net/forum*") || shExpMatch(url, "http://gdbt.net/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gdzf.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*geekerhome.com/2010/03/xixiang-project-cross-gfw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.geocities.co.jp*") || shExpMatch(url, "http://geocities.co.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.geocities.com/SiliconValley/Circuit/5683/download.html*") || shExpMatch(url, "http://geocities.com/SiliconValley/Circuit/5683/download.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.geocities.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*geocities.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.getfreedur.com*") || shExpMatch(url, "http://getfreedur.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.getjetso.com/forum*") || shExpMatch(url, "http://getjetso.com/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*getiton.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.getsocialscope.com*") || shExpMatch(url, "http://getsocialscope.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gfw.org.ua*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ggssl.com*") || shExpMatch(url, "http://ggssl.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://cn.giganews.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gigporno.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*globalmuseumoncommunism.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.globalvoicesonline.org*") || shExpMatch(url, "http://globalvoicesonline.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gmbd.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*godfootsteps.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gongmeng.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gongm.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gongminliliang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gongwt.com*") || shExpMatch(url, "http://gongwt.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.goodreads.com*") || shExpMatch(url, "http://goodreads.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.goodreaders.com*") || shExpMatch(url, "http://goodreaders.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.googlesile.com*") || shExpMatch(url, "http://googlesile.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gopetition.com*") || shExpMatch(url, "http://gopetition.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*grandtrial.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*greatfirewall.biz*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.greatfirewallofchina.org*") || shExpMatch(url, "http://greatfirewallofchina.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.greenparty.org.tw*") || shExpMatch(url, "http://greenparty.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gpass1.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*great-firewall.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*great-roc.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*greatroc.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*greatzhonghua.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.greenvpn.net*") || shExpMatch(url, "http://greenvpn.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gs-discuss.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*guancha.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gun-world.net*") || shExpMatch(url, "http://gun-world.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gzm.tv*") || shExpMatch(url, "http://gzm.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.appspot.com*") || shExpMatch(url, "http://appspot.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/gappproxy*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/gaeproxy*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/west-chamber-season-3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/icefox*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/breakwall*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/program-think/wiki/Software*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/scholarzhang*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/vforchrome/wiki/Start*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/tuite*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/twitese*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/twip*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*code.google.com/p/huhamhire-hosts*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://autoproxy-gfwlist.googlecode.com/svn/trunk/gfwlist.txt*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://autoproxy-gfwlist.googlecode.com/svn/trunk/gfwlist.txt*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gfwinterceptor.googlecode.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*goagent.googlecode.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gtap.googlecode.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sshtunnel.googlecode.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tuite.googlecode.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gaeproxy.googlecode.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com/Doc?docid=0Ae9jWMoUhgV1ZHd0cjJ2NV81NGQ5MnI0d3E1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com/View?id=d8xbpp6_4hhpb2dfd*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com/View?id=dds68dz_9cqgm8vgq*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com*View*id*dg5mtmj9_8g3hk27f5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com*View*id*dg5mtmj9_3188x48zcn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com*dgtbmwd6_934gg99v6g4cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*docs.google.com/View?id=dhh5gtxb_145nsxgctcc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinaaid.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*echofon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://ub0.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wozy.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%D8%BA%D8%A7*") || shExpMatch(url, "http://google.*%D8%BA%D8%A7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/complete/search*") || shExpMatch(url, "http://google.*/complete/search*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*/search?q=cache*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*/search%3Fq%3Dcache*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%2Fsearch%3Fq%3Dcache*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*google*search*q=cache*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*8964*") || shExpMatch(url, "http://google.*search*8964*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*boxun*") || shExpMatch(url, "http://google.*boxun*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*chinese+people+eating+babies*") || shExpMatch(url, "http://google.*chinese+people+eating+babies*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*east*turkistan*") || shExpMatch(url, "http://google.*east*turkistan*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*facebook*") || shExpMatch(url, "http://google.*facebook*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*falun*") || shExpMatch(url, "http://google.*falun*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*freechina*") || shExpMatch(url, "http://google.*freechina*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*freetibet*") || shExpMatch(url, "http://google.*freetibet*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*gfw*") || shExpMatch(url, "http://google.*gfw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*goagent*") || shExpMatch(url, "http://google.*goagent*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*&q=gpass*") || shExpMatch(url, "http://google.*&q=gpass*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*great*firewall*") || shExpMatch(url, "http://google.*great*firewall*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*hujin*") || shExpMatch(url, "http://google.*hujin*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*huayuan*") || shExpMatch(url, "http://google.*huayuan*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*jiaqinglin*") || shExpMatch(url, "http://google.*jiaqinglin*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*jiangzemin*") || shExpMatch(url, "http://google.*jiangzemin*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*&q=jzm&*") || shExpMatch(url, "http://google.*&q=jzm&*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*nytimes*") || shExpMatch(url, "http://google.*nytimes*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*peacehall*") || shExpMatch(url, "http://google.*peacehall*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.googlw.*president.gov.tw*") || shExpMatch(url, "http://googlw.*president.gov.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*protest*1989*") || shExpMatch(url, "http://google.*protest*1989*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*prisoner+of+the+state*") || shExpMatch(url, "http://google.*prisoner+of+the+state*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*Tankman*") || shExpMatch(url, "http://google.*search*Tankman*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tbm=mbl*") || shExpMatch(url, "http://google.*tbm=mbl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tbm%3Dmbl*") || shExpMatch(url, "http://google.*tbm%3Dmbl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*tbs=mbl*") || shExpMatch(url, "http://google.*search*tbs=mbl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*tbs%3Dmbl*") || shExpMatch(url, "http://google.*search*tbs%3Dmbl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tbs=qdr*") || shExpMatch(url, "http://google.*tbs=qdr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tbs%3Dqdr*") || shExpMatch(url, "http://google.*tbs%3Dqdr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tbs=rltm*") || shExpMatch(url, "http://google.*tbs=rltm*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tbs%3Drltm*") || shExpMatch(url, "http://google.*tbs%3Drltm*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*Tiananmen*") || shExpMatch(url, "http://google.*Tiananmen*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*tianwang*") || shExpMatch(url, "http://google.*tianwang*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*Tibetan*independence*") || shExpMatch(url, "http://google.*Tibetan*independence*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*twitter*") || shExpMatch(url, "http://google.*twitter*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*xijinping*") || shExpMatch(url, "http://google.*xijinping*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*&q=ytht&*") || shExpMatch(url, "http://google.*&q=ytht&*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*zhouyongkang*") || shExpMatch(url, "http://google.*zhouyongkang*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*08*%E5%AE%AA%E7%AB%A0*") || shExpMatch(url, "http://google.*08*%E5%AE%AA%E7%AB%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*64*%E7%9C%9F%E7%9B%B8*") || shExpMatch(url, "http://google.*64*%E7%9C%9F%E7%9B%B8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*64*%E9%95%87%E5%8E%8B*") || shExpMatch(url, "http://google.*64*%E9%95%87%E5%8E%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%85%AB%E4%B9%9D*") || shExpMatch(url, "http://google.*%E5%85%AB%E4%B9%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%8C%97%E5%9B%BD%E4%B9%8B%E6%98%A5*") || shExpMatch(url, "http://google.*%E5%8C%97%E5%9B%BD%E4%B9%8B%E6%98%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%8C%97%E4%BA%AC%E4%B9%8B%E6%98%A5*") || shExpMatch(url, "http://google.*%E5%8C%97%E4%BA%AC%E4%B9%8B%E6%98%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%99%88%E7%A0%B4%E7%A9%BA*") || shExpMatch(url, "http://google.*%E9%99%88%E7%A0%B4%E7%A9%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%B5%A4%E5%8C%AA*") || shExpMatch(url, "http://google.*%E8%B5%A4%E5%8C%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%BE%BE%E8%B5%96%E5%96%87%E5%98%9B*") || shExpMatch(url, "http://google.*%E8%BE%BE%E8%B5%96%E5%96%87%E5%98%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%BB%A3%E5%BC%80*%E5%8F%91%E7%A5%A8*") || shExpMatch(url, "http://google.*%E4%BB%A3%E5%BC%80*%E5%8F%91%E7%A5%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%8F%91%E7%A5%A8*%E4%BB%A3%E5%BC%80*") || shExpMatch(url, "http://google.*%E5%8F%91%E7%A5%A8*%E4%BB%A3%E5%BC%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%BB%A3%E7%90%86*") || shExpMatch(url, "http://google.*%E4%BB%A3%E7%90%86*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%9C%B0%E4%B8%8B%E6%95%99%E4%BC%9A*") || shExpMatch(url, "http://google.*%E5%9C%B0%E4%B8%8B%E6%95%99%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%8B%AC%E7%AB%8B%E5%8F%B0%E6%B9%BE%E4%BC%9A*") || shExpMatch(url, "http://google.*%E7%8B%AC%E7%AB%8B%E5%8F%B0%E6%B9%BE%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%8B%AC%E7%AB%8B%E4%B8%AD%E6%96%87%E7%AC%94%E4%BC%9A*") || shExpMatch(url, "http://google.*%E7%8B%AC%E7%AB%8B%E4%B8%AD%E6%96%87%E7%AC%94%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%8F%91%E8%AF%BE*") || shExpMatch(url, "http://google.*%E5%8F%91%E8%AF%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%B3%95%E6%8B%89%E5%88%A9*") || shExpMatch(url, "http://google.*%E6%B3%95%E6%8B%89%E5%88%A9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%BF%BB%E5%A2%99*") || shExpMatch(url, "http://google.*%E7%BF%BB%E5%A2%99*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%96%B9%E6%BB%A8%E5%85%B4*") || shExpMatch(url, "http://google.*%E6%96%B9%E6%BB%A8%E5%85%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%98%B2%E7%81%AB%E9%95%BF%E5%9F%8E*") || shExpMatch(url, "http://google.*%E9%98%B2%E7%81%AB%E9%95%BF%E5%9F%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%86%AF%E6%AD%A3%E8%99%8E*") || shExpMatch(url, "http://google.*%E5%86%AF%E6%AD%A3%E8%99%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%AB%98%E6%99%BA%E6%99%9F*") || shExpMatch(url, "http://google.*%E9%AB%98%E6%99%BA%E6%99%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%9D%A9%E5%91%BD*") || shExpMatch(url, "http://google.*%E9%9D%A9%E5%91%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%85%B1%E4%BA%A7*") || shExpMatch(url, "http://google.*%E5%85%B1%E4%BA%A7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%85%B3%E9%94%AE%E6%97%B6%E5%88%BB*") || shExpMatch(url, "http://google.*%E5%85%B3%E9%94%AE%E6%97%B6%E5%88%BB*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%B9%BF%E5%9C%BA*") || shExpMatch(url, "http://google.*%E5%B9%BF%E5%9C%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%9B%BD%E5%AE%B6%E9%98%B2%E7%81%AB%E5%A2%99*") || shExpMatch(url, "http://google.*%E5%9B%BD%E5%AE%B6%E9%98%B2%E7%81%AB%E5%A2%99*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%9B%A4%E8%9F%86*") || shExpMatch(url, "http://google.*%E8%9B%A4%E8%9F%86*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%9B%86%E4%BC%9A*") || shExpMatch(url, "http://google.*%E9%9B%86%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%AE%B0%E8%80%85%E6%97%A0%E7%96%86%E7%95%8C*") || shExpMatch(url, "http://google.*%E8%AE%B0%E8%80%85%E6%97%A0%E7%96%86%E7%95%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%AE%B6%E5%AE%9D*") || shExpMatch(url, "http://google.*%E5%AE%B6%E5%AE%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%81%87%E5%BA%86%E6%B7%8B*") || shExpMatch(url, "http://google.*%E5%81%87%E5%BA%86%E6%B7%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%88%92%E4%B8%A5*") || shExpMatch(url, "http://google.*%E6%88%92%E4%B8%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%94%A6%E6%B6%9B*") || shExpMatch(url, "http://google.*%E9%94%A6%E6%B6%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%BB%8F%E6%96%87*") || shExpMatch(url, "http://google.*%E7%BB%8F%E6%96%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%BF%91%E5%B9%B3*") || shExpMatch(url, "http://google.*%E8%BF%91%E5%B9%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B9%9D%E5%B8%B8%E5%A7%94*") || shExpMatch(url, "http://google.*%E4%B9%9D%E5%B8%B8%E5%A7%94*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%85%B7%E5%88%91*") || shExpMatch(url, "http://google.*%E9%85%B7%E5%88%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%BB%A4*") || shExpMatch(url, "http://google.*%E4%BB%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%9B%B6%E5%85%AB*%E5%AE%AA%E7%AB%A0*") || shExpMatch(url, "http://google.*%E9%9B%B6%E5%85%AB*%E5%AE%AA%E7%AB%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*%E5%88%98%E6%B7%87*") || shExpMatch(url, "http://google.*search*%E5%88%98%E6%B7%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%85%AD*%E5%9B%9B*") || shExpMatch(url, "http://google.*%E5%85%AD*%E5%9B%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%B2%81%E6%98%95*") || shExpMatch(url, "http://google.*%E9%B2%81%E6%98%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%A9%AC%E5%87%AF*") || shExpMatch(url, "http://google.*%E9%A9%AC%E5%87%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%A9%AC%E5%8A%9B*") || shExpMatch(url, "http://google.*%E9%A9%AC%E5%8A%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%BA%A6%E5%BD%93%E5%8A%B3*") || shExpMatch(url, "http://google.*%E9%BA%A6%E5%BD%93%E5%8A%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%86%85%E8%92%99*%E7%A4%BA%E5%A8%81*") || shExpMatch(url, "http://google.*%E5%86%85%E8%92%99*%E7%A4%BA%E5%A8%81*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%AD%9F%E5%BB%BA%E6%9F%B1*") || shExpMatch(url, "http://google.*%E5%AD%9F%E5%BB%BA%E6%9F%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%A2%A6%E8%90%A6%E6%9C%AA%E5%90%8D%E6%B9%96*") || shExpMatch(url, "http://google.*%E6%A2%A6%E8%90%A6%E6%9C%AA%E5%90%8D%E6%B9%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%85%8D%E8%B4%B9*vpn*") || shExpMatch(url, "http://google.*%E5%85%8D%E8%B4%B9*vpn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%8C%89%E8%8E%89*") || shExpMatch(url, "http://google.*%E8%8C%89%E8%8E%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%8E%AB%E6%97%A5%E6%A0%B9*") || shExpMatch(url, "http://google.*%E8%8E%AB%E6%97%A5%E6%A0%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%BA%B3%E7%B1%B3%E6%AF%94%E4%BA%9A*") || shExpMatch(url, "http://google.*%E7%BA%B3%E7%B1%B3%E6%AF%94%E4%BA%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%AF%BA%E8%B4%9D%E5%B0%94%E5%92%8C%E5%B9%B3%E5%A5%96*") || shExpMatch(url, "http://google.*%E8%AF%BA%E8%B4%9D%E5%B0%94%E5%92%8C%E5%B9%B3%E5%A5%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com*search*namibia*nuctech*") || shExpMatch(url, "http://google.com*search*namibia*nuctech*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%9B%98%E5%8F%A4%E4%B9%90%E9%98%9F*") || shExpMatch(url, "http://google.*%E7%9B%98%E5%8F%A4%E4%B9%90%E9%98%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%BD%AD%E4%B8%BD%E5%AA%9B*") || shExpMatch(url, "http://google.*%E5%BD%AD%E4%B8%BD%E5%AA%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%BF%AB%E5%AE%B3*") || shExpMatch(url, "http://google.*%E8%BF%AB%E5%AE%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%89%8D%E4%B8%96%E4%BB%8A%E7%94%9F*") || shExpMatch(url, "http://google.*%E5%89%8D%E4%B8%96%E4%BB%8A%E7%94%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%9E%AA%E5%A3%B0*") || shExpMatch(url, "http://google.*%E6%9E%AA%E5%A3%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%9D%92%E5%A4%A9%E7%99%BD%E6%97%A5%E6%97%97*") || shExpMatch(url, "http://google.*%E9%9D%92%E5%A4%A9%E7%99%BD%E6%97%A5%E6%97%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%BA%BA%E6%B0%91%E5%85%AC%E5%9B%AD*") || shExpMatch(url, "http://google.*%E4%BA%BA%E6%B0%91%E5%85%AC%E5%9B%AD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%97%A5%E8%AE%B0*") || shExpMatch(url, "http://google.*%E6%97%A5%E8%AE%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%89%E9%80%80*") || shExpMatch(url, "http://google.*%E4%B8%89%E9%80%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%96%E7%BB%B4%E4%BC%9A*") || shExpMatch(url, "http://google.*%E4%B8%96%E7%BB%B4%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%8F%B8%E5%BE%92%E5%8D%8E*") || shExpMatch(url, "http://google.*%E5%8F%B8%E5%BE%92%E5%8D%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%A4%AA%E5%AD%90*") || shExpMatch(url, "http://google.*%E5%A4%AA%E5%AD%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*%E8%B0%AD%E4%BD%9C%E4%BA%BA*") || shExpMatch(url, "http://google.*search*%E8%B0%AD%E4%BD%9C%E4%BA%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%A4%A9%E5%AE%89%E9%97%A8*") || shExpMatch(url, "http://google.*%E5%A4%A9%E5%AE%89%E9%97%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%A4%A9%E7%81%AD*") || shExpMatch(url, "http://google.*%E5%A4%A9%E7%81%AD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%A4%A9%E7%BA%BF%E5%AE%9D%E5%AE%9D*%E5%BA%B7%E5%B8%88%E5%82%85*") || shExpMatch(url, "http://google.*%E5%A4%A9%E7%BA%BF%E5%AE%9D%E5%AE%9D*%E5%BA%B7%E5%B8%88%E5%82%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%BA%B7%E5%B8%88%E5%82%85*%E5%A4%A9%E7%BA%BF%E5%AE%9D%E5%AE%9D*") || shExpMatch(url, "http://google.*%E5%BA%B7%E5%B8%88%E5%82%85*%E5%A4%A9%E7%BA%BF%E5%AE%9D%E5%AE%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%AA%81%E5%B0%BC%E6%96%AF*") || shExpMatch(url, "http://google.*%E7%AA%81%E5%B0%BC%E6%96%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%8E%A8%E7%89%B9*") || shExpMatch(url, "http://google.*%E6%8E%A8%E7%89%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%B1%AA%E6%96%AF*") || shExpMatch(url, "http://google.*%E6%B1%AA%E6%96%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%94%AF%E8%89%B2*") || shExpMatch(url, "http://google.*%E5%94%AF%E8%89%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%A8%81%E8%A7%86%E5%85%AC%E5%8F%B8*") || shExpMatch(url, "http://google.*%E5%A8%81%E8%A7%86%E5%85%AC%E5%8F%B8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com*%E6%88%91%E6%B2%A1%E6%9C%89%E6%95%8C%E4%BA%BA*") || shExpMatch(url, "http://google.com*%E6%88%91%E6%B2%A1%E6%9C%89%E6%95%8C%E4%BA%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B9%8C%E5%B0%94%E5%87%AF%E8%A5%BF*") || shExpMatch(url, "http://google.*%E4%B9%8C%E5%B0%94%E5%87%AF%E8%A5%BF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%BC%8D%E5%87%A1*") || shExpMatch(url, "http://google.*%E4%BC%8D%E5%87%A1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%86%99%E6%9D%A5*") || shExpMatch(url, "http://google.*%E7%86%99%E6%9D%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.%E6%96%B0%E7%96%86*%E7%8B%AC%E7%AB%8B*") || shExpMatch(url, "http://google.%E6%96%B0%E7%96%86*%E7%8B%AC%E7%AB%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%96%B0%E4%BA%AC%E6%8A%A5*") || shExpMatch(url, "http://google.*%E6%96%B0%E4%BA%AC%E6%8A%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%BE%90%E6%89%8D%E5%8E%9A*") || shExpMatch(url, "http://google.*%E5%BE%90%E6%89%8D%E5%8E%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com.*%E5%AE%A3%E8%A8%80*") || shExpMatch(url, "http://google.com.*%E5%AE%A3%E8%A8%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%AD%A6%E6%BD%AE*") || shExpMatch(url, "http://google.*%E5%AD%A6%E6%BD%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%80%80%E9%82%A6*") || shExpMatch(url, "http://google.*%E8%80%80%E9%82%A6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%9C%88%E6%9C%88*") || shExpMatch(url, "http://google.*%E6%9C%88%E6%9C%88*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%BD%B1%E5%B8%9D*") || shExpMatch(url, "http://google.*%E5%BD%B1%E5%B8%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*search*%E4%BF%9E%E6%AD%A3%E5%A3%B0*") || shExpMatch(url, "http://google.*search*%E4%BF%9E%E6%AD%A3%E5%A3%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%98%85%E5%90%8E%E5%8D%B3%E7%84%9A*") || shExpMatch(url, "http://google.*%E9%98%85%E5%90%8E%E5%8D%B3%E7%84%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%97%8F%E7%8B%AC*") || shExpMatch(url, "http://google.*%E8%97%8F%E7%8B%AC*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%B3%BD%E6%B0%91*") || shExpMatch(url, "http://google.*%E6%B3%BD%E6%B0%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%BC%A0%E9%AB%98%E4%B8%BD*") || shExpMatch(url, "http://google.*%E5%BC%A0%E9%AB%98%E4%B8%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%B5%99%E5%A4%A7%E6%8B%9B%E7%94%9F%E5%8A%9E*") || shExpMatch(url, "http://google.*%E6%B5%99%E5%A4%A7%E6%8B%9B%E7%94%9F%E5%8A%9E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%9C%9F%E7%90%86%E9%83%A8*") || shExpMatch(url, "http://google.*%E7%9C%9F%E7%90%86%E9%83%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%9C%9F%E7%9B%B8*") || shExpMatch(url, "http://google.*%E7%9C%9F%E7%9B%B8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%94%BF%E5%8F%98*") || shExpMatch(url, "http://google.*%E6%94%BF%E5%8F%98*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%94%BF%E6%B2%BB%E5%B1%80*") || shExpMatch(url, "http://google.*%E6%94%BF%E6%B2%BB%E5%B1%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%9F%A5%E6%83%85%E8%80%85*") || shExpMatch(url, "http://google.*%E7%9F%A5%E6%83%85%E8%80%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%AD%E5%85%B1*") || shExpMatch(url, "http://google.*%E4%B8%AD%E5%85%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%AD%E5%9B%BD*%E7%A6%81%E9%97%BB*") || shExpMatch(url, "http://google.*%E4%B8%AD%E5%9B%BD*%E7%A6%81%E9%97%BB*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%AD%E5%9B%BD%E6%B0%91%E4%B8%BB%E5%85%9A*") || shExpMatch(url, "http://google.*%E4%B8%AD%E5%9B%BD%E6%B0%91%E4%B8%BB%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%AD%E5%9B%BD%E6%B0%91%E4%B8%BB%E8%BF%90%E5%8A%A8*") || shExpMatch(url, "http://google.*%E4%B8%AD%E5%9B%BD%E6%B0%91%E4%B8%BB%E8%BF%90%E5%8A%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%AD%E5%9B%BD%E6%95%B0%E5%AD%97%E6%97%B6%E4%BB%A3*") || shExpMatch(url, "http://google.*%E4%B8%AD%E5%9B%BD%E6%95%B0%E5%AD%97%E6%97%B6%E4%BB%A3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E4%B8%AD%E5%9B%BD%E5%86%A4%E6%B0%91%E5%A4%A7%E5%90%8C%E7%9B%9F*") || shExpMatch(url, "http://google.*%E4%B8%AD%E5%9B%BD%E5%86%A4%E6%B0%91%E5%A4%A7%E5%90%8C%E7%9B%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%BF%BD%E6%9F%A5%E5%9B%BD%E9%99%85*") || shExpMatch(url, "http://google.*%E8%BF%BD%E6%9F%A5%E5%9B%BD%E9%99%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%B4%AB%E9%98%B3*") || shExpMatch(url, "http://google.*%E7%B4%AB%E9%98%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%87%AA%E7%94%B1%E9%97%A8*") || shExpMatch(url, "http://google.*%E8%87%AA%E7%94%B1%E9%97%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E8%87%AA%E7%94%B1%E9%96%80*") || shExpMatch(url, "http://google.*%E8%87%AA%E7%94%B1%E9%96%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*q=%E8%87%AA%E7%94%B1%E4%BA%9A%E6%B4%B2%E7%94%B5%E5%8F%B0*") || shExpMatch(url, "http://google.*q=%E8%87%AA%E7%94%B1%E4%BA%9A%E6%B4%B2%E7%94%B5%E5%8F%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E8%B4%BA*") || shExpMatch(url, "http://google.com/m*%E8%B4%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E8%B4%BA*") || shExpMatch(url, "http://google.*/search*%E8%B4%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E8%83%A1*") || shExpMatch(url, "http://google.com/m*%E8%83%A1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E8%83%A1*") || shExpMatch(url, "http://google.*/search*%E8%83%A1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E8%B4%BE*") || shExpMatch(url, "http://google.com/m*%E8%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E8%B4%BE*") || shExpMatch(url, "http://google.*/search*%E8%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E6%B1%9F*") || shExpMatch(url, "http://google.*%E6%B1%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E6%9D%8E*") || shExpMatch(url, "http://google.com/m*%E6%9D%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E6%9D%8E*") || shExpMatch(url, "http://google.*/search*%E6%9D%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E5%88%98*") || shExpMatch(url, "http://google.*/search*%E5%88%98*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E7%8E%8B*") || shExpMatch(url, "http://google.*%E7%8E%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E6%B8%A9*") || shExpMatch(url, "http://google.com/m*%E6%B8%A9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E6%B8%A9*") || shExpMatch(url, "http://google.*/search*%E6%B8%A9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E5%90%B4*") || shExpMatch(url, "http://google.com/m*%E5%90%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E5%90%B4*") || shExpMatch(url, "http://google.*/search*%E5%90%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/m*%E4%B9%A0*") || shExpMatch(url, "http://google.com/m*%E4%B9%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*/search*%E4%B9%A0*") || shExpMatch(url, "http://google.*/search*%E4%B9%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E5%91%A8*") || shExpMatch(url, "http://google.*%E5%91%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://*docs.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://*drive.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://groups.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://plus*.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/moderator*") || shExpMatch(url, "http://google.com/moderator*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com%2Fmoderator*") || shExpMatch(url, "http://google.com%2Fmoderator*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com/reader/view/feed*") || shExpMatch(url, "http://google.com/reader/view/feed*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com%2Freader%2Fview%2Ffeed*") || shExpMatch(url, "http://google.com%2Freader%2Fview%2Ffeed*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com.hk/wenda*") || shExpMatch(url, "http://google.com.hk/wenda*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.com.hk%2Fwenda*") || shExpMatch(url, "http://google.com.hk%2Fwenda*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*feedproxy.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*groups.google.*group*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*knol.google.com/k/-/08/3jhi1zdzvxj3f*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.google.com.hk/nwshp?hl=zh-cn&tab=wn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*picasaweb.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sites.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://talkgadget.google.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*anti.anti.cnn.googlepages.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*myboooks.googlepages.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.googlevideo.com*") || shExpMatch(url, "http://googlevideo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://apis.google.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gospelherald.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*greatfire.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*greatfirewallofchina.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*guishan.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.gyalwarinpoche.com*") || shExpMatch(url, "http://gyalwarinpoche.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*h1n1china.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hacken.cc/bbs*") || shExpMatch(url, "http://hacken.cc/bbs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hahlo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hanunyi.com*") || shExpMatch(url, "http://hanunyi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*have8.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hecaitou.net*") || shExpMatch(url, "http://hecaitou.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hechaji.com*") || shExpMatch(url, "http://hechaji.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hellotxt.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hellouk.org/forum/lofiversion*") || shExpMatch(url, "http://hellouk.org/forum/lofiversion*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.helpeachpeople.com*") || shExpMatch(url, "http://helpeachpeople.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.helpzhuling.org*") || shExpMatch(url, "http://helpzhuling.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*heqinglian.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*here4news.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*app.heywire.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hidden-advent.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hidecloud.com/blog/2008/07/29/fuck-beijing-olympics.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hidemyass.com*") || shExpMatch(url, "http://hidemyass.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hihiforum.com*") || shExpMatch(url, "http://hihiforum.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://hihiforum.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.higfw.com*") || shExpMatch(url, "http://higfw.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.himemix.com*") || shExpMatch(url, "http://himemix.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*times.hinet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hjclub.info*") || shExpMatch(url, "http://hjclub.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hk-pub.com/forum*") || shExpMatch(url, "http://hk-pub.com/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://hk-pub.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hk32168.com*") || shExpMatch(url, "http://hk32168.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*app.hkatvnews.com/v3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkbc.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkbf.org*") || shExpMatch(url, "http://hkbf.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkday.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkdailynews.com.hk/china.php*") || shExpMatch(url, "http://hkdailynews.com.hk/china.php*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkej.com/template/forum*") || shExpMatch(url, "http://hkej.com/template/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkepc.com/forum/viewthread.php?tid=1153322*") || shExpMatch(url, "http://hkepc.com/forum/viewthread.php?tid=1153322*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*global.hkepc.com*forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkgolden.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkgreenradio.org/home*") || shExpMatch(url, "http://hkgreenradio.org/home*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkheadline.com*blog*") || shExpMatch(url, "http://hkheadline.com*blog*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkheadline.com/instantnews*") || shExpMatch(url, "http://hkheadline.com/instantnews*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkhkhk.com*") || shExpMatch(url, "http://hkhkhk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkjc.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkjp.org*") || shExpMatch(url, "http://hkjp.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkptu.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hkreporter.com*") || shExpMatch(url, "http://hkreporter.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*apps.hloli.net/gfwtube*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hnjhj.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*holyspiritspeaks.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hongmeimei.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hootsuite.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hotpot.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hqcdp.org*") || shExpMatch(url, "http://hqcdp.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hrcir.com*") || shExpMatch(url, "http://hrcir.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hrichina.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.hrw.org*") || shExpMatch(url, "http://hrw.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*huaglad.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.huanghuagang.org*") || shExpMatch(url, "http://huanghuagang.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*huaxia-news.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*huaxin.ph*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hua-yue.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*t.huhaitai.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hutong9.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*iask.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*iask.bz*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ibiblio.org/pub/packages/ccic*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://cn.ibtimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogs.icerocket.com/tag*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*w.idaiwan.com/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.identi.ca*") || shExpMatch(url, "http://identi.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.idlcoyote.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.idouga.com*") || shExpMatch(url, "http://idouga.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.idsam.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.idv.tw*") || shExpMatch(url, "http://idv.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ieasynews.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ied2k.net*") || shExpMatch(url, "http://ied2k.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ifanqiang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ifanr.com/857*") || shExpMatch(url, "http://ifanr.com/857*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ifcss.org*") || shExpMatch(url, "http://ifcss.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ifjc.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*imageshack.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.imdb.com/name/nm0482730*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.img.ly*") || shExpMatch(url, "http://img.ly*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.imkev.com*") || shExpMatch(url, "http://imkev.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.imlive.com*") || shExpMatch(url, "http://imlive.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*immigration.gov.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tech2.in.com/video/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.inmediahk.net*") || shExpMatch(url, "http://inmediahk.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*internetdefenseleague.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*internetfreedom.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*inxian.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ipobar.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*iredmail.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.beta.iset.com.tw/forum*") || shExpMatch(url, "http://beta.iset.com.tw/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*http://beta.iset.com.tw/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.iset.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.islam.org.hk*") || shExpMatch(url, "http://islam.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.isaacmao.com*") || shExpMatch(url, "http://isaacmao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*isohunt.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.istef.info/2007/10/21/myentunnel*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*isunaffairs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*isuntv.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itaboo.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ithelp.ithome.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.itweet.net*") || shExpMatch(url, "http://itweet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://itweet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.iu45.com*") || shExpMatch(url, "http://iu45.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.izaobao.us*") || shExpMatch(url, "http://izaobao.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.izles.net*") || shExpMatch(url, "http://izles.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.*285688934*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.*358801284*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.*375584677*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.*383949089*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.*319295332*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.*418987775*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*itunes.apple.com/us*id447119634*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.apple.*isunaffairs*") || shExpMatch(url, "http://apple.*isunaffairs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.jackjia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jbtalks.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jbtalks.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jbtalks.my*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jeanyim.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.jiehua.cz*") || shExpMatch(url, "http://jiehua.cz*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jieshibaobao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.jimoparty.com*") || shExpMatch(url, "http://jimoparty.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://jimoparty.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jinbushe.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zhao.jinhai.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jingpin.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ac.jiruan.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jkforum.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*jpopforum.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.junefourth-20.net*") || shExpMatch(url, "http://junefourth-20.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*justfreevpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh-tw.justin.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*justtristan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*juziyue.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.jyxf.net*") || shExpMatch(url, "http://jyxf.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kagyuoffice.org.tw*") || shExpMatch(url, "http://kagyuoffice.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kaiyuan.de*") || shExpMatch(url, "http://kaiyuan.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kanzhongguo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kanzhongguo.eu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kechara.com*") || shExpMatch(url, "http://kechara.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.keepandshare.com/visit/visit_page.php?i=688154*") || shExpMatch(url, "http://keepandshare.com/visit/visit_page.php?i=688154*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kendincos.net*") || shExpMatch(url, "http://kendincos.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kenengba.com*") || shExpMatch(url, "http://kenengba.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wiki.keso.cn/Home*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.khmusic.com.tw*") || shExpMatch(url, "http://khmusic.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.kimy.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kingdomsalvation.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kinghost.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kingstone.com.tw*") || shExpMatch(url, "http://kingstone.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*killwall.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kissbbao.cn*") || shExpMatch(url, "http://kissbbao.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.knowledgerush.com/kr/encyclopedia*") || shExpMatch(url, "http://knowledgerush.com/kr/encyclopedia*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.koornk.com*") || shExpMatch(url, "http://koornk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kui.name/event*") || shExpMatch(url, "http://kui.name/event*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kun.im*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kusocity.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kwongwah.com.my*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*kyohk.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.kzeng.info*") || shExpMatch(url, "http://kzeng.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*la-forum.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ladbrokes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lagranepoca.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lalulalu.com*") || shExpMatch(url, "http://lalulalu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*laogai.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*laomiu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.laoyang.info*") || shExpMatch(url, "http://laoyang.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://laoyang.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*latelinenews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lerosua.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.lester850.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*letscorp.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*liansi.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lianyue.net*") || shExpMatch(url, "http://lianyue.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.liaowangxizang.net*") || shExpMatch(url, "http://liaowangxizang.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*libertytimes.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lidecheng.com/blog/fucking-gfw*") || shExpMatch(url, "http://lidecheng.com/blog/fucking-gfw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*limiao.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*abitno.linpie.com/use-ipv6-to-fuck-gfw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.linglingfa.com*") || shExpMatch(url, "http://linglingfa.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.linkideo.com*") || shExpMatch(url, "http://linkideo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*linuxtoy.org/archives/installing-west-chamber-on-ubuntu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lipuman.com*") || shExpMatch(url, "http://lipuman.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*listorious.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.liuhanyu.com*") || shExpMatch(url, "http://liuhanyu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.liujianshu.com*") || shExpMatch(url, "http://liujianshu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*liuxiaotong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*liu.lu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.livestation.com*") || shExpMatch(url, "http://livestation.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*livestream.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.livevideo.com*") || shExpMatch(url, "http://livevideo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lizhizhuangbi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lkcn.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*logbot.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.longhair.hk*") || shExpMatch(url, "http://longhair.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lookatgame.com*") || shExpMatch(url, "http://lookatgame.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://lookatgame.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkreporter.loved.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lsd.org.hk*") || shExpMatch(url, "http://lsd.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lsforum.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.lupm.org*") || shExpMatch(url, "http://lupm.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lvhai.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*m-team.cc/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.macrovpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*marguerite.su*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.maiio.net*") || shExpMatch(url, "http://maiio.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mail-archive.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*malaysiakini.com/cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*markmail.org*message*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*maruta.be/forget*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.marxist.com*") || shExpMatch(url, "http://marxist.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.marxists.org/chinese*") || shExpMatch(url, "http://marxists.org/chinese*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mashable.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mayimayi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mcfog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.md-t.org*") || shExpMatch(url, "http://md-t.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mediafire.com/?*") || shExpMatch(url, "http://mediafire.com/?*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mefeedia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lich355.megabyet.net/%E7%BD%91%E7%BB%9C%E7%A5%9E%E5%85%BD%E5%8F%A4%E9%B8%BD%E8%BF%81%E7%A7%BB%E8%AE%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.megaporn.com*") || shExpMatch(url, "http://megaporn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*megavideo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*meirixiaochao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*memedia.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*merit-times.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mesotw.com/bbs*") || shExpMatch(url, "http://mesotw.com/bbs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.metacafe.com*") || shExpMatch(url, "http://metacafe.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mgoon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mhradio.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://michaelanti.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*middle-way.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mihk.hk/forum*") || shExpMatch(url, "http://mihk.hk/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mihua.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mimivip.com*") || shExpMatch(url, "http://mimivip.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*minghui.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*minghui-school.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mingjingnews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mingpao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mingpaomonthly.com*") || shExpMatch(url, "http://mingpaomonthly.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mingpaonews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mingpaony.com*") || shExpMatch(url, "http://mingpaony.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mingpaosf.com*") || shExpMatch(url, "http://mingpaosf.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mingpaotor.com*") || shExpMatch(url, "http://mingpaotor.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mingpaovan.com*") || shExpMatch(url, "http://mingpaovan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mininova.org/tor/2593503*") || shExpMatch(url, "http://mininova.org/tor/2593503*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.minzhuhua.net*") || shExpMatch(url, "http://minzhuhua.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*minzhuzhongguo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mirrorbooks.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mitbbs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mixero.com*") || shExpMatch(url, "http://mixero.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mixpod.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mixx.com*") || shExpMatch(url, "http://mixx.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mk5000.com*") || shExpMatch(url, "http://mk5000.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mlcool.com*") || shExpMatch(url, "http://mlcool.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*plurktop.mmdays.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mmmca.com*") || shExpMatch(url, "http://mmmca.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mobile01.com*") || shExpMatch(url, "http://mobile01.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mobypicture.com*") || shExpMatch(url, "http://mobypicture.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://moby.to*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wiki.moegirl.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*molihua.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.monlamit.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*c1522.mooo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.morbell.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mp3ye.eu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mpfinance.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mpinews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mrtweet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.msn.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.msguancha.com*") || shExpMatch(url, "http://msguancha.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*multiproxy.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.mymaji.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*multiupload.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.my903.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*myactimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.myav.com.tw/bbs*") || shExpMatch(url, "http://myav.com.tw/bbs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.mychinamyhome.com*") || shExpMatch(url, "http://mychinamyhome.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.myforum.com.hk*") || shExpMatch(url, "http://myforum.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.myfreshnet.com*") || shExpMatch(url, "http://myfreshnet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mysinablog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.myspace.com*") || shExpMatch(url, "http://myspace.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*old.nabble.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nanyang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nanyangpost.com*") || shExpMatch(url, "http://nanyangpost.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nakido.com*") || shExpMatch(url, "http://nakido.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.naol.ca*") || shExpMatch(url, "http://naol.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cyberghost.natado.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nccwatch.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nch.com.tw*") || shExpMatch(url, "http://nch.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ncn.org*") || shExpMatch(url, "http://ncn.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.ned.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*t.neolee.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*netcolony.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bolin.netfirms.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.netlog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*netme.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*networkedblogs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*neverforget8964.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*new-3lunch.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.new-akiba.com*") || shExpMatch(url, "http://new-akiba.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.newcenturymc.com*") || shExpMatch(url, "http://newcenturymc.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://newcenturymc.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*newcenturynews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.newchen.com*") || shExpMatch(url, "http://newchen.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.newgrounds.com*") || shExpMatch(url, "http://newgrounds.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*newlandmagazine.com.au*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news100.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.newscn.org*") || shExpMatch(url, "http://newscn.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*newspeak.cc/story*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.newsancai.com*") || shExpMatch(url, "http://newsancai.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*newtalk.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*newyorktimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk*.nextmedia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tw*.nextmedia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nexttv.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ngensis.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nicovideo.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nintendium.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.dayaarmongol.ning.com*") || shExpMatch(url, "http://dayaarmongol.ning.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://dayaarmongol.ning.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwanyes.ning.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*njuice.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nlfreevpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nobelprize.org/nobel_prizes/peace/laureates/2010*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nobodycanstop.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nowtorrents.com*") || shExpMatch(url, "http://nowtorrents.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.noypf.com*") || shExpMatch(url, "http://noypf.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nps.gov*") || shExpMatch(url, "http://nps.gov*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nrk.no*") || shExpMatch(url, "http://nrk.no*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ntdtv.co*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ntdtv.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ntdtv.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ntdtv.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nuzcom.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.nytimes.com*") || shExpMatch(url, "http://nytimes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nysingtao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*observechina.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*offbeatchina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twtr2src.ogaoga.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.oikos.com.tw/v4*") || shExpMatch(url, "http://oikos.com.tw/v4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.oiktv.com*") || shExpMatch(url, "http://oiktv.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*oizoblog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.okayfreedom.com*") || shExpMatch(url, "http://okayfreedom.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*old-cat.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.olympicwatch.org*") || shExpMatch(url, "http://olympicwatch.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*omgili.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*omnitalk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.omy.sg*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.omy.sg*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*showbiz.omy.sg*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*the-sun.on.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tv.on.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.onlylady.cn*") || shExpMatch(url, "http://onlylady.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.oopsforum.com*") || shExpMatch(url, "http://oopsforum.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*open.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*opendemocracy.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*myopenid.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*openid.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.openleaks.org*") || shExpMatch(url, "http://openleaks.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*openvpn.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*my.opera.com/dahema*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*opnir.com/215/myentunnel-ssh-autoproxy-cross-gfw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.orchidbbs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*orientaldaily.com.my*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*orientaldaily.on.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*t.orzdream.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tui.orzdream.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*m.oulove.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*oursogo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*oursteps.com.au*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xinqimeng.over-blog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*share.ovi.com/media*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://owl.li*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://ht.ly*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://htl.li*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://mash.to*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.owind.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.oxid.it*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*oyax.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ozchinese.com/bbs*") || shExpMatch(url, "http://ozchinese.com/bbs*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.ozchinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ozyoyo.com*") || shExpMatch(url, "http://ozyoyo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pacificpoker.com*") || shExpMatch(url, "http://pacificpoker.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.packetix.net*") || shExpMatch(url, "http://packetix.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*page2rss.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.palacemoon.com*") || shExpMatch(url, "http://palacemoon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.palmislife.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*paper.li*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*paperb.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.panluan.net*") || shExpMatch(url, "http://panluan.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.panoramio.com*") || shExpMatch(url, "http://panoramio.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.parade.com/dictators/2009*") || shExpMatch(url, "http://parade.com/dictators/2009*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pastebin.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pastie.org*") || shExpMatch(url, "http://pastie.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pbs.org/wgbh/pages/frontline/gate*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pbs.org/wgbh/pages/frontline/tankman*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pbwiki.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pcdiscuss.com*") || shExpMatch(url, "http://pcdiscuss.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pcdvd.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.pchome.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.pchome.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*mypaper.pchome.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.pchome.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.pchome.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pdetails.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*peacefire.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*peacehall.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.peeasian.com*") || shExpMatch(url, "http://peeasian.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pekingduck.org*") || shExpMatch(url, "http://pekingduck.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*penchinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.penchinese.net*") || shExpMatch(url, "http://penchinese.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pengyulong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.penthouse.com*") || shExpMatch(url, "http://penthouse.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.peopo.org*") || shExpMatch(url, "http://peopo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.percy.in*") || shExpMatch(url, "http://percy.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*perfectvpn.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*perfspot.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*philly.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.picidae.net*") || shExpMatch(url, "http://picidae.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*picturesocial.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pidown.com*") || shExpMatch(url, "http://pidown.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pign.net*") || shExpMatch(url, "http://pign.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.pilotmoon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pin6.com*") || shExpMatch(url, "http://pin6.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ping.fm*") || shExpMatch(url, "http://ping.fm*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.piring.com*") || shExpMatch(url, "http://piring.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pixnet.net*") || shExpMatch(url, "http://pixnet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pk.com*") || shExpMatch(url, "http://pk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.planetsuzy.org*") || shExpMatch(url, "http://planetsuzy.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://pictures.playboy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*plays.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*plm.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*plunder.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.plus28.com*") || shExpMatch(url, "http://plus28.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.plusbb.com*") || shExpMatch(url, "http://plusbb.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pmates.com*") || shExpMatch(url, "http://pmates.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pokerstars.com*") || shExpMatch(url, "http://pokerstars.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.pokerstrategy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*politicalchina.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*popyard.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.porn.com*") || shExpMatch(url, "http://porn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.porn2.com*") || shExpMatch(url, "http://porn2.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pornbase.org*") || shExpMatch(url, "http://pornbase.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pornhub.com*") || shExpMatch(url, "http://pornhub.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pornoxo.com*") || shExpMatch(url, "http://pornoxo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pornrapidshare.com*") || shExpMatch(url, "http://pornrapidshare.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pornstarclub.com*") || shExpMatch(url, "http://pornstarclub.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.porntube.com*") || shExpMatch(url, "http://porntube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.pornvisit.com*") || shExpMatch(url, "http://pornvisit.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*postadult.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*puffinbrowser.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://post.ly*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.posterous.com*") || shExpMatch(url, "http://posterous.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://posterous.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.power.com*") || shExpMatch(url, "http://power.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*powerapple.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*heix.pp.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*prisoner-state-secret-journal-premier*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*privatepaste.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*privatetunnel.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*provideocoalition.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*api.proxlet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*proxy.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.proxypy.net*") || shExpMatch(url, "http://proxypy.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*proxyroad.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*prozz.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*psblog.name*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*psiphon.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ptt.cc*") || shExpMatch(url, "http://ptt.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.puffstore.com*") || shExpMatch(url, "http://puffstore.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.putlocker.com/file*") || shExpMatch(url, "http://putlocker.com/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pwned.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*python.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.python.com.tw*") || shExpMatch(url, "http://python.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://python.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.qanote.com*") || shExpMatch(url, "http://qanote.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*qi-gong.me*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.qienkuen.org*") || shExpMatch(url, "http://qienkuen.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*qixianglu.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.qmzdd.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.qkshare.com*") || shExpMatch(url, "http://qkshare.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*qoos.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.qooza.hk*dafengqixi*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*qusi8.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.qvodzy.org*") || shExpMatch(url, "http://qvodzy.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*nemesis2.qx.net*pages*MyEnTunnel*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*qxbbs.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*radioaustralia.net.au*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*opml.radiotime.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*rangzen.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ranyunfei.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rapbull.net*") || shExpMatch(url, "http://rapbull.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rapidsharedata.com*") || shExpMatch(url, "http://rapidsharedata.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*rcinet.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.read100.com*") || shExpMatch(url, "http://read100.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.readingtimes.com.tw*") || shExpMatch(url, "http://readingtimes.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.realraptalk.com*") || shExpMatch(url, "http://realraptalk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.recordhistory.org*") || shExpMatch(url, "http://recordhistory.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.redren.com/2009/01/jap-let-you-use-online-stealth*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.redtube.com*") || shExpMatch(url, "http://redtube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*referer.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*relaxbbs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*renminbao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.renyurenquan.org*") || shExpMatch(url, "http://renyurenquan.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*subacme.rerouted.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.revleft.com*") || shExpMatch(url, "http://revleft.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*retweetist.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*connectedchina.reuters.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.reuters.com/news/video*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*revver.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rfa.org*") || shExpMatch(url, "http://rfa.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rfachina.com*") || shExpMatch(url, "http://rfachina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rfamobile.org*") || shExpMatch(url, "http://rfamobile.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rfi.fr*") || shExpMatch(url, "http://rfi.fr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://rfi.my/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rhcloud.com*") || shExpMatch(url, "http://rhcloud.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rileyguide.com*") || shExpMatch(url, "http://rileyguide.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*riku.me/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rlwlw.com*") || shExpMatch(url, "http://rlwlw.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinese.rnw.nl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.rnw.nl/chinese*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*robtex.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.roodo.com*") || shExpMatch(url, "http://roodo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rsf.org*") || shExpMatch(url, "http://rsf.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rsf-chinese.org*") || shExpMatch(url, "http://rsf-chinese.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rssmeme.com*") || shExpMatch(url, "http://rssmeme.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rthk.hk*") || shExpMatch(url, "http://rthk.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://rthk.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rthk.org.hk*") || shExpMatch(url, "http://rthk.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://rthk.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*rti.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ruanyifeng.com/blog*some_ways_to_break_the_great_firewall*") || shExpMatch(url, "http://ruanyifeng.com/blog*some_ways_to_break_the_great_firewall*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rushbee.com*") || shExpMatch(url, "http://rushbee.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*rutube.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ruyiseek.com*") || shExpMatch(url, "http://ruyiseek.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.rxhj.net*") || shExpMatch(url, "http://rxhj.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.s135.com/google_ssl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sacom.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.saiq.me*") || shExpMatch(url, "http://saiq.me*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.salvation.org.hk*") || shExpMatch(url, "http://salvation.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.samair.ru/proxy/type-01*") || shExpMatch(url, "http://samair.ru/proxy/type-01*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sammyjs.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sandnoble.com/bookSearch/isbnInquiry.asp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sanmin.com.tw*") || shExpMatch(url, "http://sanmin.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sapikachu.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*savemedia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*savetibet.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*savevid.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.scribd.com*") || shExpMatch(url, "http://scribd.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*seapuff.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*domainhelp.search.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*secretchina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*securitykiss.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*seesmic.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sejie.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sendspace.com/file*") || shExpMatch(url, "http://sendspace.com/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tweets.seraph.me/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sesawe.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sesawe.org*") || shExpMatch(url, "http://sesawe.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.setty.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sevenload.com*") || shExpMatch(url, "http://sevenload.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sex.com*") || shExpMatch(url, "http://sex.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sex-11.com*") || shExpMatch(url, "http://sex-11.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sex8.cc*") || shExpMatch(url, "http://sex8.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sexandsubmission.com*") || shExpMatch(url, "http://sexandsubmission.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sexhu.com*") || shExpMatch(url, "http://sexhu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sexhuang.com*") || shExpMatch(url, "http://sexhuang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sexinsex.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*67.220.91.18*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*67.220.91.23*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sfileydy.com*") || shExpMatch(url, "http://sfileydy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shadow.ma*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.shangfang.org*") || shExpMatch(url, "http://shangfang.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shapeservices.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sharebee.com*") || shExpMatch(url, "http://sharebee.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sharpdaily.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sharpdaily.hk*") || shExpMatch(url, "http://sharpdaily.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.shaunthesheep.com*") || shExpMatch(url, "http://shaunthesheep.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shenshou.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shenyunperformingarts.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shenzhoufilm.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shinychan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.shizhao.org*") || shExpMatch(url, "http://shizhao.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*shkspr.mobi/dabr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.shopping.com*") || shExpMatch(url, "http://shopping.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.showtime.jp*") || shExpMatch(url, "http://showtime.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ch.shvoong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.shwchurch3.com*") || shExpMatch(url, "http://shwchurch3.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://shwchurch3.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*simplecd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*simpleproductivityblog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.sina.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.sina.com%2F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.sina.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dailynews.sina.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*dailynews.sina.com%2F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.sina.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*home.sina.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.sina.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.sina.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*singtao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*news.singtao.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sino-monthly.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sinocism.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sinomontreal.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sinonet.ca*") || shExpMatch(url, "http://sinonet.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sinopitt.info*") || shExpMatch(url, "http://sinopitt.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sinoants.com*") || shExpMatch(url, "http://sinoants.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sinoquebec.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sitebro.tw*") || shExpMatch(url, "http://sitebro.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sitetag.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sis001.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.skykiwi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.skype.com/intl/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*share.skype.com/sites/en/2008/10/skype_president_addresses_chin*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.skype.com/zh-Hant*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*m.slandr.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.slideshare.net*") || shExpMatch(url, "http://slideshare.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.slime.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.slutload.com*") || shExpMatch(url, "http://slutload.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*smhric.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.so-ga.net*") || shExpMatch(url, "http://so-ga.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.so-news.com*") || shExpMatch(url, "http://so-news.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*home.so-net.net.tw/yisa_tsai*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sod.co.jp*") || shExpMatch(url, "http://sod.co.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.softether.org*") || shExpMatch(url, "http://softether.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sohcradio.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.soumo.info*") || shExpMatch(url, "http://soumo.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.slinkset.com*") || shExpMatch(url, "http://slinkset.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.snaptu.com*") || shExpMatch(url, "http://snaptu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sneakme.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sobees.com*") || shExpMatch(url, "http://sobees.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*socialwhale.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.softether.co.jp*") || shExpMatch(url, "http://softether.co.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.sogoo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*soh.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sohfrance.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*chinese.soifind.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sokamonline.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.songjianjun.com*") || shExpMatch(url, "http://songjianjun.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sopcast.com*") || shExpMatch(url, "http://sopcast.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sopcast.org*") || shExpMatch(url, "http://sopcast.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*soundcloud.com/punkgod*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://soundcloud.com/punkgod*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*soundofhope.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sourceforge.net*") || shExpMatch(url, "http://sourceforge.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*southnews.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sowers.org.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.spankwire.com*") || shExpMatch(url, "http://spankwire.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.spb.com/blackberry-software/tv/download*") || shExpMatch(url, "http://spb.com/blackberry-software/tv/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://spb.com/blackberry-software/tv/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.spb.com/pocketpc-software/tv/download*") || shExpMatch(url, "http://spb.com/pocketpc-software/tv/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://spb.com/pocketpc-software/tv/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.spb.com/symbian-software/tv/download*") || shExpMatch(url, "http://spb.com/symbian-software/tv/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://spb.com/symbian-software/tv/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.speedpluss.org*") || shExpMatch(url, "http://speedpluss.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*spinejs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*squarespace.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.stackfile.com/freedur*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*usinfo.state.gov*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.starp2p.com*") || shExpMatch(url, "http://starp2p.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.state168.com*") || shExpMatch(url, "http://state168.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sthoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.stickam.com*") || shExpMatch(url, "http://stickam.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*stickeraction.com/sesawe*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.stoptibetcrisis.net*") || shExpMatch(url, "http://stoptibetcrisis.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.streetvoice.com/article*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.streetvoice.com/diary*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn2.streetvoice.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tw.streetvoice.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.student.tw/db*") || shExpMatch(url, "http://student.tw/db*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*stupidvideos.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sufeng.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sugarsync.com*") || shExpMatch(url, "http://sugarsync.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*summify.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.suoluo.org*") || shExpMatch(url, "http://suoluo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*api.supertweet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.supertweet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*support/youtube/bin/request.py?contact_type=abuse&*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*/support/youtube/bin/static.py?page=start.cs&*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sydneytoday.com*") || shExpMatch(url, "http://sydneytoday.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*sysresccd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.sytes.net*") || shExpMatch(url, "http://sytes.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.syx86.com/2009/09/puff*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.syx86.cn/2009/09/puff*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.szbbs.net*") || shExpMatch(url, "http://szbbs.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.t35.com*") || shExpMatch(url, "http://t35.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.t66y.com*") || shExpMatch(url, "http://t66y.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.taa-usa.org*") || shExpMatch(url, "http://taa-usa.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://taa-usa.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tabtter.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tacem.org*") || shExpMatch(url, "http://tacem.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tagwalk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taipei.gov.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.taipeisociety.org*") || shExpMatch(url, "http://taipeisociety.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.taiwandaily.net*") || shExpMatch(url, "http://taiwandaily.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwankiss.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwannation.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwannation.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwanus.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwanyes.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*taiwan-sex.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tangben.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.taolun.info*") || shExpMatch(url, "http://taolun.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.taragana.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.taweet.com*") || shExpMatch(url, "http://taweet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tchrd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tcno.net*doc*tor*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.teashark.com/download.html*") || shExpMatch(url, "http://teashark.com/download.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.telecomspace.com*") || shExpMatch(url, "http://telecomspace.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tenacy.com*") || shExpMatch(url, "http://tenacy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*theblemish.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.thechinabeat.org*") || shExpMatch(url, "http://thechinabeat.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thehousenews.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thepiratebay.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*theqii.info/blog*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thereallove.kr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thespeeder.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thetrotskymovie.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thevivekspot.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.thisav.com*") || shExpMatch(url, "http://thisav.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://thisav.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*thkphoto.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*threatchaos.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.thumbzilla.com*") || shExpMatch(url, "http://thumbzilla.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tiananmenmother.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tianhuayuan.com*") || shExpMatch(url, "http://tianhuayuan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tiantibooks.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tianzhu.org*") || shExpMatch(url, "http://tianzhu.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tibet.com*") || shExpMatch(url, "http://tibet.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tibet.net*") || shExpMatch(url, "http://tibet.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tibet.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tibetalk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tibetanyouthcongress.org*") || shExpMatch(url, "http://tibetanyouthcongress.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tibetfund.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tibetonline.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tibetonline.tv*") || shExpMatch(url, "http://tibetonline.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.time.com/time/time100/leaders/profile/rebel*") || shExpMatch(url, "http://time.com/time/time100/leaders/profile/rebel*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.time.com/time/specials/packages/article/0,28804*") || shExpMatch(url, "http://time.com/time/specials/packages/article/0,28804*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tinychat.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tistory.com*") || shExpMatch(url, "http://tistory.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tmi.me*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tnaflix.com*") || shExpMatch(url, "http://tnaflix.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*togetter.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tokyo-247.com*") || shExpMatch(url, "http://tokyo-247.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tokyo-hot.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tonyyan.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.toodoc.com*") || shExpMatch(url, "http://toodoc.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*toonel.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.topnews.in*") || shExpMatch(url, "http://topnews.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.topshareware.com*") || shExpMatch(url, "http://topshareware.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*topsy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tora.to*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.torproject.org*") || shExpMatch(url, "http://torproject.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*torrentcrazy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*touch99.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tpi.org.tw*") || shExpMatch(url, "http://tpi.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*trendsmap.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.trialofccp.org*") || shExpMatch(url, "http://trialofccp.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*trtc.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.truth101.co.tv*") || shExpMatch(url, "http://truth101.co.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://truth101.co.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.truveo.com*") || shExpMatch(url, "http://truveo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tsemtulku.com*") || shExpMatch(url, "http://tsemtulku.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tsquare.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tsunagarumon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tsctv.net*") || shExpMatch(url, "http://tsctv.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tttan.com*") || shExpMatch(url, "http://tttan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bb.ttv.com.tw/bb*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tuanzt.com*") || shExpMatch(url, "http://tuanzt.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tube.com*") || shExpMatch(url, "http://tube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tube8.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tubecao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tuidang.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tuidang.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*bbs.tuitui.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tunein.com*") || shExpMatch(url, "http://tunein.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tunein.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.turbobit.net*") || shExpMatch(url, "http://turbobit.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://turbobit.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tv.com*") || shExpMatch(url, "http://tv.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tv.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tvants.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*forum.tvb.com/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tvboxnow.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tvider.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twa.sh*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twapperkeeper.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twaud.io*") || shExpMatch(url, "http://twaud.io*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twbbs.net.tw*") || shExpMatch(url, "http://twbbs.net.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twbbs.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twbbs.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tweepmag.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tweepml.org*") || shExpMatch(url, "http://tweepml.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tweetbackup.com*") || shExpMatch(url, "http://tweetbackup.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tweetboard.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tweetboner.biz*") || shExpMatch(url, "http://tweetboner.biz*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tweetdeck.com*") || shExpMatch(url, "http://tweetdeck.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://deck.ly*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*m.tweete.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tweetmeme.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tweetphoto.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tweetree.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tweetymail.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twibase.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twibble.de*") || shExpMatch(url, "http://twibble.de*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twibbon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twicsy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twifan.com*") || shExpMatch(url, "http://twifan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://twifan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twiffo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twilog.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twimbow.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twipple.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twistar.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twisternow.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twistory.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitbrowser.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitgoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitiq.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitlonger.com*") || shExpMatch(url, "http://twitlonger.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://tl.gd/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitoaster.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitpic.com*") || shExpMatch(url, "http://twitpic.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitreferral.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twit2d.com*") || shExpMatch(url, "http://twit2d.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitstat.com*") || shExpMatch(url, "http://twitstat.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitvid.com*") || shExpMatch(url, "http://twitvid.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*199.59.148.20*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://t.co*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://t.co*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://twt.tl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitter.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twittercounter.com*") || shExpMatch(url, "http://twittercounter.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitterfeed.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twittergadget.com*") || shExpMatch(url, "http://twittergadget.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitterkr.com*") || shExpMatch(url, "http://twitterkr.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twittertim.es*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twitthat.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitturly.com*") || shExpMatch(url, "http://twitturly.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twitzap.com*") || shExpMatch(url, "http://twitzap.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twiyia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twreg.info*") || shExpMatch(url, "http://twreg.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twtkr.com*") || shExpMatch(url, "http://twtkr.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://twtkr.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twtrland.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*twurl.nl*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.twyac.org*") || shExpMatch(url, "http://twyac.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.tycool.com*") || shExpMatch(url, "http://tycool.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tynsoe.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*embr.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*guomin.us/login*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.srcf.ucam.org/salon/*") || shExpMatch(url, "http://srcf.ucam.org/salon/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.udn.com*") || shExpMatch(url, "http://udn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ufreevpn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ugo.com*") || shExpMatch(url, "http://ugo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*uhrp.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*uighurbiz.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ulike.net*") || shExpMatch(url, "http://ulike.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.ukchinese.com/www/22/2009-03/2842.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ukliferadio.co.uk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ultravpn.fr*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ultraxs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*uncyclomedia.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*uncyclopedia.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uni.cc*") || shExpMatch(url, "http://uni.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*unicode.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uniteddaily.com.my/index.php?*") || shExpMatch(url, "http://uniteddaily.com.my/index.php?*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.unix100.com*") || shExpMatch(url, "http://unix100.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*unpo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tor.updatestar.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.upload4u.info*") || shExpMatch(url, "http://upload4u.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uploaded.to/file*") || shExpMatch(url, "http://uploaded.to/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://uploaded.to/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uploadstation.com/file*") || shExpMatch(url, "http://uploadstation.com/file*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.urbanoutfitters.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*myshare.url.com.tw/*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*us.to*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*beta.usejump.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*earthquake.usgs.gov/eqcenter/recenteqsww/Maps/10/105_30.php*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ustream.tv*") || shExpMatch(url, "http://ustream.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uushare.com*") || shExpMatch(url, "http://uushare.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://uushare.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uwants.com*") || shExpMatch(url, "http://uwants.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.uwants.net*") || shExpMatch(url, "http://uwants.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*uygur.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*v70.us*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.van698.com*") || shExpMatch(url, "http://van698.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.vanemu.cn*") || shExpMatch(url, "http://vanemu.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.vanilla-jp.com*") || shExpMatch(url, "http://vanilla-jp.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*vansky.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.velkaepocha.sk*") || shExpMatch(url, "http://velkaepocha.sk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*veoh.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.verizon.net*") || shExpMatch(url, "http://verizon.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.vft.com.tw*") || shExpMatch(url, "http://vft.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*videobam.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.videomo.com*") || shExpMatch(url, "http://videomo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*vimeo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.tiscali.it/canali/truveo*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.voa.mobi*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tw.voa.mobi*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.voachineseblog.com*") || shExpMatch(url, "http://voachineseblog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*voagd.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*voacantonese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*voachinese.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*voatibetan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*voanews.com/chinese*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*vocn.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.vot.org*") || shExpMatch(url, "http://vot.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.voy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*vpnbook.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*vpnfire.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.vpngate.net*") || shExpMatch(url, "http://vpngate.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*lists.w3.org/archives/public*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.jyzj.waqn.com*") || shExpMatch(url, "http://jyzj.waqn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wahas.com*") || shExpMatch(url, "http://wahas.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.waigaobu.com*") || shExpMatch(url, "http://waigaobu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*waikeung.org/php_wind*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.waiwaier.com*") || shExpMatch(url, "http://waiwaier.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://waiwaier.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wallornot.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wangjinbo.org*") || shExpMatch(url, "http://wangjinbo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wanglixiong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wangruoshui.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.wangruowang.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*want-daily.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wapedia.mobi/zhsimp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.makzhou.warehouse333.com*") || shExpMatch(url, "http://makzhou.warehouse333.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*washeng.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wattpad.com*") || shExpMatch(url, "http://wattpad.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wearn.com*") || shExpMatch(url, "http://wearn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*webbang.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*weblagu.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*webs-tv.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*webshots.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*websitepulse.com/help/testtools.china-test.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*webworkerdaily.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*weeewooo.net/hss/hotspot_cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.weekmag.info*") || shExpMatch(url, "http://weekmag.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wefong.com*") || shExpMatch(url, "http://wefong.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*weijingsheng.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.weiming.info*") || shExpMatch(url, "http://weiming.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*weiquanwang.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wengewang.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wengewang.org*") || shExpMatch(url, "http://wengewang.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wenhui.ch*") || shExpMatch(url, "http://wenhui.ch*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wenxuecity.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wenyunchao.com*") || shExpMatch(url, "http://wenyunchao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*westca.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hkg.westkit.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.wet123.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wetpussygames.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wexiaobo.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wezhiyong.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wforum.com*") || shExpMatch(url, "http://wforum.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.whatblocked.com*") || shExpMatch(url, "http://whatblocked.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.whippedass.com*") || shExpMatch(url, "http://whippedass.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*whylover.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*evchk.wikia.com/wiki/%E5%A4%A7%E7%B4%80%E5%85%83%E6%99%82%E5%A0%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.uncyclopedia.wikia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.uncyclopedia.wikia.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wikileaks.org*") || shExpMatch(url, "http://wikileaks.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wikilivres.info/wiki/%E9%9B%B6%E5%85%AB%E5%AE%AA%E7%AB%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikinews.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*winwhispers.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wisevid.com*") || shExpMatch(url, "http://wisevid.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.witopia.net*") || shExpMatch(url, "http://witopia.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wo.tc*") || shExpMatch(url, "http://wo.tc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wolfax.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.womensrightsofchina.org*") || shExpMatch(url, "http://womensrightsofchina.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*woopie.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*woopie.tv*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.worldcat.org*") || shExpMatch(url, "http://worldcat.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*worldjournal.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wordpress.com*") || shExpMatch(url, "http://wordpress.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*woxinghuiguo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wow-life.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wpoforum.com*") || shExpMatch(url, "http://wpoforum.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wqlhw.com*") || shExpMatch(url, "http://wqlhw.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wqyd.org*") || shExpMatch(url, "http://wqyd.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wretch.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*cn.wsj.com/gb/20130215/tec113853.asp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wtfpeople.com*") || shExpMatch(url, "http://wtfpeople.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wuala.com*") || shExpMatch(url, "http://wuala.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wuerkaixi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wufi.org.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wujie.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wujieliulan.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wukangrui.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wwitv.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*wzyboy.im/post/160*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://www.x-berry.com/goagent*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*x1949x.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*x365x.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xanga.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xbookcn.com*") || shExpMatch(url, "http://xbookcn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*x.xcity.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xcritic.com*") || shExpMatch(url, "http://xcritic.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*destiny.xfiles.to/ubbthreads*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xfm.pp.ru*") || shExpMatch(url, "http://xfm.pp.ru*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xh4n.cn/blog*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xhamster.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*one.xthost.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xiaochuncnjp.com*") || shExpMatch(url, "http://xiaochuncnjp.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*s.xiaod.in*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xiaohexie.com*") || shExpMatch(url, "http://xiaohexie.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xiezhua.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xing.com*") || shExpMatch(url, "http://xing.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xinmiao.com.hk*") || shExpMatch(url, "http://xinmiao.com.hk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xinsheng.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xinshijue.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xinhuanet.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xizang-zhiye.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xjp.cc*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xmovies.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xpdo.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.xuite.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*vlog.xuite.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xuzhiyong.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xuchao.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xvedios.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xvideos.com*") || shExpMatch(url, "http://xvideos.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.xxbbx.com*") || shExpMatch(url, "http://xxbbx.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xys.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xysblogs.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*page.bid.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blogs.yahoo.co.jp*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*buy.yahoo.com.tw/gdsale*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.knowledge.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.myblog.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.news.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.rd.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.search.yahoo.com/search*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*hk.video.news.yahoo.com/video*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*meme.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tw.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tw.myblog.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*tw.news.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*pulse.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*upcoming.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*video.yahoo.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yam.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yasni.co.uk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ydy.com*") || shExpMatch(url, "http://ydy.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yeeyi.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yegle.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yfrog.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yi.org*") || shExpMatch(url, "http://yi.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yidio.com*") || shExpMatch(url, "http://yidio.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yilubbs.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*xa.yimg.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yipub.com*") || shExpMatch(url, "http://yipub.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yogichen.org*") || shExpMatch(url, "http://yogichen.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yong.hu*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yorkbbs.ca*") || shExpMatch(url, "http://yorkbbs.ca*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yyii.org*") || shExpMatch(url, "http://yyii.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yzzk.com*") || shExpMatch(url, "http://yzzk.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.youjizz.com*") || shExpMatch(url, "http://youjizz.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*youmaker.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*youpai.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.your-freedom.net*") || shExpMatch(url, "http://your-freedom.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.yousendit.com*") || shExpMatch(url, "http://yousendit.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*youthbao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.youthnetradio.org/tmit/forum*") || shExpMatch(url, "http://youthnetradio.org/tmit/forum*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.youthwant.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*share.youthwant.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*topic.youthwant.com.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.youporn.com*") || shExpMatch(url, "http://youporn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*youtu.be*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.youtube.com*") || shExpMatch(url, "http://youtube.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.youtubecn.com*") || shExpMatch(url, "http://youtubecn.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*youversion.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*blog.youxu.info/2010/03/14/west-chamber*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ytht.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yuanming.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*yx51.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zacebook.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*luntan.zaobao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zaobao.com.sg*") || shExpMatch(url, "http://zaobao.com.sg*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zaozon.com*") || shExpMatch(url, "http://zaozon.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.zaurus.org.uk*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zdnet.com.tw/news/software/0,2000085678,20111187,00*") || shExpMatch(url, "http://zdnet.com.tw/news/software/0,2000085678,20111187,00*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zengjinyan.org*") || shExpMatch(url, "http://zengjinyan.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*www.zfreet.com/post/usejump-browns.html*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zgzcjj.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zhanbin.net*") || shExpMatch(url, "http://zhanbin.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zhenghui.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zhenlibu.info*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zhinengluyou.com*") || shExpMatch(url, "http://zhinengluyou.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zhonggtuotese.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zhuichaguoji.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.ziddu.com/download*") || shExpMatch(url, "http://ziddu.com/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zinio.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zkaip.com*") || shExpMatch(url, "http://zkaip.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zmw.cn*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zomobo.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zonaeuropa.com*") || shExpMatch(url, "http://zonaeuropa.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zoozle.net*") || shExpMatch(url, "http://zoozle.net*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*writer.zoho.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zshare.net/download*") || shExpMatch(url, "http://zshare.net/download*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zsrhao.com*") || shExpMatch(url, "http://zsrhao.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zuo.la*") || shExpMatch(url, "http://zuo.la*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.zuola.com*") || shExpMatch(url, "http://zuola.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zyzc9.com*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*freenet*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*q=freedom*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*q%3Dfreedom*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*remembering_tiananmen_20_years*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*safeweb*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*q=triangle*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*q%3DTriangle*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ultrareach*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ultrasurf*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zhengjian*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E7%BD%A2%E8%AF%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%B2%8D%E5%BD%A4*") || shExpMatch(url, "http://google.*%E9%B2%8D%E5%BD%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.google.*%E9%AE%91%E5%BD%A4*") || shExpMatch(url, "http://google.*%E9%AE%91%E5%BD%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%8D%9A%E8%AE%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%A4%A7%E7%BA%AA%E5%85%83*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E9%92%93%E9%B1%BC%E5%B2%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E5%8A%A8%E6%80%81%E7%BD%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%A4%9A%E7%B6%AD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%A4%9A%E7%BB%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*freegate*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%B3%95%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E6%B3%95%E8%BD%AE%E5%A4%A7%E6%B3%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E6%B3%95%E8%BC%AA%E5%8A%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E6%B3%95%E8%BD%AE%E5%8A%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E8%83%A1%E6%B5%B7%E5%B3%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E8%83%A1%E6%B5%B7%E6%B8%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E8%8A%B1%E8%8A%B1%E5%85%AC%E5%AD%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%BC%CD%D4%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%BC%D3%C3%DC%B4%FA%C0%ED*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%8A%A0%E5%AF%86%E4%BB%A3%E7%90%86*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%B1%9F%E6%B5%81%E6%B0%93*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E7%9C%8B%E4%B8%AD%E5%9B%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%85%AD%E5%9B%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E5%88%98%E6%99%93%E6%B3%A2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E7%BE%8E%E5%9B%BD%E4%B9%8B%E9%9F%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E6%B0%91%E8%BF%9B%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E6%B0%91%E8%BF%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E8%89%B2%E6%83%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*%E7%8E%8B%E4%B8%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E7%BD%91%E7%89%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E7%8E%8B%E5%B8%8C%E5%93%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E9%AD%8F%E4%BA%AC%E7%94%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%96%87%E5%AD%97%E7%8B%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%88%91%E7%9A%84%E5%A5%8B%E6%96%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%97%A0%E7%95%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E9%82%AA%E6%81%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%B4%97%E8%84%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%96%B0%E5%94%90%E4%BA%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E6%96%B0%E8%AF%AD%E4%B8%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E5%AD%A6%E8%BF%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E4%B8%AD%E5%8A%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E4%B8%AD%E5%9B%BD%E8%AE%BA%E5%9D%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*search*%E4%B8%AD%E5%AE%A3%E9%83%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://upload.wikimedia.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "https://*.wikipedia.org*") || shExpMatch(url, "https://wikipedia.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wikipedia.org/wiki/Dalai_Lama*") || shExpMatch(url, "http://wikipedia.org/wiki/Dalai_Lama*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*.wikipedia.org/wiki/Dalai-Lama*") || shExpMatch(url, "http://wikipedia.org/wiki/Dalai-Lama*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*ar.wikipedia.org*%D8%AF%D8%A7%D9%84%D8%A7%D9%8A_%D9%84%D8%A7%D9%85%D8%A7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh-yue.wikipedia.org/wiki/%E5%8A%89%E6%9B%89%E6%B3%A2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Anti-communism*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Book_burning*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Censorship_in_the_People%27s_Republic_of_China*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Charter_08*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Chen_Guangcheng*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Deep_packet_inspection*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Freegate*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Golden_Shield_Project*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Hong_Kong*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Huang_Qi*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Internet_censorship*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Java_Anon_Proxy*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Liu_Xiaobo*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Shi_Tao*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Tank_man*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Tiananmen_Papers*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Tiananmen_Square_protests_of_1989*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*en.wikipedia.org/wiki/Tibetan_independence_movement*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/Wikipedia:%E9%A0%81%E9%9D%A2%E5%AD%98%E5%BB%A2%E8%A8%8E%E8%AB%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.m.wikipedia.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikisource.org*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*2012%E5%B9%B4%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E8%85%90%E8%B4%A5%E6%A1%88%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*512%E5%A4%A7%E5%9C%B0%E9%9C%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*08%E5%AE%AA%E7%AB%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*1959%E5%B9%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*1989%E5%B9%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*610%E8%BE%A6%E5%85%AC%E5%AE%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*Anti-CNN*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%98%BF%E5%BA%95%E5%B3%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%98%BF%E6%B2%9B%C2%B7%E9%98%BF%E6%97%BA%E6%99%8B%E7%BE%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%89%BE%E6%9C%AA%E6%9C%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%85%AB%E4%B9%9D%E5%AD%A6%E8%BF%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%85%AB%E6%80%9D%E5%B7%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8F%AD%E7%A6%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%B2%8D%E5%BD%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%AE%91%E5%BD%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8C%97%E4%BA%AC%E9%AB%98%E6%A0%A1%E5%AD%A6%E7%94%9F%E8%87%AA%E6%B2%BB%E8%81%94%E5%90%88%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8C%97%E4%BA%AC%E4%B9%8B%E6%98%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%96%84%E7%86%99%E6%9D%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8D%9A%E8%AE%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B8%83%E6%8B%89%E6%A0%BC%E4%B9%8B%E6%98%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9F%B4%E7%8E%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BB%93%E5%A4%AE%E5%98%89%E6%8E%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9B%B9%E9%95%B7%E9%9D%92*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%99%88%E5%85%89%E8%AF%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%A5%9A%E5%B8%83%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%e5%a4%a7%e5%8f%82%e8%80%83_(%e7%bd%91%e7%bb%9c%e6%9d%82%e5%bf%97)*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E7%B4%80%E5%85%83*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E7%BA%AA%E5%85%83%E6%97%B6%E6%8A%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%BE%BE%E8%B5%96%E5%96%87%E5%98%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%BE%BE%E5%85%B0%E8%90%A8%E6%8B%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%81%94%E8%98%AD%E8%96%A9%E6%8B%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%BE%BE%E5%B0%94%E7%BD%95%E6%B4%BB%E4%BD%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E8%B5%A6%E5%9B%BD%E9%99%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E8%B5%A6%E5%9C%8B%E9%9A%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E5%B1%A0%E6%9D%80%E5%88%97%E8%A1%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E8%97%8F%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A7%E6%98%AD%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%B9%E5%A2%9E%E5%98%89%E6%8E%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%81%E5%AD%90%E9%9C%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%9C%E9%A3%8E-21%E4%B8%AD%E7%A8%8B%E5%BC%B9%E9%81%93%E5%AF%BC%E5%BC%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%B1%E9%A2%A8-31%E6%B4%B2%E9%9A%9B%E5%BD%88%E9%81%93%E5%B0%8E%E5%BD%88*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%B1%E7%AA%81%E5%8E%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%9C%E7%AA%81%E5%8E%A5%E6%96%AF%E5%9D%A6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%9A%E7%BB%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%9A%E7%B6%AD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BF%84%E7%BE%85%E6%96%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8F%8D%E5%8D%8E%E5%8A%BF%E5%8A%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%98%B2%E7%81%AB%E9%95%BF%E5%9F%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B9%E5%8A%B1%E4%B9%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B9%E5%8B%B5%E4%B9%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B9%E8%88%9F%E5%AD%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%84%A4%E9%9D%92*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B0%81%E4%BB%8E%E5%BE%B7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B0%81%E5%BE%9E%E5%BE%B7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%86%AF%E6%AD%A3%E8%99%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%82%85%E9%93%81%E5%B1%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%99%B6%E5%80%AB%E8%B5%A4%E5%B7%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%AB%98%E6%99%BA%E6%99%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9B%B4%E7%99%BB%E7%A2%BA%E5%90%89%E5%B0%BC%E7%91%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%99%B6%E4%B8%BE%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%94%B9%E9%9D%A9%E5%8E%86%E7%A8%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%94%98%E4%B8%B9%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%AB%98%E8%A1%8C%E5%81%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%99%B6%E5%BD%93%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%A0%BC%E9%B2%81%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*GFW*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%85%AC%E5%85%B1%E7%9F%A5%E8%AF%86%E5%88%86%E5%AD%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*Google%E5%AE%A1%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-cn/%E8%B0%B7%E6%AD%8C%E9%80%80%E5%87%BA%E4%B8%AD%E5%9B%BD%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E8%B0%B7%E6%AD%8C%E9%80%80%E5%87%BA%E4%B8%AD%E5%9B%BD%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E5%B9%BF%E5%B7%9E%E5%B8%82%E6%96%B0%E5%A1%98%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9B%BD%E4%BF%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%83%AD%E4%BC%AF%E9%9B%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9B%BD%E9%99%85%E7%89%B9%E8%B5%A6%E7%BB%84%E7%BB%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9B%BD%E5%86%85%E5%AE%89%E5%85%A8%E4%BF%9D%E5%8D%AB%E6%94%AF%E9%98%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9C%8B%E5%8B%99%E9%99%A2%E9%98%B2%E7%AF%84%E5%92%8C%E8%99%95%E7%90%86%E9%82%AA%E6%95%99%E5%95%8F%E9%A1%8C%E8%BE%A6%E5%85%AC%E5%AE%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%9F%A9%E4%B8%9C%E6%96%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B4%BA%E5%9B%BD%E5%BC%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BD%95%E4%BF%8A%E4%BB%81*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B2%B3%E6%AE%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B4%AA%E5%93%B2%E5%8B%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BE%AF%E5%BE%B7%E5%BB%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BE%AF%E8%B5%9B%E5%9B%A0%E6%B1%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BE%AF%E5%BE%B7%E5%81%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E4%BD%B3_%281973%E5%B9%B4%29*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E4%BD%B3_%28%E7%A4%BE%E6%B4%BB%E5%8B%95%E5%AE%B6%29*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E4%BD%B3_%28%E7%A4%BE%E6%9C%83%E6%B4%BB%E5%8B%95%E5%AE%B6%29*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E9%94%A6%E6%B6%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E5%B9%B3_%28%E4%BD%9C%E5%AE%B6%29*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%91%BC%E5%9C%96%E5%85%8B%E5%9C%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E6%B8%A9%E4%BD%93%E5%88%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%83%A1%E8%80%80%E9%82%A6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8D%8E%E5%9B%BD%E9%94%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%8F%AF%E5%9C%8B%E9%8B%92*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8D%8E%E5%A4%8F%E6%96%87%E6%91%98*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%8A%B1%E5%9B%AD%E8%BD%AF%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%8A%B1%E5%9B%AD%E7%BD%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%BB%84%E7%90%A6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%BB%83%E7%90%A6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%BB%83%E9%9B%80%E8%A1%8C%E5%8B%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%BB%84%E4%B8%87%E9%87%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%BB%83%E6%9B%89%E6%95%8F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9B%9E%E8%89%AF%E7%8E%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%9C%8D%E8%8B%B1%E6%9D%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AF%82%E8%AD%B7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%BF%80%E6%B5%81%E4%B8%AD%E5%9B%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%98%89%E9%9D%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AE%B6%E4%B9%90%E7%A6%8F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B3%88%E6%85%B6%E6%9E%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B4%BE%E5%BA%86%E6%9E%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BB%BA%E5%9B%BD%E9%97%A8%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A7%9C%E7%BB%B4%E5%B9%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B1%9F%E6%B3%BD%E6%B0%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B1%9F%E6%BE%A4%E6%B0%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%87%91%E7%9B%BE%E5%B7%A5%E7%A8%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%BD%F0%B6%DC%B9%A4%B3%CC*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B9%9D%E8%AF%84%E5%85%B1%E4%BA%A7%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B9%9D%E8%A9%95%E5%85%B1%E7%94%A2%E9%BB%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B7%A8%E6%B5%AA2%E5%9E%8B%E6%BD%9C%E5%B0%84%E5%BC%B9%E9%81%93%E5%AF%BC%E5%BC%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A6%BA%E5%9B%8A%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BB%9D%E9%A3%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%8B%89%E5%8D%9C%E6%A5%9E%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%8B%89%E8%90%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%BB%8E%E5%AE%89%E5%8F%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E9%95%BF%E6%98%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E9%95%B7%E6%98%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E6%B4%AA%E5%BF%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E5%85%8B%E5%BC%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E9%B5%AC*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E9%B9%8F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E7%91%9E%E7%8E%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E7%91%9E%E7%92%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E6%85%8E%E4%B9%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8E%86%E5%8F%B2%E7%9A%84%E4%BC%A4%E5%8F%A3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E8%8B%B1%E6%B5%A9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E6%BA%90%E6%BD%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%8E%E5%8D%93%E4%BA%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BB%96%E4%BA%A6%E6%AD%A6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%93%AE%E8%8A%B1%E7%94%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%A2%81%E5%9B%BD%E9%9B%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%A2%81%E5%9C%8B%E9%9B%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%9B%B6%E5%85%AB%E5%AE%AA%E7%AB%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BB%A4%E8%B0%B7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BB%A4%E8%AE%A1%E5%88%92*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%88%98%E5%AE%BE%E9%9B%81*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8A%89%E5%89%9B_(%E6%B0%91%E9%81%8B%E4%BA%BA%E5%A3%AB)*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%88%98%E6%85%A7%E5%8D%BF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8A%89%E6%85%A7%E5%8D%BF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%88%98%E6%B7%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%85%AD%E5%9B%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh-yue.wikipedia.org*%E5%85%AD%E5%9B%9B%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8A%89%E6%9B%89%E6%B3%A2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%88%98%E5%BB%B6%E4%B8%9C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%88%98%E4%BA%91%E5%B1%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BE%85%E5%B9%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BE%85%E5%B9%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B4%9B%E6%A1%91%E6%A3%AE%E6%A0%BC*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%B6%A0%E5%A3%A9%C2%B7%E8%8A%B1%E5%AD%A3%E8%AD%B7%E8%88%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BB%BF%E5%9D%9D%C2%B7%E8%8A%B1%E5%AD%A3%E6%8A%A4%E8%88%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%e7%bb%bf%e5%9d%9d%e5%a8%98*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%A6%AC%E4%B8%89%E5%AE%B6%E5%A5%B3%E5%AD%90%E5%8B%9E%E6%95%99%E6%89%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%A6%AC%E8%8B%B1%E4%B9%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BE%8E%E5%9B%BD%E5%9B%BD%E5%AE%B6%E6%B0%91%E4%B8%BB%E5%9F%BA%E9%87%91%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%95%8F%E6%84%9F%E4%BA%BA%E5%A3%AB*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B0%91%E9%96%93%E4%BA%BA%E6%AC%8A%E9%99%A3%E7%B7%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%95%8F%E7%8F%A0%E6%9E%97%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B0%91%E4%B8%BB%E5%A5%B3%E7%A5%9E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B0%91%E4%B8%BB%E9%BB%A8_(%E9%A6%99%E6%B8%AF)*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B0%91%E4%B8%BB%E6%AD%8C%E8%81%B2%E7%8D%BB%E4%B8%AD%E8%8F%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%8C%89%E8%8E%89%E8%8A%B1%E9%9D%A9%E5%91%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8D%97%E6%96%B9%E9%83%BD%E5%B8%82%E6%8A%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E5%86%85%E8%92%99%E5%8F%A4%E6%8A%97%E8%AE%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-hk/%E5%86%85%E8%92%99%E5%8F%A4%E6%8A%97%E8%AE%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-tw/%E5%86%85%E8%92%99%E5%8F%A4%E6%8A%97%E8%AE%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%86%85%E8%92%99%E5%8F%A4%E4%BA%BA%E6%B0%91%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%85%A7%E8%92%99%E5%8F%A4%E4%BA%BA%E6%B0%91%E9%BB%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AE%81%E7%8E%9B%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%89%9B%E5%8D%9A%E7%BD%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%AF%BA%E8%B4%9D%E5%B0%94%E5%92%8C%E5%B9%B3%E5%A5%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%8C%AA%E5%A8%81*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%9B%98%E5%8F%A4%E4%B9%90%E9%98%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BD%AD%E4%B8%BD%E5%AA%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%A0%B4%E7%BD%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B5%A6%E5%BF%97%E5%BC%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%83%E4%B8%80%E9%81%8A%E8%A1%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%A7%A6%E5%9F%8E%E7%9B%91%E7%8B%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B8%85%E6%9C%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%85%A8%E7%90%83%E8%97%8F%E4%BA%BA%E7%89%B9%E5%88%AB%E5%A4%A7%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%C8%BC%C9%D5%C6%BF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%87%83%E7%83%A7%E7%93%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%83%AD%E6%AF%94%E5%A8%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%86%B1%E6%AF%94%E5%A9%AD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%91%9E%E5%85%B8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%90%A8%E8%BF%A6%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%89%E5%B9%B4%E8%87%AA%E7%84%B6%E7%81%BE%E5%AE%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%89%E9%80%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%89%B2%E6%8B%89%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9C%A3%E9%9B%84%E7%94%98%E5%9C%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%9B%9B%E9%9B%AA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-cn/%E4%B8%96%E7%95%8C%E5%90%84%E6%94%BF%E6%9D%83%E5%8F%97%E6%89%BF%E8%AE%A4%E7%8A%B6%E5%86%B5%E5%88%97%E8%A1%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%96%E7%95%8C%E7%BB%8F%E6%B5%8E%E5%AF%BC%E6%8A%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%96%E7%95%8C%E7%BB%B4%E5%90%BE%E5%B0%94%E5%A4%A7%E4%BC%9A!--Shi Jie Wei Wu Er Qing Nian Dai Biao Da Hui*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%96%E7%95%8C%E7%BB%B4%E5%90%BE%E5%B0%94%E9%9D%92%E5%B9%B4%E4%BB%A3%E8%A1%A8%E5%A4%A7%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%96%E7%95%8C%E7%B6%AD%E5%90%BE%E7%88%BE%E4%BB%A3%E8%A1%A8%E5%A4%A7%E6%9C%83*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8D%81%E5%9B%9B%E4%B8%96%E8%BE%BE%E8%B5%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B8%88%E6%B6%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B8%AB%E6%BF%A4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%87%8A%E6%98%9F%E4%BA%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8F%B8%E5%BE%92%E5%8D%8E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8F%B8%E5%BE%92%E8%8F%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9B%9B%E4%BA%94%E8%A1%8C%E5%8B%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AE%8B%E5%BD%AC%E5%BD%AC*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AE%8B%E4%BB%BB%E7%A9%B7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AE%8B%E4%BB%BB%E7%AA%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%8B%8F%E5%AE%B6%E5%B1%AF%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AD%99%E6%96%87%E5%B9%BF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A1%94%E5%B0%94%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%8F%B0%E7%81%A3%E7%8D%A8%E7%AB%8B%E5%BB%BA%E5%9C%8B%E8%81%AF%E7%9B%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%AA%E5%AD%90%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%AA%E5%AD%90%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-cn/%E5%A4%AA%E5%AD%90%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B0%AD%E4%BD%9C%E4%BA%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%94%90%E6%9F%8F%E6%A1%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh/%E9%99%B6%E9%A9%B7%E9%A9%B9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E5%AE%89%E9%97%A8%E5%B9%BF%E5%9C%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E5%AE%89%E9%97%A8%E6%AF%8D%E4%BA%B2%E8%BF%90%E5%8A%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E5%AE%89%E9%96%80%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E5%AE%89%E9%97%A8%E6%96%87%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E5%AE%89%E9%96%80%E6%96%87%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E5%AE%89%E9%97%A8%E8%87%AA%E7%84%9A%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%A9%E8%91%AC*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-cn/Tor*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/zh-hk/Twitter*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%87%E9%87%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E5%86%9B%E6%B6%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E6%A8%82%E6%B3%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E7%AB%8B%E5%86%9B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E5%B2%90%E5%B1%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E5%8D%83%E6%BA%90*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E7%BB%B4%E6%9E%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E6%9C%89%E6%89%8D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%AD%8F%E4%BA%AC%E7%94%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B1%B6%E5%B7%9D%E5%A4%A7%E5%9C%B0%E9%9C%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E7%82%B3%E7%AB%A0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E4%B9%90%E6%B3%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E5%8A%9B%E9%9B%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BD%91%E7%BB%9C%E8%AF%84%E8%AE%BA%E5%91%98*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E7%8E%8B%E5%A7%93*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B1%AA%E6%B4%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%8E%8B%E5%85%86%E5%9B%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%94%AF%E8%89%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A8%81%E8%A7%86%E8%85%90%E8%B4%A5%E6%A1%88*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B1%B6%E5%B7%9D%E5%9C%B0%E9%9C%87*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B8%A9%E5%AE%B6%E5%AE%9D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%B8%A9%E4%BA%91%E6%9D%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E6%96%87%E5%AD%97%E7%8B%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E6%96%87%E5%AD%97%E7%8D%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%90%B4%E9%82%A6%E5%9B%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%88%91%E7%9A%84%E5%A5%8B%E6%96%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%90%BE%E5%B0%94%E5%BC%80%E5%B8%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%90%BE%E7%88%BE%E9%96%8B%E5%B8%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%97%A0%E5%9B%BD%E7%95%8C%E8%AE%B0%E8%80%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%90%B4%E5%BC%98%E8%BE%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%97%A0%E7%95%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%83%8F%E5%9D%8E%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B9%8C%E9%B2%81%E6%9C%A8%E9%BD%90%E4%B8%83%C2%B7%E4%BA%94%E6%9A%B4%E5%8A%9B%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BA%94%E6%AF%9B%E8%9B%8B%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A5%BF%E5%8D%95%E6%B0%91%E4%B8%BB%E5%A2%99*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%BF%92%E8%BF%91%E5%B9%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B9%A0%E8%BF%91%E5%B9%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A5%BF%E5%8E%A2%E8%AE%A1%E5%88%92*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A5%BF%E8%97%8F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B9%A0%E4%BB%B2%E5%8B%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%A4%8F%E7%91%AA%E5%B7%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%A6%99%E6%B8%AF%E7%8D%A8%E7%AB%8B%E9%81%8B%E5%8B%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%A6%99%E6%B8%AF%E6%B0%91%E4%B8%BB%E9%BB%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%A6%99%E6%B8%AF*%E6%B0%91%E4%B8%BB%E6%B4%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B0%8F%E6%98%AD%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B0%A2%E5%BD%A6%E9%A3%9E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%BE%9B%E7%81%8F%E5%B9%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B0%E7%96%86%E7%8B%AC%E7%AB%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B0%E7%96%86%E7%8D%A8%E7%AB%8B*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B0%E5%94%90%E4%BA%BA%E9%9B%BB%E8%A6%96%E5%8F%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%96%B0%E9%97%BB%E8%87%AA%E7%94%B1%E6%8E%A0%E5%A4%BA%E8%80%85*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%98%9F%E4%BA%91%E6%B3%95%E5%B8%88*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%86%8A%E7%84%B1*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BE%90%E6%89%8D%E5%8E%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%AE%B8%E5%AE%B6%E5%B1%AF*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%9B%AA%E5%B1%B1%E7%8D%85%E5%AD%90%E6%97%97*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A9%A2%E5%95%8F%E8%99%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%9A%B4%E5%AE%B6%E5%85%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%A5%E5%AE%B6%E5%85%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%98%8E%E6%98%8E%E5%A4%8D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%9D%A8%E4%BD%B3%E8%A2%AD%E8%AD%A6%E6%A1%88*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%A5%8A%E5%BB%BA%E5%88%A9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%9A%81%E5%8A%9B%E7%A5%9E*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E9%9B%8D%E5%92%8C%E5%AE%AB*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%B9%BD%E7%81%B5%E7%BD%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BD%99%E6%9D%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BF%9E%E4%B8%BD%E8%90%8D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%BF%9E%E6%AD%A3%E5%A3%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A2%81%E7%BA%A2%E5%86%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%A2%81%E7%B4%85%E5%86%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%97%8F%E4%BC%A0%E4%BD%9B%E6%95%99*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E6%89%8E%E4%BB%80%E4%BC%A6%E5%B8%83%E5%AF%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%A0%E5%BE%B7%E6%B1%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%A0%E9%AB%98%E4%B8%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%AB%A0%E5%98%89%E5%91%BC%E5%9B%BE%E5%85%8B%E5%9B%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%A0%E7%AB%8B%E6%98%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%A0%E5%9F%B9%E8%8E%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%B5%E6%96%87%E5%85%89*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%AB%A0%E8%A9%92%E5%92%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%AB%A0%E8%AF%92%E5%92%8C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%A0%E9%92%B0*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%BC%B5%E9%88%BA*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B5%B5%E7%B4%AB%E9%98%B3*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%B6%99%E7%B4%AB%E9%99%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%93%B2%E5%B8%83%E5%B0%8A%E4%B8%B9%E5%B7%B4%E5%91%BC%E5%9B%BE%E5%85%8B%E5%9B%BE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E7%9C%9F%E5%96%84%E5%BF%8D*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%85%B1%E4%B8%AD%E5%A4%AE%E5%AE%A3%E4%BC%A0%E9%83%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org/wiki/%E4%B8%AD%E5%9B%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E6%8C%81%E4%B8%8D%E5%90%8C%E6%94%BF%E8%A6%8B%E8%80%85%E5%90%8D%E5%96%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E5%A4%A7%E9%99%86%E5%B0%81%E9%94%81%E7%BB%B4%E5%9F%BA%E5%AA%92%E4%BD%93%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E5%A4%A7%E9%99%86%E5%B0%81%E9%94%81%E7%BB%B4%E5%9F%BA%E7%99%BE%E7%A7%91%E4%BA%8B%E4%BB%B6*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E5%A4%A7%E9%99%B8%E7%B6%B2%E8%B7%AF%E5%B0%81%E9%8E%96*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E7%94%B5%E8%A7%86%E5%AE%A1%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E6%B3%9B%E8%93%9D%E8%81%94%E7%9B%9F*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E5%85%B1%E4%BA%A7%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E5%85%B1%E7%94%A2%E9%BB*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E5%9F%BA%E7%9D%A3%E6%95%99%E5%8D%8F%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E5%AE%B6%E5%BA%AD%E6%95%99%E4%BC%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E8%81%AF%E9%82%A6%E4%B8%BB%E7%BE%A9*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E6%B0%91%E4%B8%BB%E5%85%9A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E6%B0%91%E4%B8%BB%E8%BF%90%E5%8A%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E6%B0%91%E4%B8%BB%E9%81%8B%E5%8B%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E8%8C%89%E8%8E%89%E8%8A%B1%E9%9D%A9%E5%91%BD*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD*%E5%9B%BD%E4%BA%BA%E6%9D%83*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E7%BD%91%E7%BB%9C%E8%BD%AF%E4%BB%B6%E8%BF%87%E6%BB%A4%E5%85%B3%E9%94%AE%E5%AD%97%E5%88%97%E8%A1%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9B%BD%E7%BD%91%E7%BB%9C%E5%AE%A1%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%9C%8B%E7%B6%B2%E8%B7%AF%E5%AF%A9%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9C%8B%E4%BA%BA%E6%AC%8A*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9C%8B%E5%AF%A9%E6%9F%A5%E8%BE%AD%E5%BD%99%E5%88%97%E8%A1%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E5%AE%AA%E6%B3%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E6%B0%91%E5%9C%8B%E5%9C%8B%E6%B0%91%E5%A4%A7%E6%9C%83*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E6%B0%91%E5%9C%8B%E6%B2%BB%E8%97%8F%E6%AD%B7%E5%8F%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E6%B0%91%E5%9C%8B%E7%B8%BD%E7%B5%B1%E5%BA%9C*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E7%BD%91%E7%BB%9C%E5%AE%A1%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9C%8B%E7%B6%B2%E7%B5%A1%E5%AF%A9%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9C%8B%E6%B0%91%E4%B8%BB%E9%81%8B%E5%8B%95*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8F%AF%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9C%8B%E5%AE%97%E6%95%99*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E6%96%87%E7%BB%B4%E5%9F%BA%E7%99%BE%E7%A7%91*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%A4%AE%E8%AD%A6%E8%A1%9B%E5%B1%80*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E5%A4%AE%E6%96%87%E5%8C%96%E9%9D%A9%E5%91%BD%E5%B0%8F%E7%BB%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E4%B8%AD%E8%8B%B1%E7%BA%8C%E8%A8%82%E8%97%8F%E5%8D%B0%E6%A2%9D%E7%B4%84*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%91%A8%E6%B0%B8%E5%BA%B7*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%BD%AC%E6%B3%95%E8%BD%AE*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%87%AA%E7%94%B1%E9%97%A8*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E8%87%AA%E7%94%B1%E4%BA%9A%E6%B4%B2*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikipedia.org*%E5%AE%97%E5%96%80%E5%B7%B4*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*zh.wikibooks.org*%E7%AA%81%E7%A0%B4%E7%BD%91%E7%BB%9C%E5%AE%A1%E6%9F%A5*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*gov.tw*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*174.142.105.153*")) return 'SOCKS5 127.0.0.1:7070';
	if (shExpMatch(url, "http://*69.65.19.160*")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?netflix\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pandora\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pure18\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?spotify\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?turntable\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vevo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zattoo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?0to255\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?1-apple\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?10musume\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?12bet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?12vpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?173ng\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?1984bbs\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?1984bbs\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?1pondo\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?2008xianzhang\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?36rain\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?4bluestones\\.biz")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?51\\.ca")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?6-4\\.net/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?6park\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.6v6dota\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?7capture\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?881903\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?89-64\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?9bis\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?9bis\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?a-normal-day\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aboluowang\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?acgkj\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aculo\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?addictedtocoffee\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?advanscene\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?advertfan\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aenhancers\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?af\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aiph\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ait\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aiweiweiblog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ajaxplorer\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.ajsands\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?akiba-online\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?alasbarricadas\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?notes\\.alexdong\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?alkasir\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?allinfo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?allmovie\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?alternate-tools\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?alwaysdata\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?alwaysdata\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?am730\\.com\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ameblo\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?americangreencard\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?amiblockedornot\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?amnesty\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?amnestyusa\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?anchorfree\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?andfaraway\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?anobii\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?anthonycalzadilla\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aobo\\.com\\.au")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?aolchannels\\.aol\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?video\\.aol\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?apiary\\.io")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?apigee\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?areca-backup\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?army\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?asahichinese\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?asiaharvest\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?asianwomensfilm\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?askstudent\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?askynz\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?assembla\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?astonmartinnews\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?atj\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?atlaspost\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?atnext\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?avaaz\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?avidemux\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?avoision\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?axureformac\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?backchina\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?baidu\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?baixing\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bannedbook\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?barnabu\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bayvoice\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bbcchinese\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bbsfeed\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bebo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?beijing1989\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?beijingspring\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?berlintwitterwall\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bestforchina\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bettween\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bfnn\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bfsh\\.hk/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bignews\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bill2-software\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?billywr\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bitbucket\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bjzc\\.org/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blinkx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blip\\.tv/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blockcn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blogcatalog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blogger\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.kangye\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bloglines\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blogspot\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bloodshed\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bloomberg\\.cn")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bloomberg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bloomberg\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bloomfortune\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bnrmetal\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?boardreader\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?books\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bowenpress\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dl\\.box\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?boxun\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?boxun\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?boxunblog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?br\\.st")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?brandonhutchinson\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?braumeister\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?break\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?breakingtweets\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?brightkite\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?brizzly\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bt95\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?budaedu\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bullog\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bullogger\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bugclub\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?buugaa\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?c-spanvideo\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?c-est-simple\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cactusvpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cams\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?caobian\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?caochangqing\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?catch22\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?catfightpayperview\\.xxx")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?catholic\\.org\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?catholic\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ccavtop10\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ccdtr\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdig\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdjp\\.org/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdp1998\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdp2006\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdpweb\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdpwu\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cecc\\.gov")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cellulo\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cenci\\.tk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cenews\\.eu")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?centralnation\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chandoo\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?changp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chenguangcheng\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cherrysave\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?china101\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?china21\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?china21\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinaaffairs\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinaaid\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinacomments\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinachannel\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinaeweekly\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinafreepress\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinagfw\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinagreenparty\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinainperspective\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinainperspective\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinainterimgov\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinamule\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinasocialdemocraticparty\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinasoul\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinaworker\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinayuanmin\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinesedailynews\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chinesen\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chingcheong\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?christianstudy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chrlcg-hk\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chromeadblock\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chuizi\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chrispederick\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chrispederick\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?allaboutalpha\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?civicparty\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?civilhrfront\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ck101\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?classicalguitarblog\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cmule\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cms\\.gov")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cna\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cnd\\.org/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cochina\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?comefromchina\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?compileheart\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?conoyo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?coolaler\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?coolder\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?coolloud\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?couchdbwiki\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cotweet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cpj\\.org/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?crackle\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?creaders\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?crossthewall\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?csdparty\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?csuchen\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cuihua\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cuiweiping\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?curvefish\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?culture\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cyberghostvpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cynscribe\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ifan\\.cz\\.cc")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mike\\.cz\\.cc")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nic\\.cz\\.cc")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dabr\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dabr\\.mobi")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dabr\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dadazim\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dalailama\\.ru")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dailidaili\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dalailamaworld\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dalianmeng\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?danke4china\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?daxa\\.cn/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?de-sci\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?delcamp\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?democrats\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?desc\\.se/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?deutsche-welle\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dev102\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?devio\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dfas\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?diaoyuislands\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?digitalnomadsproject\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?diigo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?furl\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?discuss\\.com\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dit-inc\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dl-laby\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dlsite\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dolc\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dollf\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dongtaiwang\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dongtaiwang\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dontmovetochina\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dotplane\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dougscripts\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?doxygen\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dpp\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?weigegebyc\\.dreamhosters\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?drgan\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dtiblog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dtic\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?duckmylife\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?duihua\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?duoweitimes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?duplicati\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dvorak\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dw-world\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dwnews\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dynawebinc\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?e-gold\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?edubridge\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?eevpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?eic-av\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?emacsblog\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?englishfromengland\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?entermap\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?epochtimes-bg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?epochtimes-romania\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?epochtimes\\.co\\.il")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?epochtimes\\.co\\.kr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?epochtimes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?epochweekly\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ernestmandel\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?erights\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?etizer\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?exblog\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.exblog\\.co\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?expatshield\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?exploader\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?eyevio\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?facebook\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^https?:\\/\\/[^\\/]+facebook\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?connect\\.facebook\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?facesofnyfw\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?faiththedog\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?falunhr\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fanglizhi\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fangong\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fbcdn\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?famunion\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fangbinxing\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fanswong\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?favorious\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?faststone\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?favstar\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fb\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fourface\\.nodesnoop\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?feedzshare\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?feelssh\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?felixcat\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?feministteacher\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fengzhenghu\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?finalion\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fireofliberty\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?flagfox\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?falsefire\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fotop\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fringenetwork\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?flecheinthepeche\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fofg\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fooooo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fourthinternational\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?foxdie\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?foxsub\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fqrouter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?franklc\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?allonlinux\\.free\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dimitrik\\.free\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?puttycm\\.free\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freealim\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freedomhouse\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freegao\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freelotto\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freeoz\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.bulbous\\.freeserve\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freessh\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?free-ssh\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freenetproject\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freewallpaper4\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freeweibo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fring\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?frommel\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fscked\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fuckcnnic\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?furinkan\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?futuremessage\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fw\\.cm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gabocorp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?galenwu\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gamer\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gamez\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gaoming\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gappp\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gardennetworks\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gartlive\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gather\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gaymap\\.cc")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gazotube\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gclooney\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?geek-art\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?geekmanuals\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?geohot\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?geometrictools\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?get-digital-help\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?getfoxyproxy\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ggssl\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?giga-web\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gimpshop\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?girlbanker\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?glennhilton\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?globalrescue\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?globalvoicesonline\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gmhz\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?godfootsteps\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?goldwave\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?goodreads\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?goodreaders\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?goofind\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?googleusercontent\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gopetition\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gotw\\.ca/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?graphis\\.ne\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?greatfirewallofchina\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?greatfirewallofchina\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?greenvpn\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gtricks\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gutteruncensored\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gvm\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gzone-anime\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?apis\\.google\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?appspot\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^https?:\\/\\/[^\\/]+appspot\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?golang\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.klip\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?encrypted\\.google\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sites\\.google\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?freegateget\\.googlepages\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gospelherald\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?graylog2\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?greatfire\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?greatroc\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gstatic\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?guishan\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?h-china\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hackthatphone\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hakkatv\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hardsextube\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hasaowall\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hdtvb\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?heartyit\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hecaitou\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hechaji\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?helloandroid\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?helloqueer\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hellotxt\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?htxt\\.it/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?helpeachpeople\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?date\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?flightcaster\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?branch\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?awardwinningfjords\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?futureme\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?getcloudapp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cl\\.ly")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?getsmartlinks\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?git-scm\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lesscss\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?list\\.ly")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?maxgif\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?overlapr\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?peerpong\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pose\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?samsoff\\.es")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sendoid\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?speckleapp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stuffimreading\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tomayko\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twt\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?views\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?heungkongdiscuss\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hidden-advent\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hidemyass\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hideipvpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hihistory\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?highrockmedia\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hk32168\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hkreporter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hkzone\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hnjhj\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?holyspiritspeaks\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?derekhsu\\.homeip\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hongzhi\\.li")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hootsuite\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hotspotshield\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hougaige\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?howtoforge\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hqcdp\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hsjp\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?htmldog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?huanghuagang\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?huaren\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hugoroy\\.eu")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hungerstrikeforaids\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?huping\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hutianyi\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hwinfo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hyperrate\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?i1\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?i2p2\\.de/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?i2runner\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iask\\.ca")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iask\\.bz")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iblogserv-f\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?icl-fi\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iconpaper\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?identi\\.ca")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?idiomconnection\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?if-not-true-then-false\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ifcss\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?antidrm\\.hpg\\.ig\\.com\\.br")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?igfw\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ignitedetroit\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ihakka\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iicns\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?illusionfactory\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ilove80\\.be")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?im\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?im88\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?imageflea\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?imagevenue\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?imagezilla\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?img\\.ly")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?imkev\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?incredibox\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?inmediahk\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?innermongolia\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?interfaceaddiction\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?internationalrivers\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?internetpopculture\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?inxian\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iphonehacks\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?iphonix\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ipicture\\.ru")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ippotv\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ipvanish\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ironicsoftware\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ironbigfools\\.compython\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ironpython\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?!--isaacmao\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?isgreat\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ismprofessional\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?israbox\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?itaboo\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?itshidden\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?gmozomg\\.izihost\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?j\\.mp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jgoodies\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jiaoyou8\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hk\\.jiepang\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tw\\.jiepang\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jinbushe\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jingpin\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jitouch\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?joachims\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jobso\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?joeedelman\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?journalofdemocracy\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?juliereyc\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?junauza\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?junefourth-20\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?juziyue\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jwmusic\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ka-wai\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kagyuoffice\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?karayou\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kcsoftwares\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kenengba\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?killwall\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kodingen\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kompozer\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?koolsolutions\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?koornk\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kurtmunger\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kzeng\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?labiennale\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?laogai\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?laptoplockdown\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?larsgeorge\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lastfm\\.es")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lazarsearlymusic\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?leecheukyan\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lenwhite\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lerosua\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?letscorp\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?liaowangxizang\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?liberal\\.org\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?api\\.linksalpha\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?apidocs\\.linksalpha\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.linksalpha\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?help\\.linksalpha\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?linux-engineer\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?linuxconfig\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?linuxreviews\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?listentoyoutube\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?liudejun\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?liujianshu\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?liuxiaotong\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?livestream\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?livingonline\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?livingstream\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?livevideo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lockdown\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lockestek\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?logiqx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?logmike\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?longtermly\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lookingglasstheatre\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lookpic\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lrfz\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lsd\\.org\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lsm\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lsmchinese\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lsmkorean\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lupm\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lvhai\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mh4u\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mad-ar\\.ch")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?martincartoons\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?makemymood\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?marines\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?martau\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?marxist\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mashable\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?matainja\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mathiew-badimon\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?matsushimakaede\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?md-t\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?meetup\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?megarotic\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?megurineluka\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?melon-peach\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?meteorshowersonline\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?metrolife\\.ca")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mgstage\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?michaelmarketl\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?minghui\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?minzhuhua\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?miroguide\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mixero\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mixx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mizzmona\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mmaaxx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mobatek\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mobileways\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mondex\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?monitorchina\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?morningsun\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?movabletype\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?moviefap\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.moztw\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mp/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mpettis\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mrtweet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mthruf\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?multiply\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?muouju\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?muselinks\\.co\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?muzi\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?muzi\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mx981\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myaudiocast\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bbs\\.mychat\\.to")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mychinamyhome\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.mycould\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myeclipseide\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myforum\\.com\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myforum\\.com\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myparagliding\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mypopescu\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?naacoalition\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?naitik\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?namsisi\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nanyang\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nanyangpost\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?navicat\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nakido\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?navy\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ncn\\.org/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?etools\\.ncol\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nekoslovakia\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?newchen\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?newscn\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?newsminer\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?newtalk\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nexton-net\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nga\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ngs2\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nighost\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?njactb\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?njuice\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nobodycanstop\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nokogiri\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nokola\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?noobbox\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?novelasia\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nownews\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?noypf\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?npa\\.go\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nrk\\.no")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nsc\\.gov\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cbs\\.ntu\\.edu\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nuexpo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nurgo-software\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nyt\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nytco\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nytimes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nzchinese\\.net\\.nz")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?october-review\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ogaoga\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?olumpo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?myopenid\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?openid\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.openinkpot\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?openleaks\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?openvpn\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?openwebster\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?demo\\.opera-mini\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?orient-doll\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?orientaldaily\\.com\\.my")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?orn\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?t\\.orzdream\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?orzistic\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?osfoora\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ourdearamy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ow\\.ly")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pagodabox\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?paint\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?coveringweb\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?paper-replika\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?eriversoft\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?panluan\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pastie\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.pathtosharepoint\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pbworks\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?developers\\.box\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wiki\\.oauth\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wiki\\.phonegap\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wiki\\.jqueryui\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pbxes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pbxes\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.pchome\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pct\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pdproxy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pekingduck\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?penchinese\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.pentalogic\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?peopo\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?perlhowto\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?photofocus\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?phuquocservices\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?img.*\\.picturedip\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pin6\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ping\\.fm/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pinoy-n\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pixelqi\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?css\\.pixnet\\.in")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pixnet\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?placemix\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?playboy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?m\\.plixi\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?po2b\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?podictionary\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pokerstars\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?popularpages\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?popyard\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pornmm\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pornrapidshare\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?powercx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.powerpointninja\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pts\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?post\\.anyu\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bralio\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?calebelston\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?designerol\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.fizzik\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?nf\\.id\\.au")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?markmilian\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?log\\.riku\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sogrady\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vatn\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?veempiire\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.vegorpedersen\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ventureswell\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?webfee\\.tk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?whereiswerner\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bill\\.zhong\\.pp\\.ru")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?power\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?abc\\.pp\\.ru")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?prayforchina\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?premeforwindows7\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?presentationzen\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?prestige-av\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?privacybox\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?privatepaste\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?privatetunnel\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?prosiben\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?proxomitron\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?proxypy\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?psblog\\.name")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pullfolio\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?pureconcepts\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?purepdf\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?purevpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?qanote\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?qienkuen\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?qoos\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?efksoft\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?qstatus\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?qtweeter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?qtrac\\.eu")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?quadedge\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.getyouram\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hiitch\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?radiovaticana\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?raidcall\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ranyunfei\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rapidshare8\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?readingtimes\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?referer\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?reflectivecode\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?renyurenquan\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?retweetrank\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rferl\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rfi\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rlwlw\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?robustnessiskey\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rocmp\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rojo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ronjoneswriter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rsf\\.org/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rsf-chinese\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?rssmeme\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?s1heng\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sacom\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?saiq\\.me/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?salvation\\.org\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sankaizok\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?say2\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?scriptspot\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?secretgarden\\.no")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?default\\.secureserver\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?seevpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?seezone\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sesawe\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sethwklein\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sevenload\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sexinsex\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shadowsocks\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shangfang\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sharecool\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sharkdolphin\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sharpdaily\\.com\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shaunthesheep\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shenzhoufilm\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shixiao\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shizhao\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?shodanhq\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?simplecd\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?magazines\\.sina\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?singtao\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cdp\\.sinica\\.edu\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sinocast\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sinoants\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?site90\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?siteks\\.uk\\.to")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sitemaps\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sis001\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sjum\\.cn/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?skimtube\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?skybet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?slavasoft\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?slheng\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?so-ga\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?so-news\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?soc\\.mil/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sockslist\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?softether\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sogclub\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sohcradio\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.somee\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sorting-algorithms\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?soup\\.io/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?slickvpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?snaptu\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?snooper\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sobees\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?softwarebychuck\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?soh\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sohfrance\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?somee\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?songjianjun\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?soundofhope\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?soupofmedia\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wlx\\.sowiki\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?space-scape\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?spencertipping\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sproutcore\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ssh91\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?starp2p\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?steel-storm\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sthoo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stonegames\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stoneip\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?storagenewsletter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stoptibetcrisis\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stoweboyd\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?streamingthe\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?strongvpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sufeng\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sugarsync\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?svwind\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sweux\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?swift-tools\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?syncback\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sysadmin1138\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?szetowah\\.org\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?t66y\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tafaward\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tagwalk\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taipeisociety\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taiwantt\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taiwandaily\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taiwannews\\.com\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tamiaode\\.tk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taolun\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?taweet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tbpic\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?teamseesmic\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?techlifeweb\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?techparaiso\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?teck\\.in/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?theampfactory\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?theappleblog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?theatrum-belli\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thebodyshop-usa\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thebcomplex\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thedieline\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thedw\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thegatesnotes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thehun\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thelifeyoucansave\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thelius\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thepiratebay\\.se")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thesartorialist\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thetibetpost\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thomasbernhard\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?throughnightsfire\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tiandixing\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tibet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tibet\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tibetanyouthcongress\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tibetonline\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tibetonline\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tibetwrites\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.tiney\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tinypaste\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tidyread\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tkcs-collins\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tkforum\\.tk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tnaflix\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tokyocn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?topshare\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?topstyle4\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?topsy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?torproject\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?torrentcrazy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?torvpn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?toutfr\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tpi\\.org\\.tw")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?transgressionism\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?travelinlocal\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?trendsmap\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?trialofccp\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tripod\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?trustedbi\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?truthcn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tt1069\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tttan\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tube8\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tubewolf\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tumutanzi\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tunnelbear\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?turningtorso\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tuxtraining\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?301works\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?365singles\\.com\\.ar")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?all-that-is-interesting\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?art-or-porn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?news\\.atebits\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tumblr\\.awflasher\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?badassjs\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?basetimesheightdividedby2\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?benjaminste\\.in")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.birdhouseapp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bobulate\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bonjourlesgeeks\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bookshelfporn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.boxcar\\.io")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.bitly\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chevronwp7\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?clientsfromhell\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?codeboxapp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cookingtothegoodlife\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cubicle17\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?photos\\.dailyme\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?davidslog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.davidziegler\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.dayoneapp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?drewolanoff\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.dribbble\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?chaos\\.e-spacy\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?eamonnbrennan\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?everyday-carry\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?eyespirit\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?life\\.fly4ever\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fredwilson\\.vc")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?fuckgfw\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?geekmade\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?generesis\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?news\\.ghostery\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?givemesomethingtoread\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.gowalla\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?heiyo\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hellonewyork\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.hotpotato\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ialmostlaugh\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.ifttt\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.instagram\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.instapaper\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?interestinglaugh\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.iphone-dev\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jayparkinsonmd\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.joeyrobert\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?kt\\.kcome\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?my\\.keso\\.cn")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.kickstarter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.kl\\.am")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.klip\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?t\\.kun\\.im")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.lightbox\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?littlebigdetails\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lovequicksilver\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?lyricsquote\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?madmenunbuttoned\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?marco\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?minimalmac\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mixedmedialabs\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?modfetish\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.mongodb\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?navigeaters\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?london\\.neighborhoodr\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.path\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?parislemon\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.pikchur\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.rockmelt\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.romanandreg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?solozorro\\.tk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.sparrowmailapp\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?stuffimreading\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.summify\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thedailywh\\.at")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?theinternetwishlist\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thisiswhyyouarefat\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.tiffanyarment\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tjholowaychuk\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tomsc\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.topify\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?thehungrydudes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tumblweed\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?status\\.twhirl\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.usa\\.gov")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?photo\\.utom\\.us")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?v-state\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wellplacedpixels\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?whydidyoubuymethat\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wordboner\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wordsandturds\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?worstthingieverate\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xmusic\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xuzhuoer\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?bd\\.zhe\\.la")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?cocoa\\.zonble\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.tv\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tv-intros\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tvunetworks\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twapperkeeper\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twaud\\.io")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twblogger\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweepml\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetbackup\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetboard\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetboner\\.biz")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetdeck\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweete\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?mtw\\.tl")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetedtimes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetmylast\\.fm")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetphoto\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetrans\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetree\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweetwally\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twftp\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twibble\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twibs\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twiffo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twimbow\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twindexx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twipple\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twip\\.me/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitcause\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitgether\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twiggit\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitiq\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitlonger\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitoaster\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitonmsn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitpic\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twit2d\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitstat\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?dotheyfolloweachother\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?firstfivefollowers\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?retweeteffect\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweeplike\\.me")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tweepguide\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?turbotwitter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitvid\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twimg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitter\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twttr\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^https?:\\/\\/[^\\/]+twitter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twittercounter\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twittergadget\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitterkr\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twittermail\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twittertim\\.es")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twitturly\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twreg\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twstar\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twimg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?twyac\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tycool\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tzangms\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?typepad\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.expofutures\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?legaltech\\.law\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.loiclemeur\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?latimesblogs\\.latimes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blog\\.palm\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?blogs\\.tampabay\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?contests\\.twilio\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?embr\\.in")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ucdc1998\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?uderzo\\.it")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?udn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ukliferadio\\.co\\.uk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ultravpn\\.fr")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?unblock\\.cn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?unholyknight\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?unknownspace\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?uocn\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?urlborg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?urlparser\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?usacn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?usfk\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?usmc\\.mil")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ustream\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?uyghurcongress\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vaayoo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?value-domain\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vapurl\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vcf-online\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vcfbuilder\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?verybs\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?videobam\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vidoemo\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?viki\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vimgolf\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vimperator\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vincnd\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vinniev\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vmixcore\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?voachineseblog\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?voacantonese\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?voachinese\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?voatibetan\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vot\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.vpncup\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vpngate\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vpnpop\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vpnpronet\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?vtunnel\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?waffle1999\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?jyzj\\.waqn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wallpapercasa\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?www\\.wan-press\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wanderinghorse\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wangafu\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wangjinbo\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wearn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?hudatoriq\\.web\\.id")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?web2project\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wengewang\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wenku\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wenyunchao\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?westca\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?westernwolves\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wepn\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wexiaobo\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wezone\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wforum\\.com/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?whatblocked\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?whyx\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikileaks\\.ch")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikileaks\\.de")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikileaks\\.eu")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikileaks\\.lu")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikileaks\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikileaks\\.pl")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?collateralmurder\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?collateralmurder\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikimapia\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?secure\\.wikimedia\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikimedia\\.org\\.mo")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wikiwiki\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?sports\\.williamhill\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?willw\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?windowsphoneme\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wiredbytes\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wiredpen\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wisevid\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?woeser\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wolfax\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?womensrightsofchina\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?woopie\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?woopie\\.tv")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?workatruna\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wordpress\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wpoforum\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wqyd\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?wujieliulan\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?x-wall\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xbookcn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xiaoma\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xiaohexie\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xing\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xinmiao\\.com\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xjp\\.cc")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xml-training-guide\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xnxx\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xpud\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?k2\\.xrea\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xtube\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xuchao\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xuchao\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?xxxx\\.com\\.au")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yahoo\\.com\\.hk")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yam\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yasukuni\\.or\\.jp")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yeelou\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yegle\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yhcw\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yidio\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yipub\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yogichen\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youxu\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yyii\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yzzk\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youjizz\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youpai\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yousendit\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youporn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youtube\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youtube-nocookie\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?youversion\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ytimg\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yunchao\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yvesgeleyn\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?yymaya\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zannel\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?tap11\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zaobao\\.com\\.sg")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zarias\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zeutch\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zhanbin\\.net")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zhenlibu\\.info")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zhongmeng\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zhreader\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zhuichaguoji\\.org")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zillionk\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zinio\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?ziplib\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zkaip\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zlib\\.net/")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zonaeuropa\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zootool\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zuo\\.la")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zuola\\.com")) return 'SOCKS5 127.0.0.1:7070';
	if (regExpMatch(url, "^[\\w\\-]+:\\/+(?!\\/)(?:[^\\/]+\\.)?zvereff\\.com")) return 'SOCKS5 127.0.0.1:7070';
	return 'DIRECT';
}
`

proxyIfInclude = [
	'google'
	'facebook'
	'twitter'
]
exports.proxyOrNot = (url) ->
	console.log "Testing proxy rule #{url} #{FindProxyForURL(url, '')}"
	!!~(FindProxyForURL(url, '').indexOf('SOCKS'))

