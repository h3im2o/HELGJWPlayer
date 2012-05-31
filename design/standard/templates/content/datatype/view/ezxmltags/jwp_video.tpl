{* 
		bloc import
		en cas de plusieurs video sur la meme page ce bloc a mettre dans 
		la page layout pour eviter plusieurs chargements
		des memes librairies
		
		if you have more than  one video in the same page 
		put this bloc in the pagelayout to avoid a multiple 
		import of the same lib files
		
*}
{* begin import bloc  *}
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src={'javascript/jwplayer/jquery.swfobject.js'|ezdesign}></script>
<script type="text/javascript" src={'javascript/jwplayer/jquery.jwplayer.js'|ezdesign} ></script>
{*  end of bloc   *}


{def $randid=rand(5)}

<div id="player-{$randid}">
<script type="text/javascript">
{literal}
jQuery(function ($) {

    function stateListener_{/literal}{$randid}{literal}(obj) {
			// this function is to use in case you need to interact with the player (get the state );
    	console.log(obj.oldstate +'=>'+ obj.newstate);
    }

    $('#player-{/literal}{$randid}{literal}').jwPlayer({
        //debug: 'console',
        swf: {/literal}{'javascript/jwplayer/player.swf'|ezdesign}{literal},
        file: '{/literal}{$video_url}{literal}',
                id:'{/literal}{$randid}{literal}',
        height: {/literal}{$height}{literal},
        width: {/literal}{$width}{literal},
       	controlbar: 'none',
        statelistener: stateListener_{/literal}{$randid}{literal}
    });


});
{/literal}
</script>
</div>